<%-- 
    Document   : SetCreate
    Created on : 25 Mar, 2016, 3:47:40 PM
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
      
      <script lang="text/javascript" src="js/submenu.js">
       
          
      </script>
       <script type="text/javascript" src="jQuery/jquery-2.2.2.js"></script>
        <script type="text/javascript" lang="javascript">
           
                           var counter=1;
                           var elem;
        </script>
        <script type="text/javascript" lang="javascript">
            $(document).ready(function(){
                 
           
                $(document).on("change",".video",function(e){
                    
                    var value=$(this).data("newsel");
                    if(value === "yup")
                    {
                        return;            
                    }
         $(this).data("newsel","yup");
        counter++;
        
    var newTextBoxDiv = $(document.createElement('div'));
	     
                
	newTextBoxDiv.after().html('<select id="type'+counter+'">'+
                '<option value="Empty" selected>Select</option>'+
            '<option value="shoulder">shoulder</option>'+
             '<option value="chest">chest</option>'+
              '<option value="triceps">triceps</option>'+
               '<option value="back">back</option>'+
                '<option value="forearm">forearm</option>'+
                 '<option value="leg">leg</option>'+
                  '<option value="abdominal">abdominal</option>'+
                   '<option value="butt">butt</option>'+
                    '<option value="others">others</option>'+
        '</select>'+
           '<select class="video" name="video'+counter+'" id="video'+counter+'">'+
                '<option value="Empty" >Select</option>'+
            '</select>'+
            'Priority:<input type="text" name="priority'+counter+'" value="'+counter+'">');
	newTextBoxDiv.appendTo("#addvideos");      
                });
                    
                    
        
        
        $("form").submit(function(){
             $("#addvideos").after('<input type="hidden" name="count" value="'+counter+'">');
             
        });

            });
            
        </script>
        
        
        
            <script lang="javascript" type="text/javascript">
                
                $(document).ready(function(){
                    var i=1;
                    $.get('CurrentSet',function(response){
                        $.each(response,function(index,value){
                            $('<option>').val(value.setid).text(value.name).appendTo("#current");
                        });
                    });
                    $(document).on("change","[id^='type']",function(){
                     
                     var t=$(this).val();
                     var typeid=$(this)[0].id;
                     typeid=typeid.substr(4,typeid.length-1);
                     
                     
                        $.get('VideoTypeFilter',{
                            type:t
                        },function(response){
                        var selectvideo=$(".video");
                        var i=typeid;
                      
                        var selectfilter=selectvideo.filter("#video"+i);
                        //console.log(selectvideo);
                        //console.log(selectfilter);
                        selectfilter.find("option").remove();
                        $.each(response,function(index,value){
                            
                            
                            $('<option>').val(value.video_id).text(value.name).appendTo(selectfilter);
                        });
                       
    
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
                                <a  href="HomePage.jsp"><li class="menu " ><p>HOME</p></li></a>
                                <a href=""><li  id="showMenu" class="menu customer"><p>CUSTOMER</p></li></a>
                                <a href="video_upload.jsp" ><li class="menu "><p id="">ADD EXERCISE</p></li></a>
                                <a href=""><li id="showMenu1" class="menu routine active"><p >ROUTINE</p></li></a>
                                <a href="asda"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                         <div style="position: relative;top: -125px;">
           
                                            <section style="height: 100%;">
                                                   <form id="msform" method="POST" action="SetServlet" >
                                                       <fieldset>
            New Set Name<input type="text" name="newset">
            <br>
            Append to current set
            <select id="current" name="existset">
                <option value="Empty" selected>Select</option>
        
            </select>
            
            
            <!-- Appending video -->
            select video to add
   
            
            <br>
            
            <div id="addvideos">
            
            <select id="type1">
           <option value="Empty" selected>Select</option>
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
           
            
            <select name="video1" class="video" id="video1">
                <option value="Empty" >Select</option>
           
            
            </select>
            Priority:<input type="text" name="priority1" value="1">
            
            
            </div>
            
            <input type="submit" value="Submit">
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