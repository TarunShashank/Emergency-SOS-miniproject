<%@page import="java.sql.*"%>
<%
   String uname=request.getParameter("username");
   String email=request.getParameter("email");
   String fname=request.getParameter("first_name");
   String lname=request.getParameter("last_name");
   String address=request.getParameter("address");
   String dob=request.getParameter("dob"); 
   String gender=request.getParameter("gender");
   String purpose=request.getParameter("purpose");
   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into finaidapply(username,email,first_name,last_name,address,dob,gender,purpose) values('"+uname+"','"+email+"','"+fname+"','"+lname+"','"+address+"','"+dob+"','"+gender+"','"+purpose+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("You have successfully Added the Financial AID");
           window.location.href="financialaid.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="financialaid.jsp";
           </script>
           <%

   }
%>