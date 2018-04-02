<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "root");
        PreparedStatement pst=con.prepareStatement("select * from auth where username='"+user+"' and password='"+pwd+"'");
       
        ResultSet rs=pst.executeQuery();
        if (rs.next()) 
        {
            session.setAttribute("uname",user);
            if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
                %>
                    <script>
                        alert("Username empty.please try again."); 
                         window.loaction.href="adminlogin.jsp";
                      </script>   
                <%
                } 
                else 
                {
                %>
                  <script language="javascript">
                        window.location.href="dashboard.jsp";
                    </script>  
                <%
                }
        }
        else
        {
            response.sendRedirect("adminlogin.jsp");
         %>
        <script language="javascript">
            alert("wrong details please login");
        </script>
        <%
        }
%>
