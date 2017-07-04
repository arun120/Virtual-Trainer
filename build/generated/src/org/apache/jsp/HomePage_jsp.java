package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Database.Payment;
import Database.Payment_db;
import java.util.Date;
import Database.SetNamesDb;
import Database.SetList;
import java.util.List;
import java.util.ArrayList;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"UTF-8\" />\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"> \n");
      out.write("\t\t<title>Home</title>\n");
      out.write("\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"../favicon.ico\">\n");
      out.write("                 <link rel=\"stylesheet\" href=\"css/form.css\">\n");
      out.write("                \n");
      out.write("                   \n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/normalize.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/demo.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/component.css\" />\n");
      out.write("\t\t<!-- csstransforms3d-shiv-cssclasses-prefixed-teststyles-testprop-testallprops-prefixes-domprefixes-load --> \n");
      out.write("\t\t<script src=\"js/modernizr.custom.25376.js\"></script>\n");
      out.write("                <script src=\"jQuery/jquery-2.2.2.js\"></script>\n");
      out.write("                \n");
      out.write("        \n");
      out.write("        \n");
      out.write("      <link rel=\"stylesheet\" href=\"css/menu.css\">\n");
      out.write("      <style rel=\"stylesheet\">\n");
      out.write("          html{\n");
      out.write("          }\n");
      out.write("      </style>\n");
      out.write("      \n");
      out.write("      <script lang=\"text/javascript\" src=\"js/submenu.js\"></script>\n");
      out.write("       \n");
      out.write("      <script>\n");
      out.write("      \n");
      out.write("      $(document).ready(function(){\n");
      out.write("          $(\"#setid\").on('change keyup',function(){\n");
      out.write("              \n");
      out.write("             var data=$(this).val();\n");
      out.write("             //console.log(data);\n");
      out.write("             \n");
      out.write("             $.get('Exercises',{\n");
      out.write("                 setid: data\n");
      out.write("             },function(response){\n");
      out.write("               var output=\"<br>\";\n");
      out.write("                $.each(response,function(index,value){\n");
      out.write("                    \n");
      out.write("                    output+=value.name+\"<br>\";\n");
      out.write("                });\n");
      out.write("                \n");
      out.write("               \n");
      out.write("                console.log(output);\n");
      out.write("                $(\"#exercise\").html(output);\n");
      out.write("                \n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("             });\n");
      out.write("          });\n");
      out.write("          \n");
      out.write("      });\n");
      out.write("      \n");
      out.write("      </script>\n");
      out.write("        </head>\n");
      out.write("\t<body >\n");
      out.write("\t\t<div id=\"perspective\" class=\"perspective effect-laydown\" >\n");
      out.write("\t\t\t<div class=\"container\" >\n");
      out.write("\t\t\t\t<div class=\"wrapper\" ><!-- wrapper needed for scroll -->\n");
      out.write("\t\t\t\t\t<!-- Top Navigation -->\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"main clearfix\"  >\n");
      out.write("\t\t\t\t\t\t<div class=\"column\" >\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"column\">\n");
      out.write("\t\t\t\t\t\t\t<nav class=\"codrops-demos\">\n");
      out.write("                                 <ul class=\"menu\" >\n");
      out.write("                                <a  href=\"HomePage.jsp\"><li class=\"menu active\" ><p>HOME</p></li></a>\n");
      out.write("                                <a href=\"\"><li  id=\"showMenu\" class=\"menu customer\"><p>CUSTOMER</p></li></a>\n");
      out.write("                                <a href=\"video_upload.jsp\" ><li class=\"menu\"><p id=\"\">ADD EXERCISE</p></li></a>\n");
      out.write("                                <a href=\"\"><li id=\"showMenu1\" class=\"menu routine\"><p >ROUTINE</p></li></a>\n");
      out.write("                                <a href=\"payment.jsp\"><li  class=\"menu\"><p >PAYMENT</p></li></a>\n");
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"\" class=\"current-demo\"></a>\n");
      out.write("\t\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("            \n");
      out.write("     \n");
      out.write("\t\n");
      out.write("            \n");
      out.write("            \n");
      out.write("\t\t\t\t\t</div><!-- /main -->\n");
      out.write("                                         <div style=\"position: relative;top: -125px;\">\n");
      out.write("           \n");
      out.write("                                            <section style=\"height: 100%;\">\n");
      out.write("                                                \n");
      out.write("                                                   <h1>Hello World!</h1>\n");
      out.write("        ");

   String abc=session.getAttribute("username").toString();
   out.write(abc);
       
      out.write("\n");
      out.write("       \n");
      out.write("       <style>\n");
      out.write("           .boxdiv{\n");
      out.write("               width:500px; \n");
      out.write("               height: 200px;\n");
      out.write("               background-color: white;\n");
      out.write("               position: relative;\n");
      out.write("               display: flex;\n");
      out.write("               margin: 10px;\n");
      out.write("               border-radius: 5px;\n");
      out.write("               -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.25);\n");
      out.write("              \n");
      out.write("           }\n");
      out.write("   \n");
      out.write("       </style>\n");
      out.write("       <div class=\"boxdiv\">\n");
      out.write("           \n");
      out.write("           <form id=\"msform\">\n");
      out.write("               <br>\n");
      out.write("               <select id=\"setid\">\n");
      out.write("                   <option value=\"#\">Select</option>\n");
      out.write("                   ");

                   List<SetList> list=new ArrayList<>();
                   list=new SetNamesDb().request();
                   for(SetList s:list){
                   
      out.write("\n");
      out.write("                   <option value=\"");
      out.print( s.getSetid() );
      out.write('"');
      out.write('>');
      out.print( s.getName() );
      out.write("</option>\n");
      out.write("                   ");

                   }
                   
      out.write("\n");
      out.write("               </select>\n");
      out.write("               \n");
      out.write("           </form>\n");
      out.write("       \n");
      out.write("               <div id=\"exercise\"></div>\n");
      out.write("       \n");
      out.write("       </div>\n");
      out.write("               \n");
      out.write("               <div class=\"boxdiv\">div2\n");
      out.write("               \n");
      out.write("               ");

                   String today=(new Date().getYear()+1900)+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate();
                   //out.write(today);
                   for(Payment p:Payment_db.getLapsed(today)){
               
      out.write("\n");
      out.write("               ");
      out.print(p.getName()+" "+p.getUsername()+p.getEnd());
      out.write("<br>\n");
      out.write("               ");

                   }
                
      out.write("\n");
      out.write("               </div>\n");
      out.write("               \n");
      out.write("               <div class=\"boxdiv\">div3</div>\n");
      out.write("               \n");
      out.write("                                            </section>\n");
      out.write("                                            \n");
      out.write("            </div>\n");
      out.write("\t\t\t\t</div><!-- wrapper -->\n");
      out.write("\t\t</div><!-- /container -->\n");
      out.write("\n");
      out.write("\t\t\t<nav class=\"outer-nav top horizontal\" id=\"submenu\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</nav>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("\t\t</div><!-- /perspective -->\n");
      out.write("\t\t<script src=\"js/classie.js\"></script>\n");
      out.write("\t\t<script src=\"js/menu.js\"></script>\n");
      out.write("\n");
      out.write("             \n");
      out.write("     \n");
      out.write(" \n");
      out.write("\t</body>\n");
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
