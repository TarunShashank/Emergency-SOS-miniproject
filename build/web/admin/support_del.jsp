<%-- 
    Document   : ddreliefcenter_del
    Created on : Mar 11, 2018, 7:45:11 PM
    Author     : tarun
--%>

<%@ page import="java.sql.*;" %>
<%
     String fid=request.getParameter("feed_id");
    
    
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login", "root","root");
     PreparedStatement ps = con.prepareStatement("delete from support where fid = '"+fid+ "'");
                ps.executeUpdate();
                con.close();
                ps.close();
     
%>
<script>
    window.location.href="support.jsp";
</script>