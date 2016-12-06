<%-- 
    Document   : SetCreate
    Created on : 25 Mar, 2016, 3:47:40 PM
    Author     : Home
--%>

<%@page import="Database.SetList"%>
<%@page import="Database.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body>
        <h1>Hello World!</h1>
        
        <form method="POST" action="SetServlet" >
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
        </form>
            
      
        
    </body>
</html>
