<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
--><!DOCTYPE html>
<!-- saved from url=(0090)file:///C:/Users/LOGESH/AppData/Local/Temp/Rar$EXa0.703/login_animated-pack/web/index.html -->
<html><head>
  
  
    
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Gym| Home</title>
         <%
        HttpSession newsession = request.getSession(false);
    if (newsession != null) 
    {
         newsession.invalidate();

    }
    %>
		<meta charset="utf-8">
		<link href="./css/style.css" rel="stylesheet" type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href="./css/login.css" rel="stylesheet" type="text/css">
    
    <link href="./css/button.css" rel="stylesheet" type="text/css">
    
    <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  
 
		<!--//webfonts-->
</head>
<body>
	
				 <!-----start-main---->
				<div class="login-form">
					<div class="head">
						
						<img src="css/download.jpg">
					</div>
                                    <form method="post" action="Login_servlet" id="form">
					<li>
						<input type="text" class="text" name="username" value="USERNAME" onfocus="this.value = &#39;&#39;;" onblur="if (this.value == &#39;&#39;) {this.value = &#39;USERNAME&#39;;}">
                                        </li>
                                        <li>
                                                <input type="password" name="password" value="Password" onfocus="this.value = &#39;&#39;;" onblur="if (this.value == &#39;&#39;) {this.value = &#39;Password&#39;;}"background-color:white>
					</li>
                                                <div class="login">
								
                                                  
                                                    <a class="button" onclick="form.submit()">Login</a>

                                                </div></div>
				</form>
			</div>
			<!--//End-login-form-->
		  

</body></html>
