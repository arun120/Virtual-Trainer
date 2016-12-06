<%-- 
    Document   : VideoAlloc
    Created on : 26 Mar, 2016, 7:31:24 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="VideoAllocServlet">
            Cust_Id: <input type="text" id="cust" name="custid"><br>
            <div id="clist"></div>
            Set_id:   <select  id="current" name="setid"></select><br>
            <input type="submit" value="Submit"><br>
        </form>
    </body>
</html>
