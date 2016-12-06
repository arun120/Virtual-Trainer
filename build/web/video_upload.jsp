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
	     
                
	newTextBoxDiv.after().html('<select name="exceptions'+counter+'" id="exceptions">'+
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
                                <a  href="HomePage.jsp"><li class="menu " ><p>HOME</p></li></a>
                                <a href=""><li  id="showMenu" class="menu customer"><p>CUSTOMER</p></li></a>
                                <a href="video_upload.jsp" ><li class="menu active"><p id="">ADD EXERCISE</p></li></a>
                                <a href=""><li id="showMenu1" class="menu routine"><p >ROUTINE</p></li></a>
                                
                                <a href="asda"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                        <div style="position: relative;top: -125px;">
           
                                            <section>
                                                
        <%
   String abc=session.getAttribute("username").toString();
   
       %>
       
        <form id="msform" method="post" action="Video_upload_Servlet" enctype="multipart/form-data">
            <fieldset>
       Name: <input type="text" name="vname">
       <br>
       Description:<textarea rows="5" cols="35" name="des" value="Description"></textarea>
        
        <br>
        <br>
        <select name="type">
            <option value="shoulder">shoulder</option>
             <option value="chest">chest</option>
              <option value="triceps">triceps</option>
               <option value="back">back</option>
                <option value="forearm">forearm</option>
                 <option value="leg">leg</option>
                  <option value="abdominal">abdominal</option>
                   <option value="butt">butt</option>
                    <option value="others">others</option>
        </select>
        <br>
        <br>
        
        <div id="addexceptions">
            <br>
            <select name="exceptions1" id="exceptions">
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
        <br>
        
        <input type="file" name="file">
        <br>
        <input type="submit" value="Upload"/>
            </fieldset>
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
