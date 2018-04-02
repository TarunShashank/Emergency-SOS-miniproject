<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
        <link rel="stylesheet" href="css/stylereg.css">
    </head>
    <body>
       			<% int icount=0;
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/login", "root","root");
                            Statement stmt=con.createStatement();
                              
                             ResultSet rs=stmt.executeQuery("select * from members");
                            while(rs.next())
                            { int nid=rs.getInt("id");
                             %>

        
        <form method="post" action="registration.jsp" class="cform">
                <article class="title">
                        <span>Registrations</span>
                </article>
                <article class="form">
                        <div>First Name</div>
                        <input type="text" name="fname" value="" />
                
                        <div>Last Name</div>
                        <input type="text" name="lname" value="" />
                  
                        <div>Email</div>
                        <input type=email name="email" value="" />
                  
                        <div>User Name</div>
                        <input type="text" name="uname" value="" />
                    
                        <div>Password</div>
                        <input type="password" name="pass" value="" />
                        <input type="hidden" name="mid" value="<%=nid%>" />
                        <br><br>
                    <article class="btn">
                        <input type="submit" value="Submit" />
                     </article>
         
		  <article class="btn">
			<input type="reset" value="Reset" />
     		  </article>
                        <br>
		  
		</article>
			
            	
        </form>
                        <% } %>
        
        <form action="index.jsp" class="cform">
            <article class="form">
                <div>already registered!!</div> 
                    <article class="btn">
                         <input type="submit" value="login here"/>
                    </article>
            </article> 	
        </form>
    </body>
    <script src="js/indexreg.js"></script>
</html>
