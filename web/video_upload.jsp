<%-- 
    Document   : video_uplooad
    Created on : 14 Mar, 2016, 8:58:12 PM
    Author     : Home
--%>
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
                   <link rel="stylesheet" href="css/form.css">
         
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
         
        <%
        String[] exceptions=new String[]{"heart/stoke", "high_bp", "low_bp", "breath", "b_pain", "j_pain", "surgery", "per_medicine", "other_med", "diabetes", "heart_dis", "cheast_pain","short_breath", "bone_brk", "childbirth", "allergies", "heart_murmur", "pneumonia", "epilepsy", "tachycardia", "oedema", "heart_att", "rec_surgery", "palpitations", "asthma", "seizure", "fainting"};
        %>
         <script type="text/javascript" src="jQuery/jquery-2.2.2.js"></script>
        <script type="text/javascript" lang="javascript">
            $(document).ready(function(){
                 var counter=0;
                $(document).on("change","#exceptions",function(e){
                    
                    var value=$(this).data("newsel");
                    if(value === "yup")
                    {
                        return;            
                    }
                   
         $(this).data("newsel","yup");
        counter++;
        
    var newTextBoxDiv = $(document.createElement('div'));
	     
                
	newTextBoxDiv.after().html('<select style=" width:50%;height:50%;margin-left:125px;" name="exceptions'+counter+'" id="exceptions">'+
                '<option value="Empty" >Select</option>'+
                '<% for(String val:exceptions) { %>'+
           ' <option value="<%=val%>"><%out.write(val);%></option>'+
            '<%}%>'+
            '</select>');
	newTextBoxDiv.appendTo("#addexceptions");      
                });
                    
                    
        
        
        $("form").submit(function(){
             $("#addexceptions").after('<input type="hidden" name="count" value="'+counter+'">');
             
        });

            });
         </script>
         
         <link rel="stylesheet" type="text/css" href="css/style_1.css" />
        <link rel="stylesheet" type="text/css" href="css/animate.css" />
        <link rel="stylesheet" type="text/css" href="css/formStyle.css" />
        
        </head>
	<body >
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
                                <a  href="HomePage.jsp"><li class="menu " ><p>HOME</p></li></a>
                                <a href=""><li  id="showMenu" class="menu customer"><p>CUSTOMER</p></li></a>
                                <a href="video_upload.jsp" ><li class="menu active"><p id="">ADD EXERCISE</p></li></a>
                                <a href=""><li id="showMenu1" class="menu routine"><p >ROUTINE</p></li></a>
                                
                                <a href="payment.jsp"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                        <div style="position: relative;top: -175px;">
           
                                            <section>
                                                
        <%
   String abc=session.getAttribute("username").toString();
   
       %>
       <br><br><br><br><br><br><br><br><br>
       <form class="form-signin" method="post" action="Video_upload_Servlet" enctype="multipart/form-data">       
     <center><h2 class="form-signin-heading">VIDEO UPLOAD</h2></center>
        <br>
        <label>NAME :</label><input style="width:50%; margin-top:-40px;margin-left:75px;" type="text" class="form-control" name="vname" placeholder="" required="" autofocus="" />
        <br>
         <div class="control-group">
   
    <div  class="select">
       <div id="addexceptions">
            <br>
         <label>EXCEPTION:</label>   <select  style=" width:50%;height:50%;margin-left:30px;"name="exceptions1" id="exceptions">
                <option value="Empty" >Select</option>
                <% 
            for(String val:exceptions)
            {
                
                
            %>
            <option value="<%=val%>"><%out.write(val);%></option>
            
            <%
            }
            %>
            
            </select>
           
            
            
            </div>
        
        <br>
      <div class="select__arrow"></div>
    </div>
             <br>
      
    <div class="select">
        

            <label>SELECT VIDEO
   </label>
           <select name="type" style="margin-left:20px;width:48%;">
               <option value="shoulder">Select</option>
            <option value="shoulder">Shoulder</option>
             <option value="chest">Chest</option>
              <option value="triceps">Triceps</option>
               <option value="back">Back</option>
                <option value="forearm">Forearm</option>
                 <option value="leg">Leg</option>
                  <option value="abdominal">Abdominal</option>
                   <option value="butt">Butt</option>
                    <option value="others">Others</option>
        </select>
      <div class="select__arrow"></div>
    </div>
   
</div>
               
     <br>
        <br>
        <label>CHOOSE FILE</label>
      <input type="file" name="file" style="margin-top:0px; margin-left:120px;">
        <br>
             <br>
                <label> Description:</label><textarea style="height:100px;"  class="form-control"rows="2" cols="35" name="des" value="Description"></textarea>

            <br><br>
   <center>   <button class="btn btn-lg btn-primary btn-block" type="submit" value="upload">SUBMIT</button>   </center>
    </form>
       
            
            
            
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
<%
}
%>