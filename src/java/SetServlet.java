/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.ExerciseSet;
import Database.ExerciseSetDb;
import Database.NewSetDb;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Home
 */
public class SetServlet extends HttpServlet {

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
            out.println("<title>Servlet SetServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SetServlet at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);

    int count=Integer.parseInt(request.getParameter("count"));
    String setid=new String();
    ExerciseSet eset=new ExerciseSet();
    if(request.getParameter("existset").equals("Empty"))
    {
        NewSetDb db=new NewSetDb();
        eset.setSetId(String.valueOf(db.request(request.getParameter("newset"))));
           
    }
    else{
        eset.setSetId(request.getParameter("existset"));
    
    }
    
    setid=eset.getSetId();
    List<ExerciseSet> es=new ArrayList();
    int sub=0;
    for(int i=1;i<=count;i++)
    {
       if(!request.getParameter("video"+i).equals("Empty"))
       {eset=new ExerciseSet();
        eset.setSetId(setid);
    eset.setVideoId(request.getParameter("video"+i));
    eset.setPrio(request.getParameter("priority"+i));
    response.getWriter().write(eset.getSetId()+" "+eset.getVideoId()+" "+eset.getPrio()+"\n");
    es.add(eset);
    }
       else
           sub++;
           }
    ExerciseSetDb db=new ExerciseSetDb();
    if(db.request(es)==count-sub);
    response.getWriter().write("Db update Successful!!!");
    
    
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
