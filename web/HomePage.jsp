<%-- 
    Document   : HomePage
    Created on : 28 Jan, 2016, 5:15:19 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Home</title>
		<meta name="description" content="Perspective Page View Navigation: Transforms the page in 3D to reveal a menu" />
		<meta name="keywords" content="3d page, menu, navigation, mobile, perspective, css transform, web development, web design" />
		<meta name="author" content="Codrops" />
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
       
        </head>
	<body >
		<div id="perspective" class="perspective effect-laydown" >
			<div class="container" >
				<div class="wrapper" ><!-- wrapper needed for scroll -->
					<!-- Top Navigation -->
					
					<div class="main clearfix"  >
						<div class="column" >

							
						</div>
						<div class="column">
							<nav class="codrops-demos">
                                 <ul class="menu" >
                                <li class="menu"><a class="active" href=""><p>HOME</p></a></li>
                                <li  id="showMenu" class="menu customer"><a href=""><p>CUSTOMER</p></a></li>
                                <li class="menu"><a href="" ><p id="">ADD EXERCISE</p></a></li>
                                <li id="showMenu1" class="menu routine"><a href=""><p >ROUTINE</p></a></li>
                                <li  class="menu"><a href=""><p >PAYMENT</p></a></li>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                        <div style="margin-top: -225px;">
           
                                            <section>
                                                
                                                   <h1>Hello World!</h1>
        <%
   String abc=session.getAttribute("username").toString();
   out.write(abc);
       %>
                                            </section>
                                            
            </div>
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