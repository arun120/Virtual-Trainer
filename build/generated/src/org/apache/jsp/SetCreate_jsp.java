package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SetCreate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"> \n");
      out.write("        <title>Home</title>\n");
      out.write("\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../favicon.ico\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/form.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/normalize.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/demo.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/component.css\" />\n");
      out.write("        <!-- csstransforms3d-shiv-cssclasses-prefixed-teststyles-testprop-testallprops-prefixes-domprefixes-load --> \n");
      out.write("        <script src=\"js/modernizr.custom.25376.js\"></script>\n");
      out.write("        <script src=\"jQuery/jquery-2.2.2.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/menu.css\">\n");
      out.write("        <style rel=\"stylesheet\">\n");
      out.write("            html{\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        <script lang=\"text/javascript\" src=\"js/submenu.js\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" src=\"jQuery/jquery-2.2.2.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" lang=\"javascript\">\n");
      out.write("\n");
      out.write("          var counter = 1;\n");
      out.write("          var elem;\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" lang=\"javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("\n");
      out.write("\n");
      out.write("                $(document).on(\"change\", \".video\", function (e) {\n");
      out.write("\n");
      out.write("                    var value = $(this).data(\"newsel\");\n");
      out.write("                    if (value === \"yup\")\n");
      out.write("                    {\n");
      out.write("                        return;\n");
      out.write("                    }\n");
      out.write("                    $(this).data(\"newsel\", \"yup\");\n");
      out.write("                    counter++;\n");
      out.write("\n");
      out.write("                    var newTextBoxDiv = $(document.createElement('div'));\n");
      out.write("\n");
      out.write("\n");
      out.write("                    newTextBoxDiv.after().html('Category: <select id=\"type' + counter + '\" style=\"width:25%;\" >' +\n");
      out.write("                            '<option value=\"Empty\" selected>Select</option>' +\n");
      out.write("                            '<option value=\"shoulder\">Shoulder</option>' +\n");
      out.write("                            '<option value=\"chest\">Chest</option>' +\n");
      out.write("                            '<option value=\"triceps\">Triceps</option>' +\n");
      out.write("                            '<option value=\"back\">Back</option>' +\n");
      out.write("                            '<option value=\"forearm\">Forearm</option>' +\n");
      out.write("                            '<option value=\"leg\">Leg</option>' +\n");
      out.write("                            '<option value=\"abdominal\">Abdominal</option>' +\n");
      out.write("                            '<option value=\"butt\">Butt</option>' +\n");
      out.write("                            '<option value=\"others\">Others</option>' +\n");
      out.write("                            '</select>' +\n");
      out.write("                            'Video: <select class=\"video\" style=\"width:20%;\" name=\"video' + counter + '\" id=\"video' + counter + '\">' +\n");
      out.write("                            '<option value=\"Empty\" >Select</option>' +\n");
      out.write("                            '</select>' +\n");
      out.write("                            'Priority:<input type=\"text\" maxlength=\"2\" style=\"width:30px;\" name=\"priority' + counter + '\" value=\"' + counter + '\">');\n");
      out.write("                    newTextBoxDiv.appendTo(\"#addvideos\");\n");
      out.write("                });\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                $(\"form\").submit(function () {\n");
      out.write("                    $(\"#addvideos\").after('<input type=\"hidden\" name=\"count\" value=\"' + counter + '\">');\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script lang=\"javascript\" type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                var i = 1;\n");
      out.write("                $.get('CurrentSet', function (response) {\n");
      out.write("                    $.each(response, function (index, value) {\n");
      out.write("                        $('<option>').val(value.setid).text(value.name).appendTo(\"#current\");\n");
      out.write("                    });\n");
      out.write("                });\n");
      out.write("                $(document).on(\"change\", \"[id^='type']\", function () {\n");
      out.write("\n");
      out.write("                    var t = $(this).val();\n");
      out.write("                    var typeid = $(this)[0].id;\n");
      out.write("                    typeid = typeid.substr(4, typeid.length - 1);\n");
      out.write("\n");
      out.write("\n");
      out.write("                    $.get('VideoTypeFilter', {\n");
      out.write("                        type: t\n");
      out.write("                    }, function (response) {\n");
      out.write("                        var selectvideo = $(\".video\");\n");
      out.write("                        var i = typeid;\n");
      out.write("\n");
      out.write("                        var selectfilter = selectvideo.filter(\"#video\" + i);\n");
      out.write("                        //console.log(selectvideo);\n");
      out.write("                        //console.log(selectfilter);\n");
      out.write("                        selectfilter.find(\"option\").remove();\n");
      out.write("                        $('<option>').val(\"Empty\").text(\"Select\").appendTo(selectfilter);\n");
      out.write("                        $.each(response, function (index, value) {\n");
      out.write("\n");
      out.write("\n");
      out.write("                            $('<option>').val(value.video_id).text(value.name).appendTo(selectfilter);\n");
      out.write("                        });\n");
      out.write("\n");
      out.write("\n");
      out.write("                    });\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style_1.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/animate.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/formStyle.css.css\" />\n");
      out.write("        \n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        <div id=\"perspective\" class=\"perspective effect-laydown\" style=\"position: relative;top: -10px;\">\n");
      out.write("            <div class=\"container\" >\n");
      out.write("                <div class=\"wrapper\" ><!-- wrapper needed for scroll -->\n");
      out.write("                    <!-- Top Navigation -->\n");
      out.write("\n");
      out.write("                    <div class=\"main clearfix\"  >\n");
      out.write("\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <nav class=\"codrops-demos\">\n");
      out.write("                                <ul class=\"menu\" >\n");
      out.write("                                    <a  href=\"HomePage.jsp\"><li class=\"menu \" ><p>HOME</p></li></a>\n");
      out.write("                                    <a href=\"\"><li  id=\"showMenu\" class=\"menu customer\"><p>CUSTOMER</p></li></a>\n");
      out.write("                                    <a href=\"video_upload.jsp\" ><li class=\"menu \"><p id=\"\">ADD EXERCISE</p></li></a>\n");
      out.write("                                    <a href=\"\"><li id=\"showMenu1\" class=\"menu routine active\"><p >ROUTINE</p></li></a>\n");
      out.write("                                    <a href=\"asda\"><li  class=\"menu\"><p >PAYMENT</p></li></a>\n");
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("\n");
      out.write("                                <a href=\"\" class=\"current-demo\"></a>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div><!-- /main -->\n");
      out.write("                    <br><br><br><br>\n");
      out.write("                    <div class=\"form-area\" >\n");
      out.write("                        <form class=\"form-signin\" style=\"\" method=\"POST\" action=\"SetServlet\">    \n");
      out.write("\n");
      out.write("                            <h2 style=\"position: relative;left: -80px;\">SET SELECTION</h2>\n");
      out.write("                            <label style=\"margin-left: -50%;\">NEW SET NAME:</label>\n");
      out.write("                            <input style=\"width:40%; \" type=\"text\" class=\"form-control\" name=\"newset\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <br><br>\n");
      out.write("                            <div class=\"select\" >\n");
      out.write("                                <label style=\"margin-left: -50%;\" >APPEND TO CURRENT SET</label>\n");
      out.write("                                <select style=\"margin-left:0px; width:40%;\" id=\"current\" name=\"existset\">\n");
      out.write("                                    <option value=\"Empty\" selected=\"\">Select</option>\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                                <div class=\"select__arrow\"></div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"select\">\n");
      out.write("\n");
      out.write("                                <label style=\"margin-left: -50%;\">SELECT VIDEO TO ADD\n");
      out.write("                                </label>\n");
      out.write("\n");
      out.write("                                <div id=\"addvideos\">\n");
      out.write("\n");
      out.write("                                   Category: <select id=\"type1\" style=\"width:25%;\">\n");
      out.write("                                        <option value=\"Empty\" selected>Select</option>\n");
      out.write("                                        <option value=\"shoulder\">Shoulder</option>\n");
      out.write("                                        <option value=\"chest\">Chest</option>\n");
      out.write("                                        <option value=\"triceps\">Triceps</option>\n");
      out.write("                                        <option value=\"back\">Back</option>\n");
      out.write("                                        <option value=\"forearm\">Forearm</option>\n");
      out.write("                                        <option value=\"leg\">Leg</option>\n");
      out.write("                                        <option value=\"abdominal\">Abdominal</option>\n");
      out.write("                                        <option value=\"butt\">Butt</option>\n");
      out.write("                                        <option value=\"others\">Others</option>\n");
      out.write("                                    </select>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                   Video: <select name=\"video1\" style=\"width:20%;\" class=\"video\" id=\"video1\">\n");
      out.write("                                        <option value=\"Empty\" >Select</option>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                   Priority:<input type=\"text\" style=\"width: 30px;\" maxlength=\"2\" name=\"priority1\" value=\"1\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"select__arrow\"></div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <br><br>\n");
      out.write("                            <center>\n");
      out.write("                                <button class=\"btn btn-lg btn-primary btn-block\" style=\"color:white;width: 35%;\" type=\"submit\">SUBMIT</button>   </center>\n");
      out.write("\n");
      out.write("                        </form></div>\n");
      out.write("                </div><!-- wrapper -->\n");
      out.write("            </div><!-- /container -->\n");
      out.write("\n");
      out.write("            <nav class=\"outer-nav top horizontal\" id=\"submenu\">\n");
      out.write("\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div><!-- /perspective -->\n");
      out.write("        <script src=\"js/classie.js\"></script>\n");
      out.write("        <script src=\"js/menu.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"footer\">\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
