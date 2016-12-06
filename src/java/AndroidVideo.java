/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.Video;
import Database.Video_db;
import Database.Video_enc_db;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.security.spec.KeySpec;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;

/**
 *
 * @author Home
 */
public class AndroidVideo extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AndroidVideo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AndroidVideo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       // processRequest(request, response);
        
        String videoid=request.getParameter("videoid");
        String userid=request.getParameter("userid");
        String name=null;
        String path=null;
        List<Video> v;
        
        v=new Video_db().getDetails("select * from video where video_id like '"+videoid+"';");
        List<Video> video=new ArrayList(v);
        if(video.iterator().hasNext())
        {
        path=video.iterator().next().getPath();
        name=video.iterator().next().getName();
        }
        
        response.getWriter().println(path);
        
        try{
            String rootpath=getServletContext().getRealPath("")+ File.separator+"Android"+File.separator ;
        String password = "PhysicalTH";

		// reading the salt
		// user should have secure mechanism to transfer the
		// salt, iv and password to the recipient
                InputStream[] input= new Video_enc_db().getDetails(videoid);
		InputStream saltFis = input[0];
		byte[] salt = new byte[8];
		saltFis.read(salt);
		saltFis.close();
                response.getWriter().println("Salt file accepted");
		// reading the iv
		InputStream ivFis = input[1];
		byte[] iv = new byte[16];
		ivFis.read(iv);
		ivFis.close();

                response.getWriter().println("IV file accepted");
                
		SecretKeyFactory factory = SecretKeyFactory
				.getInstance("PBKDF2WithHmacSHA1");
		KeySpec keySpec = new PBEKeySpec(password.toCharArray(), salt, 64444,
				128);
		SecretKey tmp = factory.generateSecret(keySpec);
		SecretKey secret = new SecretKeySpec(tmp.getEncoded(), "AES");

		// file decryption
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, secret, new IvParameterSpec(iv));
		FileInputStream fis = new FileInputStream(path);
                
                       File dir=new File(rootpath+File.separator+userid);
        if(dir.exists())
            FileUtils.deleteDirectory(dir);
        
        
        dir.mkdir();
        //rootpath+File.separator+userid+File.separator+name
		FileOutputStream fos = new FileOutputStream(rootpath+File.separator+userid+File.separator+
                        name+path.substring(path.indexOf("."), path.lastIndexOf(".")));
                
                
                        
		byte[] in = new byte[64];
		int read;
                
		while ((read = fis.read(in)) != -1) {
			byte[] output = cipher.update(in, 0, read);
			if (output != null)
				fos.write(output);
		}

		byte[] output = cipher.doFinal();
		if (output != null)
			fos.write(output);
		fis.close();
		fos.flush();
		fos.close();
		response.getWriter().print("File Decrypted.");
        }catch(Exception e){
        e.printStackTrace();
        }
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
        processRequest(request, response);
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
