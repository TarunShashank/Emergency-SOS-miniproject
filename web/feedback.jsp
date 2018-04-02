<%@page import="java.sql.*"%>
<%
   String feedback=request.getParameter("feedback");
   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into support(feedback) values('"+feedback+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("Feedback sent, thank you! ");
           window.location.href="supportmywork.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("sorry feedback not sent, try again later");
           window.location.href="supportmywork.jsp";
           </script>
           <%

   }
%>