/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.Chc_training;
import Database.Createuser;
import Database.Personal;
import Database.Cust_reg_db;
import Database.Health_1;
import Database.Health_2;
import Database.Payment;
import Database.Payment_db;
import Database.Time_slot;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class cust_reg extends HttpServlet {

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
        processRequest(request, response);
        
        Personal user=new Personal();
        user.setUsername(request.getParameter("userid"));
        String pass=request.getParameter("pass");
        user.setAge(request.getParameter("age"));
        user.setGender(request.getParameter("gender"));
        user.setContact(request.getParameter("contact"));
        user.setEmail(request.getParameter("email"));
        user.setFather(request.getParameter("father"));
        user.setName(request.getParameter("name"));
        user.setOcc(request.getParameter("occupation"));
        user.setAddress(request.getParameter("address"));
        
        Createuser cu=new Createuser();
        if(cu.create(user.getUsername(), pass)==1)
        {
        //success
        }
        
        
        Cust_reg_db db=new Cust_reg_db();
        
        
        Health_1 h1=new Health_1();
       // h1.setUsername(request.getParameter("userform1"));
        h1.setBpain(request.getParameter("backpain"));
        h1.setBreath(request.getParameter("breath"));
        h1.setExercise(request.getParameter("exercise"));
        h1.setHbp(request.getParameter("hbp"));
        h1.setHeart(request.getParameter("heart"));
        h1.setJpain(request.getParameter("joint"));
        h1.setLbp(request.getParameter("lbp"));
        h1.setOther_med(request.getParameter("condition"));
        h1.setPre_medicine(request.getParameter("medication"));
        h1.setSurgery(request.getParameter("surgery"));
        
        
        Health_2 h2=new Health_2();
        h2.setAllergies(request.getParameter("allergies"));
        h2.setAsthma(request.getParameter("asthma"));
        h2.setBone_brk(request.getParameter("bone"));
        h2.setCheast(request.getParameter("chest"));
        h2.setChildbirth(request.getParameter("child"));
        h2.setDiabetes(request.getParameter("diabetes"));
        h2.setEpilepsy(request.getParameter("epilepsy"));
        h2.setFainting(request.getParameter("fainting"));
        h2.setHeart_att(request.getParameter("heart"));
        h2.setHeart_dis(request.getParameter("heart"));
        h2.setHeart_murmur(request.getParameter("murmur"));
        h2.setOedema(request.getParameter("oedema"));
        h2.setPalpitations(request.getParameter("palpitations"));
        h2.setPneumonia(request.getParameter("pneumonia"));
        h2.setRec_surgery(request.getParameter("surgery"));
        h2.setSeizure(request.getParameter("seizures"));
        h2.setShort_breath(request.getParameter("short"));
        h2.setTachycardia(request.getParameter("tachycardia"));
 
        
        
        
               
               Payment p=new Payment();
               p.setUsername(request.getParameter("userid"));
               p.setDiscount(request.getParameter("discount"));
               p.setPay(request.getParameter("pay"));
               p.setUsage(request.getParameter("use"));
               p.setStart(request.getParameter("start"));
               p.setEnd(request.getParameter("end"));
               
               Payment_db pdb=new Payment_db();
               if(pdb.request(p)==1)
               {
               //success
               }
               response.getWriter().println(p.getStart());
               
               Chc_training ct=new Chc_training();
               ct.setUsername(request.getParameter("userid"));
               ct.setFit(request.getParameter("choice1"));
               ct.setBdy_bld(request.getParameter("choice2"));
               ct.setWeg_red(request.getParameter("choice3"));
               
               Time_slot t=new Time_slot();
               t.setUsername(request.getParameter("userid"));
               t.setMrng(request.getParameter("time1"));
               t.setEve(request.getParameter("time2"));
               t.setDay(request.getParameter("time3"));
               
                      if(db.register(user,h1,h2,t,ct)==1)
        {
            response.getWriter().print(user.getContact());
            
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
