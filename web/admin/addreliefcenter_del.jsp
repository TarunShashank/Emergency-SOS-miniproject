<%-- 
    Document   : ddreliefcenter_del
    Created on : Mar 11, 2018, 7:45:11 PM
    Author     : tarun
--%>

<%@ page import="java.sql.*;" %>
<%
     String rid=request.getParameter("rel_id");
    
    
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login", "root","root");
     PreparedStatement ps = con.prepareStatement("delete from addreliefcenter where rid = '"+rid+ "'");
                ps.executeUpdate();
                con.close();
                ps.close();
     
%>
<script>
    window.location.href="addreliefcenter.jsp";
</script>