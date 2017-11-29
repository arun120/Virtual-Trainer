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
                     
                     $.get('CurrentSet',{
                 cust :$(this).text()
                 
             },function(response){
                // console.log(response);
               var output="<br>";
               
               var completed=0;
               var partial=0;
               var skip=0;
               var notattempted=0;
               var totalVideo=0;
                $.each(response,function(index,value){
                    //console.log(value);
                    if(typeof value.size === 'undefined'){
                    output+=value+"<br>";
                    if(value.status==='partial')
                        partial++;
                    else if(value.status==='completed')
                        completed++;
                    else
                        skip++;
                        
                }
                else{
                    totalVideo=value.size;
                    
                }
                    
                });
                
               
                console.log(output);
               // $("#exercise").html(output);
                
                 
                notattempted=totalVideo-partial-completed-skip;
                    console.log(partial/totalVideo +" "+completed/totalVideo +" "+skip/totalVideo + " "+ notattempted/totalVideo ); 
             });
                 });
                 
          $("#setid").on('change keyup',function(){
              
             var data=$(this).val();
             //console.log(data);
             
             $.get('Exercises',{
                 setid: data
             },function(response){
               var output="<br><h4>Exercises</h4>";
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
                                                
                                                   
        <%
   String username=session.getAttribute("username").toString();
   
       %>
       
       <style>
           .boxdiv{
               width:40%; 
             
               height: 200px;
               background-color: white;
               position: relative;
               display: flex;
               margin: 10px;
               border-radius: 2px;
               -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.25);
              
           }
   
       </style>
       
       <div style="display: flex;margin: 10px;width: 100%; height: 200px;justify-content: center;">
        <div class="boxdiv">
            <div style="width: 60%;height: 50px;margin-left: 5px;">
                <h3 >Routine Details</h3>
                
                
           <form style="margin-left: 5px;">
               
               <label>Routine :</label> <select id="setid">
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
       
               
       </div>
               
               <div id="exercise" style="overflow-y: auto;"></div>
           
        </div>
               
               <div class="boxdiv"  style="overflow-y: auto;display: block;margin-left: 100px;">
                  
                   <h3>&nbsp;&nbsp;&nbsp;Pending Payments</h3>
                   <hr>
                   <table style="width: 100%">
                   <thead>
                   <th>User ID </th>
                   <th>Name</th>
                   <th>Due Date</th>
                       
                   </thead>
                   <tbody>
               <%
                   String today=(new Date().getYear()+1900)+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate();
                   //out.write(today);
                   for(Payment p:Payment_db.getLapsed(today)){
               %>
               <tr align="center">
                   <td >
                        <%=p.getUsername()%>
             
                   </td>
                   <td>
                       <%=p.getName()%>
                   </td>
                   <td>
                   <%=p.getEnd()%>
                   </td>
               </tr>
               <%
                   }
                %>
                   </tbody>
               </table>
               </div>
       </div>
       
                   <br><br>
                   <div style="display: flex;justify-content: center;width: 100%;">
               <div class="boxdiv" style="display: block;margin-left: 100px;height: 300px;">
                   <h3>&nbsp;&nbsp;&nbsp;User Tracker</h3>
                   <hr>
                   <form style="margin-left: 5px;">
               <label>USER ID :</label>
        <input  id="cust" type="text"  name="custid" placeholder="" required="" autofocus="" />
       <div id="clist"></div>
       
       <div style="width: 750px;height: 250px;"></div>
                   </form>
               </div>
                   </div>
             
               </div>
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