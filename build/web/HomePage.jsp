<%-- 
    Document   : HomePage
    Created on : 28 Jan, 2016, 5:15:19 PM
    Author     : Home
--%>

<%@page import="Database.Payment"%>
<%@page import="Database.Payment_db"%>
<%@page import="java.util.Date"%>
<%@page import="Database.SetNamesDb"%>
<%@page import="Database.SetList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
      <style rel="stylesheet">
          html{
          }
      </style>
      
      <script lang="text/javascript" src="js/submenu.js"></script>
       
      <script>
      
      $(document).ready(function(){
          $("#setid").on('change keyup',function(){
              
             var data=$(this).val();
             //console.log(data);
             
             $.get('Exercises',{
                 setid: data
             },function(response){
               var output="<br>";
                $.each(response,function(index,value){
                    
                    output+=value.name+"<br>";
                });
                
               
                console.log(output);
                $("#exercise").html(output);
                
                 
                 
             });
          });
          
      });
      
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
                                <a  href="HomePage.jsp"><li class="menu active" ><p>HOME</p></li></a>
                                <a href=""><li  id="showMenu" class="menu customer"><p>CUSTOMER</p></li></a>
                                <a href="video_upload.jsp" ><li class="menu"><p id="">ADD EXERCISE</p></li></a>
                                <a href=""><li id="showMenu1" class="menu routine"><p >ROUTINE</p></li></a>
                                <a href="payment.jsp"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                         <div style="position: relative;top: -125px;">
           
                                            <section style="height: 100%;">
                                                
                                                   <h1>Hello World!</h1>
        <%
   String username=session.getAttribute("username").toString();
   out.write(username);
       %>
       
       <style>
           .boxdiv{
               width:500px; 
               height: 200px;
               background-color: white;
               position: relative;
               display: flex;
               margin: 10px;
               border-radius: 5px;
               -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.25);
              
           }
   
       </style>
       <div class="boxdiv">
           
           <form id="msform">
               <br>
               <select id="setid">
                   <option value="#">Select</option>
                   <%
                   List<SetList> list=new ArrayList<>();
                   list=new SetNamesDb().request();
                   for(SetList s:list){
                   %>
                   <option value="<%= s.getSetid() %>"><%= s.getName() %></option>
                   <%
                   }
                   %>
               </select>
               
           </form>
       
               <div id="exercise"></div>
       
       </div>
               
               <div class="boxdiv">div2
               
               <%
                   String today=(new Date().getYear()+1900)+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate();
                   //out.write(today);
                   for(Payment p:Payment_db.getLapsed(today)){
               %>
               <%=p.getName()+" "+p.getUsername()+" "+p.getEnd()%><br>
               <%
                   }
                %>
               </div>
               
               <div class="boxdiv">div3</div>
               
                                            </section>
                                            
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