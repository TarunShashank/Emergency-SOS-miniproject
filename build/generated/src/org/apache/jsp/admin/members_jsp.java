package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class members_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"../admin/assets/img/apple-icon.png\">\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" href=\"../admin/assets/img/favicon.png\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\n");
      out.write("    <title>Now UI Dashboard by Creative Tim</title>\n");
      out.write("    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />\n");
      out.write("    <!--     Fonts and icons     -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700,200\" rel=\"stylesheet\" />\n");
      out.write("    <link href=\"https://use.fontawesome.com/releases/v5.0.6/css/all.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- CSS Files -->\n");
      out.write("    <link href=\"../admin/assets/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("    <link href=\"../admin/assets/css/now-ui-dashboard.css?v=1.0.1\" rel=\"stylesheet\" />\n");
      out.write("    <!-- CSS Just for demo purpose, don't include it in your project -->\n");
      out.write("    <link href=\"../admin/assets/demo/demo.css\" rel=\"stylesheet\" />\n");
      out.write("</head>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function del()\n");
      out.write("{\n");
      out.write("if(confirm(\"Do You Want to Delete this member?\"))\n");
      out.write("{\n");
      out.write("}\n");
      out.write("else\n");
      out.write("{\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<body class=\"\">\n");
      out.write("     \n");
      out.write("\n");
      out.write("    <div class=\"wrapper \">\n");
      out.write("        <div class=\"sidebar\" data-color=\"orange\">\n");
      out.write("            <!--\n");
      out.write("        Tip 1: You can change the color of the sidebar using: data-color=\"blue | green | orange | red | yellow\"\n");
      out.write("    -->\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                <a href=\"http://www.creative-tim.com\" class=\"simple-text logo-mini\">\n");
      out.write("                    AD\n");
      out.write("                </a>\n");
      out.write("                <a href=\"http://www.creative-tim.com\" class=\"simple-text logo-normal\">\n");
      out.write("                    Admin Dashboard\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"sidebar-wrapper\">\n");
      out.write("                <ul class=\"nav\">\n");
      out.write("                   <li >\n");
      out.write("                        <a href=\"../admin/dashboard.jsp\">\n");
      out.write("                            <i class=\"now-ui-icons design_app\"></i>\n");
      out.write("                            <p>Dashboard</p>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"active\" >\n");
      out.write("                        <a href=\"../admin/members.jsp\">\n");
      out.write("                            <i class=\"now-ui-icons users_circle-08\"></i>\n");
      out.write("                            <p>Members</p>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"../admin/finaidapply.jsp\">\n");
      out.write("                            <i class=\"now-ui-icons business_bank\"></i>\n");
      out.write("                            <p>Financial Aid Apply</p>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"../admin/addreliefcenter.jsp\">\n");
      out.write("                            <i class=\"now-ui-icons ui-1_simple-add\"></i>\n");
      out.write("                            <p>Add Relief Center</p>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"../admin/reliefdonate.jsp\">\n");
      out.write("                            <i class=\"now-ui-icons ui-1_send\"></i>\n");
      out.write("                            <p>Relief Donate</p>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"../admin/support.jsp\">\n");
      out.write("                            <i class=\"now-ui-icons objects_support-17\"></i>\n");
      out.write("                            <p>Support</p>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"main-panel\">\n");
      out.write("            <!-- Navbar -->\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"navbar-wrapper\">\n");
      out.write("                        <div class=\"navbar-toggle\">\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggler\">\n");
      out.write("                                <span class=\"navbar-toggler-bar bar1\"></span>\n");
      out.write("                                <span class=\"navbar-toggler-bar bar2\"></span>\n");
      out.write("                                <span class=\"navbar-toggler-bar bar3\"></span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"#pablo\">Table List</a>\n");
      out.write("                    </div>\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navigation\" aria-controls=\"navigation-index\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-bar navbar-kebab\"></span>\n");
      out.write("                        <span class=\"navbar-toggler-bar navbar-kebab\"></span>\n");
      out.write("                        <span class=\"navbar-toggler-bar navbar-kebab\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <div class=\"collapse navbar-collapse justify-content-end\" id=\"navigation\">\n");
      out.write("                        <form>\n");
      out.write("                            <div class=\"input-group no-border\">\n");
      out.write("                                <input type=\"text\" value=\"\" class=\"form-control\" placeholder=\"Search...\">\n");
      out.write("                                <span class=\"input-group-addon\">\n");
      out.write("                                    <i class=\"now-ui-icons ui-1_zoom-bold\"></i>\n");
      out.write("                                </span>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        <ul class=\"navbar-nav\">\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"#pablo\">\n");
      out.write("                                    <i class=\"now-ui-icons media-2_sound-wave\"></i>\n");
      out.write("                                    <p>\n");
      out.write("                                        <span class=\"d-lg-none d-md-block\">Stats</span>\n");
      out.write("                                    </p>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item dropdown\">\n");
      out.write("                                <a class=\"nav-link dropdown-toggle\" href=\"http://example.com\" id=\"navbarDropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                    <i class=\"now-ui-icons location_world\"></i>\n");
      out.write("                                    <p>\n");
      out.write("                                        <span class=\"d-lg-none d-md-block\">Some Actions</span>\n");
      out.write("                                    </p>\n");
      out.write("                                </a>\n");
      out.write("                                <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"navbarDropdownMenuLink\">\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Action</a>\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Another action</a>\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Something else here</a>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"#pablo\">\n");
      out.write("                                    <i class=\"now-ui-icons users_single-02\"></i>\n");
      out.write("                                    <p>\n");
      out.write("                                        <span class=\"d-lg-none d-md-block\">Account</span>\n");
      out.write("                                    </p>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- End Navbar -->\n");
      out.write("            <div class=\"panel-header panel-header-sm\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                <h4 class=\"card-title\"> Members List</h4>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <div class=\"table-responsive\">\n");
      out.write("                                    <table class=\"table\">\n");
      out.write("                                        <thead class=\" text-primary\">\n");
      out.write("                                            <th>\n");
      out.write("                                                Sno\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                               First Name\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                               Last Name\n");
      out.write("                                            </th>\n");
      out.write("                                            \n");
      out.write("                                            <th>\n");
      out.write("                                                Email id\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                                Username\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                                Password\n");
      out.write("                                            </th>\n");
      out.write("                                            <th class=\"text-right\">\n");
      out.write("                                                Action\n");
      out.write("                                            </th>\n");
      out.write("                                        </thead>\n");
      out.write("                                         ");


        
                             int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from members");
        
        
        
                                    
                                        
                                     while(rs.next())
                                     {
                                             String username=rs.getString("uname");
                                             String mid= rs.getString("id");
                                       
      out.write("\n");
      out.write("                                        <tbody>\n");
      out.write("                                            <tr>\n");
      out.write("                                               \n");
      out.write("                                                <td>\n");
      out.write("                                                    ");
      out.print(++count );
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    ");
      out.print( rs.getString("first_name") );
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    ");
      out.print( rs.getString("last_name") );
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    ");
      out.print( rs.getString("email") );
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    ");
      out.print(username);
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    ");
      out.print( rs.getString("pass") );
      out.write("\n");
      out.write("                                                </td>\n");
      out.write("                                                <td class=\"td-actions text-right\">\n");
      out.write("                                                    <form action=\"member_del.jsp\" method=\"get\">\n");
      out.write("                                                        <input type=\"hidden\" id=\"memberid\" name=\"mem_id\" value=\"");
      out.print(mid);
      out.write("\">\n");
      out.write("                                                      <button type=\"submit\" rel=\"tooltip\" onclick=\"return del()\" class=\"btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral\" data-original-title=\"Remove\">\n");
      out.write("                                                        <i class=\"now-ui-icons ui-1_simple-remove\"></i>\n");
      out.write("                                                      </button>    \n");
      out.write("                                                    </form>   \n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("                                            <hr>\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                    <hr>\n");
      out.write("                                    <div class=\"stats\">\n");
      out.write("                                              <i class=\"now-ui-icons loader_refresh spin\"></i> Updated 3 minutes ago\n");
      out.write("                                 </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div> \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("<!--   Core JS Files   -->\n");
      out.write("<script src=\"../admin/assets/js/core/jquery.min.js\"></script>\n");
      out.write("<script src=\"../admin/assets/js/core/popper.min.js\"></script>\n");
      out.write("<script src=\"../admin/assets/js/core/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"../admin/assets/js/plugins/perfect-scrollbar.jquery.min.js\"></script>\n");
      out.write("<!--  Notifications Plugin    -->\n");
      out.write("<script src=\"../admin/assets/js/plugins/bootstrap-notify.js\"></script>\n");
      out.write("<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->\n");
      out.write("<script src=\"../admin/assets/js/now-ui-dashboard.js?v=1.0.1\"></script>\n");
      out.write("<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->\n");
      out.write("<script src=\"../admin/assets/demo/demo.js\"></script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
