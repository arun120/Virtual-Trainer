/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 $(document).ready(function(e){
            $(".customer").on('click',function(){
                
                var menuitems="<a href='cust_reg.jsp' class='icon-news' target='_blank' >Customer Registration</a>"+
				"<a href='Cust_view.jsp' class='icon-image'>Customer Details</a>";
                $("#submenu").html(menuitems);
            });
            
            
            $(".routine").on('click',function(){
                
                var menuitems="<a href='SetCreate.jsp' class='icon-upload'>Create Routine</a>"+
				"<a href='VideoAlloc.jsp' class='icon-mail'>Assign Routine</a>";
                $("#submenu").html(menuitems);
            });
            
        });  
