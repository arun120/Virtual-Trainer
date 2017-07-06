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
        
          <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!-- csstransforms3d-shiv-cssclasses-prefixed-teststyles-testprop-testallprops-prefixes-domprefixes-load --> 
		<script src="js/modernizr.custom.25376.js"></script>
                <script src="jQuery/jquery-2.2.2.js"></script>
                 <link rel="stylesheet" href="css/menu.css">
      <style rel="stylesheet">
          html{
          }
      </style>
      
      <script lang="text/javascript" src="js/submenu.js">
       
          
      </script>
          <link rel="stylesheet" type="text/css" href="css/style_1.css" />
        <link rel="stylesheet" type="text/css" href="css/formStyle.css" />
    </head>
    <body>
       <div id="perspective" class="perspective effect-laydown" style="position: relative;top: -10px;" >
			<div class="container" >
				<div class="wrapper" ><!-- wrapper needed for scroll -->
					<!-- Top Navigation -->
					
					<div class="main clearfix"  >
						<div class="column" >

							
						</div>
						<div class="column">
							<nav class="codrops-demos">
                                  <ul class="menu" >
                                      <div style="height: 15px;"></div>
                                <a  href="HomePage.jsp"><li class="menu " ><p>HOME</p></li></a>
                                <a href=""><li  id="showMenu" class="menu customer"><p>CUSTOMER</p></li></a>
                                <a href="video_upload.jsp" ><li class="menu "><p id="">ADD EXERCISE</p></li></a>
                                <a href=""><li id="showMenu1" class="menu routine"><p >ROUTINE</p></li></a>
                                
                                <a href="asda"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                         <div style="position: relative;top: -175px;">
        <div class="row">
<div class="col-sm-12">
<h1>Change Password</h1>
</div>
</div>
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
<form method="post" id="passwordForm" action="passwd_change_Servlet">
    <input type="password" class="input-lg form-control" name="c_pass" id="pass" placeholder="Current Password" autocomplete="off">
    <br/>
    
<input type="password" class="input-lg form-control" name="newpass" id="pass" placeholder="New Password" autocomplete="off">
    <br/>
<input type="password" class="input-lg form-control" name="retype" id="passw" placeholder="Repeat Password" autocomplete="off">
    <br>
<div class="row">

    
</div
    <br>
<input type="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" data-loading-text="Changing Password..." value="Change Password">
</form>
</div><!--/col-sm-6-->
</div><!--/row-->
        
                                         </div>
        <%
            String result=new String();
            Integer abc=new Integer(5);
            if(request.getSession().getAttribute("pass_change")!=null)
            {result=request.getSession().getAttribute("pass_change").toString();}
            out.write(result);
            
            %>
        				</div><!-- wrapper -->
		</div><!-- /container -->

			<nav class="outer-nav top horizontal" id="submenu">
				
			</nav>
                
                
                
		</div><!-- /perspective -->
		<script src="js/classie.js"></script>
		<script src="js/menu.js"></script>

             
     
   
<div id="footer">
</div>
    </body>
</html>
