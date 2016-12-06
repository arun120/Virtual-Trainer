<%-- 
    Document   : video_uplooad
    Created on : 14 Mar, 2016, 8:58:12 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
    <form method="post" action="Video_upload_Servlet" enctype="multipart/form-data">
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
        
    </form>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
