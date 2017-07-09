<%-- 
    Document   : Cust_view
    Created on : Feb 13, 2016, 9:42:43 AM
    Author     : Lenovo
--%>
<%@page import="Database.Health_2"%>
<%@page import="Database.Health_1"%>
<%@page import="Database.Personal"%>
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

		<link rel="shortcut icon" href="../favicon.ico">
                 <link rel="stylesheet" href="css/form.css">
                
                   
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!-- csstransforms3d-shiv-cssclasses-prefixed-teststyles-testprop-testallprops-prefixes-domprefixes-load --> 
		<script src="js/modernizr.custom.25376.js"></script>
                <script src="jQuery/jquery-2.2.2.js"></script>
                
        
        
      <link rel="stylesheet" href="css/menu.css">
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
      <link rel="stylesheet" type="text/css" href="css/style_1.css" />
        <link rel="stylesheet" type="text/css" href="css/formStyle.css" />
      
      <script lang="text/javascript" src="js/submenu.js">
       
          
      </script>
       
        </head>
	<body >
            <div id="perspective" class="perspective effect-laydown" style="position: relative;top: -25px;height: 250%;">
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
                                <a href=""><li  id="showMenu" class="menu customer active"><p>CUSTOMER</p></li></a>
                                <a href="video_upload.jsp" ><li class="menu"><p id="">ADD EXERCISE</p></li></a>
                                <a href=""><li id="showMenu1" class="menu routine"><p >ROUTINE</p></li></a>
                                <a href="payment.jsp"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                         <div style="position: relative;top: -175px;">
           
                                            <section style="height: 100%;">
                                                  <form id="msform" method="get" action="Cust_view_Servlet" >
                                                      <fieldset>
        <input type="text" name="username" value="User_Id">
        <input type="submit" value="Submit">
   
            </fieldset>
        </form>
     
        <%
           
            Personal p=new Personal();
            Health_1 h1=new Health_1();
            Health_2 h2=new Health_2();
            
            if(request.getAttribute("personal")!=null){
            p=(Personal)request.getAttribute("personal");
            h1=(Health_1) request.getAttribute("health1");
            h2=(Health_2) request.getAttribute("health2");
            
            request.getAttribute("health1");
             // out.print(p.getAge());
            
            %>
            <div id="page-wrapper" style="margin-left: -50px;">
               <div class="container-fluid" style="align-self: center;">
                <div class="row bg-title" style="background:rgba(255, 255, 255, 0);">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                       
                    </div>
                </div>
                <!-- /.row -->
                <!-- .row -->
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <div class="white-box">
                            <div class="user-bg"> <img style="margin: 30px;margin-left: 75px;padding: 20px;" alt="user" src="css/download.jpg"> </div>
                            <div class="user-btm-box">
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <div class="col-md-6 b-r"><strong>Name</strong>
                                        <p></p>
                                    </div>
                                    <div class="col-md-6"><strong> Father NAme</strong>
                                        <p></p>
                                    </div>
                                </div>
                                <!-- /.row -->
                                <hr>
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <div class="col-md-6 b-r"><strong>Email ID</strong>
                                        <p></p>
                                    </div>
                                    <div class="col-md-6"><strong>Phone</strong>
                                        <p></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row text-center m-t-10">
                                    <div class="col-md-6 b-r"><strong>Age</strong>
                                        <p></p>
                                    </div>
                                    <div class="col-md-6"><strong>Occupatation</strong>
                                        <p></p>
                                    </div>
                                </div>
                                <!-- /.row -->
                                <hr>
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <div class="col-md-12"><strong>Address</strong>
                                        <p></p>
                                    </div>
                                </div>
                                <hr>
                                <!-- /.row -->
                               
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <div class="row">
                                        <div class="col-md-3 col-xs-6 b-r"> <strong>Membership</strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r"> <strong>Extras Activity</strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r"> <strong> choice of Training</strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                        <div class="col-md-3 col-xs-6"> <strong>Date of joining</strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                
                                    </div>
                            
                                    <hr>
                                    <p class="m-t-30">
                            
                            <div class="row">
        <div class="col-sm-12">
          <div class="white-box">
            <h3 class="box-title m-b-0">Health Table</h3>
            <div class="table-responsive">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>check</th>
                    <th class="text-nowrap">Status</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Diabites</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                  <tr>
                    <td>Allergies</td>
                     <td><input type="checkbox" name=""></td>
                <td><div class="label label-table label-success">checked</div></td>
                   
                  </tr>
                  <tr>
                    <td>Asthma</td>
                    <td><input type="checkbox" name=""></td>
        <td><div class="label label-table label-success">checked</div></td>
                   
                  </tr>
                    <tr>
                    <td>Diabites</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                    <tr>
                    <td>High Blood Pressure</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                    <tr>
                    <td>Low Blood Pressure</td>
                     <td><input type="checkbox" name=""></td>
                        <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                    <tr>
                    <td>Back Bone pain</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                    <tr>
                    <td>Diabites</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                  
                    <tr>
                    <td>Recent Child Birth</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                    <tr>
                    <td>Heart Disease</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                    <tr>
                    <td>Taking Medicine</td>
                     <td><input type="checkbox" name=""></td>
                    <td><div class="label label-table label-success">checked</div></td>
                  
                  </tr>
                 
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>





                            
                 
                    </div>
                </div>
                <!-- /.row -->

            <!-- /.container-fluid -->
           
        </div>
            </div>
           </div>
        <!-- /#page-wrapper -->

            <%
            }
            %>                                </section>
                                            
            </div>
				</div><!-- wrapper -->
		</div><!-- /container -->

			<nav class="outer-nav top horizontal" id="submenu">
				
			</nav>
                
                
                
		</div><!-- /perspective -->
		<script src="js/classie.js"></script>
		<script src="js/menu.js"></script>

             
     
 
	</body>
</html>