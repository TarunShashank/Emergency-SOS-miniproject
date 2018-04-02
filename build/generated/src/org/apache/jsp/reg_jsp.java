package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class reg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Registration</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/stylereg.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \t\t\t");
 int icount=0;
                            
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/rest", "root","root");
                            Statement stmt=con.createStatement();
                              
                             ResultSet rs=stmt.executeQuery("select * from members");
                            while(rs.next())
                            { int nid=rs.getInt("id");
                             
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form method=\"post\" action=\"registration.jsp\" class=\"cform\">\n");
      out.write("                <article class=\"title\">\n");
      out.write("                        <span>Registrations</span>\n");
      out.write("                </article>\n");
      out.write("                <article class=\"form\">\n");
      out.write("                        <div>First Name</div>\n");
      out.write("                        <input type=\"text\" name=\"fname\" value=\"\" />\n");
      out.write("                \n");
      out.write("                        <div>Last Name</div>\n");
      out.write("                        <input type=\"text\" name=\"lname\" value=\"\" />\n");
      out.write("                  \n");
      out.write("                        <div>Email</div>\n");
      out.write("                        <input type=email name=\"email\" value=\"\" />\n");
      out.write("                  \n");
      out.write("                        <div>User Name</div>\n");
      out.write("                        <input type=\"text\" name=\"uname\" value=\"\" />\n");
      out.write("                    \n");
      out.write("                        <div>Password</div>\n");
      out.write("                        <input type=\"password\" name=\"pass\" value=\"\" />\n");
      out.write("                        <input type=\"hidden\" name=\"mid\" value=\"");
      out.print(nid);
      out.write("\" />\n");
      out.write("                        <br><br>\n");
      out.write("                    <article class=\"btn\">\n");
      out.write("                        <input type=\"submit\" value=\"Submit\" />\n");
      out.write("                     </article>\n");
      out.write("         \n");
      out.write("\t\t  <article class=\"btn\">\n");
      out.write("\t\t\t<input type=\"reset\" value=\"Reset\" />\n");
      out.write("     \t\t  </article>\n");
      out.write("                        <br>\n");
      out.write("\t\t  \n");
      out.write("\t\t</article>\n");
      out.write("\t\t\t\n");
      out.write("            \t\n");
      out.write("        </form>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("        \n");
      out.write("        <form action=\"index.jsp\" class=\"cform\">\n");
      out.write("            <article class=\"form\">\n");
      out.write("                <div>already registered!!</div> \n");
      out.write("                    <article class=\"btn\">\n");
      out.write("                         <input type=\"submit\" value=\"login here\"/>\n");
      out.write("                    </article>\n");
      out.write("            </article> \t\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"js/indexreg.js\"></script>\n");
      out.write("</html>\n");
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
