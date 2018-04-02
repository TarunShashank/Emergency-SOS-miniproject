<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "root");
        PreparedStatement pst=con.prepareStatement("select * from members where uname='"+user+"' and pass='"+pwd+"'");
       
        ResultSet rs=pst.executeQuery();
        if (rs.next()) 
        {
            session.setAttribute("uname",user);
            if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
                %>
                    <script>
                        alert('Username empty.please try again.'); 
                         window.loaction.href="index.jsp";
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
            response.sendRedirect("index.jsp");
         %>
        <script language="javascript">
            alert("wrong details please login");
        </script>
        <%
        }
%>