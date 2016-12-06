<%-- 
    Document   : VideoAlloc
    Created on : 26 Mar, 2016, 7:31:24 PM
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
                
        
         <script type="text/javascript" src="jQuery/jquery-2.2.2.js"></script>
         <script  type="text/javascript" lang="javascript">
             
             $(document).ready(function(){
                 
        $.get('CurrentSet',function(response){
                        $.each(response,function(index,value){
                            $('<option>').val(value.setid).text(value.name).appendTo("#current");
                        });
                    });
                    
                    
                 $(document).on("keyup","#cust",function(){
                       var lst="";
                        var custid=$(this).val();
                        if(custid!=="")
                        $.get('CustomerId',{cust:custid},function(response){
                           
                            $.each(response,function(index,value){
                                lst=lst+"<div class='rem'>"+value+"</div>";
                                $('#clist').html(lst);
                                $('#clist').show();
                            });
                        });
        
                 });
                 
                 $(document).on("click",".rem",function(){
                     $("#cust").val(($(this).text()));
                     $("#clist").hide();
                 });
             });
         </script>
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
                                <a  href="HomePage.jsp"><li class="menu " ><p>HOME</p></li></a>
                                <a href=""><li  id="showMenu" class="menu customer"><p>CUSTOMER</p></li></a>
                                <a href="video_upload.jsp" ><li class="menu"><p id="">ADD EXERCISE</p></li></a>
                                <a href=""><li id="showMenu1" class="menu routine active"><p >ROUTINE</p></li></a>
                                <a href="asda"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>
								
								<a href="" class="current-demo"></a>
							</nav>
						</div>
				
            
     
	
            
            
					</div><!-- /main -->
                                         <div style="position: relative;top: -125px;">
           
                                            <section style="height: 100%;">
                                                <form id="msform" method="post" action="VideoAllocServlet">
                                                    <fieldset>
            Cust_Id: <input type="text" id="cust" name="custid"><br>
            <div id="clist"></div>
            Set_id:   <select  id="current" name="setid"></select><br>
            <input type="submit" value="Submit"><br>
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

             
     
 
	</body>
</html>