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

        <script lang="text/javascript" src="js/submenu.js">


        </script>
        <script type="text/javascript" src="jQuery/jquery-2.2.2.js"></script>
        <script type="text/javascript" lang="javascript">

          var counter = 1;
          var elem;
        </script>
        <script type="text/javascript" lang="javascript">
            $(document).ready(function () {


                $(document).on("change", ".video", function (e) {

                    var value = $(this).data("newsel");
                    if (value === "yup")
                    {
                        return;
                    }
                    $(this).data("newsel", "yup");
                    counter++;

                    var newTextBoxDiv = $(document.createElement('div'));


                    newTextBoxDiv.after().html('Category: <select id="type' + counter + '" style="width:25%;" >' +
                            '<option value="Empty" selected>Select</option>' +
                            '<option value="shoulder">Shoulder</option>' +
                            '<option value="chest">Chest</option>' +
                            '<option value="triceps">Triceps</option>' +
                            '<option value="back">Back</option>' +
                            '<option value="forearm">Forearm</option>' +
                            '<option value="leg">Leg</option>' +
                            '<option value="abdominal">Abdominal</option>' +
                            '<option value="butt">Butt</option>' +
                            '<option value="others">Others</option>' +
                            '</select>' +
                            'Video: <select class="video" style="width:20%;" name="video' + counter + '" id="video' + counter + '">' +
                            '<option value="Empty" >Select</option>' +
                            '</select>' +
                            'Priority:<input type="text" maxlength="2" style="width:30px;" name="priority' + counter + '" value="' + counter + '">');
                    newTextBoxDiv.appendTo("#addvideos");
                });




                $("form").submit(function () {
                    $("#addvideos").after('<input type="hidden" name="count" value="' + counter + '">');

                });

            });

        </script>



        <script lang="javascript" type="text/javascript">

            $(document).ready(function () {
                var i = 1;
                $.get('CurrentSet', function (response) {
                    $.each(response, function (index, value) {
                        $('<option>').val(value.setid).text(value.name).appendTo("#current");
                    });
                });
                $(document).on("change", "[id^='type']", function () {

                    var t = $(this).val();
                    var typeid = $(this)[0].id;
                    typeid = typeid.substr(4, typeid.length - 1);


                    $.get('VideoTypeFilter', {
                        type: t
                    }, function (response) {
                        var selectvideo = $(".video");
                        var i = typeid;

                        var selectfilter = selectvideo.filter("#video" + i);
                        //console.log(selectvideo);
                        //console.log(selectfilter);
                        selectfilter.find("option").remove();
                        $('<option>').val("Empty").text("Select").appendTo(selectfilter);
                        $.each(response, function (index, value) {


                            $('<option>').val(value.video_id).text(value.name).appendTo(selectfilter);
                        });


                    });

                });

            });
        </script>

        <link rel="stylesheet" type="text/css" href="css/style_1.css" />
        <link rel="stylesheet" type="text/css" href="css/animate.css" />
        <link rel="stylesheet" type="text/css" href="css/formStyle.css" />
        

    </head>
    <body >
        <div id="perspective" class="perspective effect-laydown" style="position: relative;top: -10px;">
            <div class="container" >
                <div class="wrapper" ><!-- wrapper needed for scroll -->
                    <!-- Top Navigation -->

                    <div class="main clearfix"  >

                        <div class="column">
                            <nav class="codrops-demos">
                                <ul class="menu" >
                                    <a  href="HomePage.jsp"><li class="menu " ><p>HOME</p></li></a>
                                    <a href=""><li  id="showMenu" class="menu customer"><p>CUSTOMER</p></li></a>
                                    <a href="video_upload.jsp" ><li class="menu "><p id="">ADD EXERCISE</p></li></a>
                                    <a href=""><li id="showMenu1" class="menu routine active"><p >ROUTINE</p></li></a>
                                    <a href="payment.jsp"><li  class="menu"><p >PAYMENT</p></li></a>

                                </ul>

                                <a href="" class="current-demo"></a>
                            </nav>
                        </div>






                    </div><!-- /main -->
                    <br><br><br><br>
                    <div class="form-area" >
                        <form class="form-signin" style="" method="POST" action="SetServlet">    

                            <h2 style="position: relative;left: -80px;">SET SELECTION</h2>
                            <label style="margin-left: -50%;">NEW SET NAME:</label>
                            <input style="width:40%; " type="text" class="form-control" name="newset">


                                <br><br>
                            <div class="select" >
                                <label style="margin-left: -50%;" >APPEND TO CURRENT SET</label>
                                <select style="margin-left:0px; width:40%;" id="current" name="existset">
                                    <option value="Empty" selected="">Select</option>

                                </select>
                                <div class="select__arrow"></div>
                            </div>

                            <br>
                            <div class="select">

                                <label style="margin-left: -50%;">SELECT VIDEO TO ADD
                                </label>

                                <div id="addvideos">

                                   Category: <select id="type1" style="width:25%;">
                                        <option value="Empty" selected>Select</option>
                                        <option value="shoulder">Shoulder</option>
                                        <option value="chest">Chest</option>
                                        <option value="triceps">Triceps</option>
                                        <option value="back">Back</option>
                                        <option value="forearm">Forearm</option>
                                        <option value="leg">Leg</option>
                                        <option value="abdominal">Abdominal</option>
                                        <option value="butt">Butt</option>
                                        <option value="others">Others</option>
                                    </select>


                                   Video: <select name="video1" style="width:20%;" class="video" id="video1">
                                        <option value="Empty" >Select</option>


                                    </select>
                                   Priority:<input type="text" style="width: 30px;" maxlength="2" name="priority1" value="1">


                                </div>


                                <div class="select__arrow"></div>
                            </div>

                            <br><br>
                            <center>
                                <button class="btn btn-lg btn-primary btn-block" style="color:white;width: 35%;" type="submit">SUBMIT</button>   </center>

                        </form></div>
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
<%
}
%>