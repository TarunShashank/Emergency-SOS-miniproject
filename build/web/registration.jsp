<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String mid=request.getParameter("mid");
    int midn=Integer.parseInt(mid);
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into members(id,first_name, last_name, email, uname, pass, regdate) values ('"+midn+"','" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //session.setAttribute("email",email);
        %>
        <script language="javascript">
            alert("Registration Sucessful!click on OK to login");
            window.location.href="index.jsp";
        </script>
        <% } else {
        response.sendRedirect("index.jsp");
    }
%>