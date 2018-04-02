<%-- 
    Document   : adminlogin
    Created on : Mar 11, 2018, 9:58:37 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Material Login Form</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/style.css">
</head>

<body>

  
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Admin Login</h1>
</div>
<div class="rerun"></div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form method="post" action="adminlogin_validate.jsp">
      <div class="input-container">
        <input type="text" id="#label1" name="uname" required="required"/>
        <label for="#label1">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="#label2" name="pass" required="required"/>
        <label for="#label2">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
          <button type="submit">Go</button>
      </div>
    </form>
  </div>
</div>
 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
