<%-- 
    Document   : paymentcanceled
    Created on : Mar 7, 2018, 2:37:41 PM
    Author     : tarun
--%>

<%-- 
    Document   : paymentfailed
    Created on : Mar 7, 2018, 2:32:24 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Emergency Scrape</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />
</head>
<body>
    <p>if not redirected click here <a  type="button" href="supportmywork.jsp">OK</a></p>    
    
    <div id="Failed" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body" align="center">
        <p><img src="https://png.icons8.com/office/40/000000/cancel.png"></p>
        <p>
          Payment Canceled
        </p>
        <a  type="button" class="btn  btn-sucess btn-fill btn-round " href="supportmywork.jsp">OK</a>
      </div>
  </div>
</div>
        </div>
</body>
    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2hCyl51oVWrQf1VpepgCsqPkj9qBcsuE"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        
    <!-- Light Bootstrap Table Core javascript and methods -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
    <script>
        $(document).ready(function(){        
       $('#Failed').modal('show');
        $('.modal-overlay').on('click', function() {
             window.location.href="supportmywork.jsp";    
        });
       }); 
     </script>
     
</html>


