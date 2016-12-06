<%-- 
    Document   : change_pwd
    Created on : Jan 30, 2016, 11:21:39 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form method="post" action="passwd_change_Servlet">
            Current Password:<input type="text" name="c_pass">
            <br>
            new Pass:<input type="text" name="newpass">
            <br>
            retype:<input type="text" name="retype">
            <br>
            <input type="submit" value="Submit">
        </form>
        
        <%
            String result=new String();
            Integer abc=new Integer(5);
            if(request.getSession().getAttribute("pass_change")!=null)
            {result=request.getSession().getAttribute("pass_change").toString();}
            out.write(result);
            
            %>
        
    </body>
</html>
