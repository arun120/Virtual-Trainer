<%-- 
    Document   : Cust_view
    Created on : Feb 13, 2016, 9:42:43 AM
    Author     : Lenovo
--%>

<%@page import="Database.Health_2"%>
<%@page import="Database.Health_1"%>
<%@page import="Database.Personal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
       
    <form method="get" action="Cust_view_Servlet" >
        <input type="text" name="username" value="User_Id">
        <input type="submit" value="Submit">
    </form>
     
        <%
            Personal p=new Personal();
            Health_1 h1=new Health_1();
            Health_2 h2=new Health_2();
            
            p=(Personal)request.getAttribute("personal");
            h1=(Health_1) request.getAttribute("health1");
            h2=(Health_2) request.getAttribute("health2");
            
            request.getAttribute("health1");
              out.print(p.getAge());

            %>
            
    </body>
    
</html>
