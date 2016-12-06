/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.Video;
import Database.Video_db;
import Database.Video_enc;
import Database.Video_enc_db;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.KeySpec;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Home
 */
@MultipartConfig(
fileSizeThreshold= 1024 * 1024 * 10,
        maxFileSize=1024 *1024 *50,
        maxRequestSize=1024 *1024 *100
)
public class Video_upload_Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Video_upload_Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Video_upload_Servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
       // response.getWriter().print("Trying..");
        
        Video_enc ve = new Video_enc();
        String UPLOAD_DIRECTORY="c:/Gym";
        String des=new String();
        String type=new String();
        File file;
        String exceptions = null;
        String vname=new String();
        
        String filename=new String();
        if(ServletFileUpload.isMultipartContent(request))
        {
            try {
                List<FileItem> item=new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                response.getWriter().print("Inside if");
                //ListIterator<FileItem> li=item.listIterator();
               // FileItem f=li.next();
                //while(f!=null)
                response.getWriter().print(item.iterator().hasNext());
                for(FileItem f: item)
                {
                    response.getWriter().print("inside for");
                
                    if(f.isFormField())
                    {
                    if(f.getFieldName().equals("des"))
                        des=f.getString();
                    if(f.getFieldName().equals("vname"))
                        vname=f.getString();
                    if(f.getFieldName().equals("type"))
                    { type=f.getString();
                    UPLOAD_DIRECTORY=UPLOAD_DIRECTORY+"/"+type;}
                    }
                    if(f.getFieldName().length()>10) 
                    if(f.getFieldName().substring(0, 10).equals("exceptions"))
                    if(!f.getString().equals("Empty"))
                        if(exceptions==null)
                        exceptions=f.getString();
                        else
                            exceptions=exceptions+","+f.getString();
                        
                        
                file=new File(UPLOAD_DIRECTORY);
                if(!file.exists())
                     file.mkdirs();
                
                if(!f.isFormField())
                {
                    filename=f.getName();
                    f.write(new File(UPLOAD_DIRECTORY+File.separator+filename));
                    
                }
                //f=li.next();
                response.getWriter().print("Uploaded Successful!!");
                }
            } catch (FileUploadException ex) {
                
            ex.printStackTrace();
            return;//TO-DO redirect
            } catch (Exception ex) {
                ex.printStackTrace();
                return;//TO-DO redirect
            }
        }else
        {
        response.getWriter().print("Some Error Occured...");
        }
        
        
        
           //Db uploads for video and set video_id
        Video v=new Video();
        
        v.setDes(des);
        v.setName(vname);
        v.setExceptions(exceptions);
        v.setPath(UPLOAD_DIRECTORY+"/"+filename+".des");
        
        Video_db db=new Video_db();
        
        ve.setVideo_id(db.request(v));
        if(ve.getVideo_id()!=0)
        {
        response.getWriter().write("video db updated"+ve.getVideo_id());
        }
        
        //File encryption
        
        
        FileInputStream input=new FileInputStream(UPLOAD_DIRECTORY+File.separator+filename);
        
        FileOutputStream output=new FileOutputStream(UPLOAD_DIRECTORY+File.separator+filename+".des");
       
        String password="PhysicalTH";
        byte[] salt=new byte[8];
        
        SecureRandom random=new SecureRandom();
        random.nextBytes(salt);
        
      
        FileOutputStream saltout=new FileOutputStream(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"salt.enc");
        saltout.write(salt);
        FileInputStream saltin=new FileInputStream(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"salt.enc");
        ve.setSalt(saltin);
        ve.setSaltlen((int)new File(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"salt.enc").length());
        saltout.close();
        
        
        try {
            
        SecretKeyFactory factory=SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
            
        
        
        KeySpec specification=new PBEKeySpec(password.toCharArray(),salt,64444,128);
        
        SecretKey generator=factory.generateSecret(specification);
        SecretKey encoder=new SecretKeySpec(generator.getEncoded(),"AES");
        
        Cipher cipher=Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(Cipher.ENCRYPT_MODE, encoder);
        
        AlgorithmParameters ivparams=cipher.getParameters();
        
         
        FileOutputStream ivout=new FileOutputStream(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"iv.enc");
        byte[] iv=ivparams.getParameterSpec(IvParameterSpec.class).getIV();
        ivout.write(iv);
        FileInputStream ivin=new FileInputStream(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"iv.enc");
        ve.setIv(ivin);
        ve.setIvlen((int)new File(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"iv.enc").length());
        ivout.close();
        
        byte[] read=new byte[64];
        int nofbyte;
        while ( (nofbyte=input.read(read)) != -1 )
        {
            byte []write=cipher.update(read, 0, nofbyte);
            if(write!=null)
                output.write(write);
            
        }
        
        byte[] write=cipher.doFinal();
           if(write!=null)
               output.write(write);

           
           input.close();
           output.close();
           
           response.getWriter().write("\n Encrypted Successfully!!!");
           
                
       Video_enc_db vedb=new Video_enc_db();
       if(vedb.request(ve)==1)
           response.getWriter().write("\n\n DB update successful !!!!!");
       
         
          saltin.close();
          ivin.close();
           
           file=new File(UPLOAD_DIRECTORY+File.separator+filename);
           if(file.delete())
           {
           file=new File(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"iv.enc");
                 if(file.delete())
                 {
                     file=new File(UPLOAD_DIRECTORY+File.separator+ve.getVideo_id()+"salt.enc");
                     if(file.delete())
                         response.getWriter().write("\n Original files deleted successfully!!!");
                 }
           }
           

           
    } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Video_upload_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchPaddingException ex) {
            Logger.getLogger(Video_upload_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvalidKeySpecException ex) {
            Logger.getLogger(Video_upload_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvalidKeyException ex) {
            Logger.getLogger(Video_upload_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvalidParameterSpecException ex) {
            Logger.getLogger(Video_upload_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalBlockSizeException ex) {
            Logger.getLogger(Video_upload_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (BadPaddingException ex) {
            Logger.getLogger(Video_upload_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
       
    }
        /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
