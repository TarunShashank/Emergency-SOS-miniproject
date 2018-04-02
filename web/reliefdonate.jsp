<%@page import="java.sql.*"%>
<%
   String first_name=request.getParameter("first_name");
   String last_name=request.getParameter("last_name");
   String mot=request.getParameter("mot");
   String address=request.getParameter("address");
   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into reliefdonate(first_name,last_name,mot,address) values('"+first_name+"','"+last_name+"','"+mot+"','"+address+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("You have successfully donated");
           window.location.href="disasterhitsoshelp.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="disasterhitsoshelp.jsp";
           </script>
           <%

   }
%>