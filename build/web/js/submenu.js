/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 $(document).ready(function(e){
            $(".customer").on('click',function(){
                
                var menuitems="<a href='cust_reg.jsp' class='icon-news'>Customer Registration</a>"+
				"<a href='Cust_view.jsp' class='icon-image'>Customer Details</a>"+
                                     "<a href='#' class='icon-home'>Home</a>"+
				"<a href='#' class='icon-upload'>Uploads</a>"+
				"<a href='#' class='icon-star'>Favorites</a>"+
				"<a href='#' class='icon-mail'>Messages</a>"+
				"<a href='#' class='icon-lock'>Security</a>";
                $("#submenu").html(menuitems);
            });
            
            
            $(".routine").on('click',function(){
                
                var menuitems="<a href='SetCreate.jsp' class='icon-upload'>Create Routine</a>"+
				"<a href='VideoAlloc.jsp' class='icon-mail'>Assign Routine</a>"+
				"<a href='#' class='icon-image'>Images</a>"+
				"<a href='#' class='icon-upload'>Uploads</a>"+
				"<a href='#' class='icon-star'>Favorites</a>"+
				"<a href='#' class='icon-mail'>Messages</a>"+
				"<a href='#' class='icon-lock'>Security</a>";
                $("#submenu").html(menuitems);
            });
            
        });  
