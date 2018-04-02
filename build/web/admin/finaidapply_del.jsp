<%-- 
    Document   : ddreliefcenter_del
    Created on : Mar 11, 2018, 7:45:11 PM
    Author     : tarun
--%>

<%@ page import="java.sql.*;" %>
<%
     String aid=request.getParameter("apply_id");
    
    
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login", "root","root");
     PreparedStatement ps = con.prepareStatement("delete from finanidapply where aid = '"+aid+ "'");
                ps.executeUpdate();
                con.close();
                ps.close();
     
%>
<script>
    window.location.href="finaidapply.jsp";
</script>