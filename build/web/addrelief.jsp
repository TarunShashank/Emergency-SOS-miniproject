<%@page import="java.sql.*"%>
<%
   String place=request.getParameter("place");
   String pincode=request.getParameter("pincode");
   String kind=request.getParameter("kind");
   String addrwco=request.getParameter("addrwco");
   String items=request.getParameter("items");
   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into addreliefcenter(place,pincode,kind,addrwco,items) values('"+place+"','"+pincode+"','"+kind+"','"+addrwco+"','"+items+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("You have successfully Added a Relief center");
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