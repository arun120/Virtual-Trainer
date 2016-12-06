package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"UTF-8\" />\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"> \n");
      out.write("\t\t<title>Home</title>\n");
      out.write("\t\t<meta name=\"description\" content=\"Perspective Page View Navigation: Transforms the page in 3D to reveal a menu\" />\n");
      out.write("\t\t<meta name=\"keywords\" content=\"3d page, menu, navigation, mobile, perspective, css transform, web development, web design\" />\n");
      out.write("\t\t<meta name=\"author\" content=\"Codrops\" />\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"../favicon.ico\">\n");
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
      out.write("      \n");
      out.write("      \n");
      out.write("      <script lang=\"text/javascript\" src=\"js/submenu.js\">\n");
      out.write("       \n");
      out.write("          \n");
      out.write("      </script>\n");
      out.write("       \n");
      out.write("        </head>\n");
      out.write("\t<body>\n");
      out.write("\t\t<div id=\"perspective\" class=\"perspective effect-laydown\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"wrapper\"><!-- wrapper needed for scroll -->\n");
      out.write("\t\t\t\t\t<!-- Top Navigation -->\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"main clearfix\">\n");
      out.write("\t\t\t\t\t\t<div class=\"column\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"column\">\n");
      out.write("\t\t\t\t\t\t\t<nav class=\"codrops-demos\">\n");
      out.write("                                 <ul class=\"menu\">\n");
      out.write("                                <li class=\"menu\"><a class=\"active\" href=\"\"><p>HOME</p></a></li>\n");
      out.write("                                <li  id=\"showMenu\" class=\"menu customer\"><a href=\"\"><p>CUSTOMER</p></a></li>\n");
      out.write("                                <li class=\"menu\"><a href=\"\" ><p id=\"\">ADD EXERCISE</p></a></li>\n");
      out.write("                                <li id=\"showMenu1\" class=\"menu routine\"><a href=\"\"><p >ROUTINE</p></a></li>\n");
      out.write("                                <li  class=\"menu\"><a href=\"\"><p >PAYMENT</p></a></li>\n");
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
      out.write("                                        <div style=\"margin-top: -225px;\">\n");
      out.write("           \n");
      out.write("                                            <section>\n");
      out.write("                                                \n");
      out.write("                                                   <h1>Hello World!</h1>\n");
      out.write("        ");

   String abc=session.getAttribute("username").toString();
   out.write(abc);
       
      out.write("\n");
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
      out.write("   \n");
      out.write("<div id=\"footer\">\n");
      out.write("</div>\n");
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
