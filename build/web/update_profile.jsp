<%-- 
    Document   : update_profile
    Created on : Mar 11, 2018, 11:43:45 AM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<html>

<%
                                        
        String fname = request.getParameter("first");
        String lname = request.getParameter("last");
        String emailid = request.getParameter("email");
        String uname=(String)session.getAttribute("uname");
        String pwd = request.getParameter("pass");
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
            PreparedStatement ps = con.prepareStatement("update members set first_name=?,last_name=?,email=?,pass=? where uname='"+uname+"'" );
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, emailid);
            ps.setString(4, pwd);
            ps.executeUpdate();
            con.close();
            ps.close();
            
         
%>
<script> 
    alert('profile updated sucessfully');
    window.location.href="profile.jsp"
</script>
         
        
</html>        
        
        