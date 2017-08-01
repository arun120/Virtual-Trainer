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
 <%
            if(session.getAttribute("username")==null)
            out.write("<script>window.location='index.jsp';</script>");
            else{
            %>
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
            Health_1 h1;
            Health_2 h2;
            
            if(request.getAttribute("personal")!=null){
            p=(Personal)request.getAttribute("personal");
            h1=(Health_1) request.getAttribute("health1");
            h2=(Health_2) request.getAttribute("health2");
            
           // request.getAttribute("health1");
           //   out.print(h1.getBpain());
            
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
                                    <div class="col-md-6 b-r"><strong><%=p.getName() %></strong>
                                        <p></p>
                                    </div>
                                    <div class="col-md-6"><strong> <%=p.getFather() %></strong>
                                        <p></p>
                                    </div>
                                </div>
                                <!-- /.row -->
                                <hr>
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <div class="col-md-6 b-r"><strong><%=p.getEmail() %></strong>
                                        <p></p>
                                    </div>
                                    <div class="col-md-6"><strong><%=p.getContact() %></strong>
                                        <p></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row text-center m-t-10">
                                    <div class="col-md-6 b-r"><strong><%=p.getAge() %></strong>
                                        <p></p>
                                    </div>
                                    <div class="col-md-6"><strong><%=p.getOcc() %></strong>
                                        <p></p>
                                    </div>
                                </div>
                                <!-- /.row -->
                                <hr>
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <div class="col-md-12"><strong><%=p.getAddress() %></strong>
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
                                        <div class="col-md-3 col-xs-6 b-r"> <strong></strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r"> <strong></strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r"> <strong> </strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                        <div class="col-md-3 col-xs-6"> <strong></strong>
                                            <br>
                                            <p class="text-muted"></p>
                                        </div>
                                
                                    </div>
                            
                                    <hr>
                                    <p class="m-t-30">
                            
                           <div class="row">
        <div class="col-sm-12">
          <div class="white-box">
            <h3 class="box-title m-b-0">Health Issues</h3>
            <div class="table-responsive">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>Name</th>
                    
                  </tr>
                </thead>
                <tbody>
                    <%
                    if(h1.getBpain().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Back Pain</td>
                     
                  
                  </tr>
                  <%
                  }
                  %>
                  <%
                    if(h1.getBreath().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Breathing</td>
                 </tr>
                  <%
                  }
                  %>
                  <%
                    if(h1.getHbp().equals("y"))
                    {
                    %>
                  <tr>
                    <td>High Blood Pressure</td>
                 </tr>
                  <%
                  }
                  %>
                     <%
                    if(h1.getHeart().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Heart Problems</td>
                 </tr>
                  <%
                  }
                  %>
                  <%
                    if(h1.getJpain().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Joint Pain</td>
                 </tr>
                  <%
                  }
                  %>
                  <%
                    if(h1.getLbp().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Low Blood Pressure</td>
                 </tr>
                  <%
                  }
                  %>
                  <%
                    if(h1.getSurgery().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Had a Surgery</td>
                 </tr>
                  <%
                  }
                  %>
                  <%
                    if(h2.getAllergies().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Allergies</td>
                 </tr>
                  <%
                  }
                  %>
                <%
                    if(h2.getAsthma().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Asthma</td>
                 </tr>
                  <%
                  }
                  %>
                  <%
                    if(h2.getBone_brk().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Broken Bone</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getCheast().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Chest Pain</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getChildbirth().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Recent Child Birth</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getDiabetes().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Diabetes</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getEpilepsy().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Epilepsy</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getFainting().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Fainting</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getHeart_att().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Heart Attack</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getHeart_dis().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Heart Disorder</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getHeart_murmur().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Heart Murmur</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getOedema().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Oedema</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getPalpitations().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Palpitations</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getPneumonia().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Pneumonia</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getSeizure().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Seizure</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getShort_breath().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Short Breath</td>
                 </tr>
                  <%
                  }
                  %>
                   <%
                    if(h2.getTachycardia().equals("y"))
                    {
                    %>
                  <tr>
                    <td>Tachycardia</td>
                 </tr>
                  <%
                  }
                  %>
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
<%
}
%>