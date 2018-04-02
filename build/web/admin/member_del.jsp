<%@ page import="java.sql.*;" %>
<%
     String mid=request.getParameter("mem_id");
    
    
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login", "root","root");
     PreparedStatement ps = con.prepareStatement("delete from members where id = '"+mid+ "'");
                ps.executeUpdate();
                con.close();
                ps.close();
     
%>
<script>
    window.location.href="members.jsp";
</script>