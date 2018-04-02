<%-- 
    Document   : bloodbank
    Created on : Jan 22, 2018, 6:01:47 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
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

     <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />
</head>

       
        
<body>

<div class="wrapper">
    <div class="sidebar" data-color="red" data-image="assets/img/bloodside.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href=# class="simple-text">
                    Scrape
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="dashboard.jsp">
                        <i class="pe-7s-like"></i>
                        <p>Medicare Services</p>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-drop"></i>
                        <p>Blood Bank</p>
                    </a>
                </li>
                <li>
                    <a href="financialaid.jsp">
                        <i class="pe-7s-piggy"></i>
                        <p>Financial Aid </p>
                    </a>
                </li>
                <li>
                    <a href="disasterhitsoshelp.jsp">
                        <i class="pe-7s-info"></i>
                        <p>Disaster Hit SOS help</p>
                    </a>
                </li>
                      <li class="active-pro">
                    <a href="supportmywork.jsp">
                        <i class="pe-7s-rocket"></i>
                        <p>Support my work</p>
                    </a>
                </li>       
            </ul>
    	</div>
    </div>

    
    
    
    
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                    <a class="navbar-brand" href="#">Bloodbanks</a>
                   
                </div>
                <div class="collapse navbar-collapse">
                      <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <p>
					<%=session.getAttribute("uname")%>
					<b class="caret"></b>
				    </p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="user.html">profile</a></li>
                                <li><a href="user.html">loan appication update</a></li>
                                <li class="divider"></li>
                                <li><a href="logout.jsp">Logout</a></li>
                              </ul>
                        </li>
                            <li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
          </nav>
                           <div id="map"></div>             
                                        <br>
                <div class="col-md-12">
                <div class="card"  style="padding-left: 15px">
                 <div class="content">
                  <div class="row">
                                        
		<button id="btn1" class="btn btn-primary btn-fill" onclick="mylocation(); return false;">Find Current Location</button>
		<button id="btn2" class="btn btn-success btn-fill" onclick="findBlood(); return false;" style="display:none;">Find Blood Banks</button>
	
	<input type="hidden" id="lat" name="lat" value="30.3164945" /> <input
			type="hidden" id="lng" name="lng" value="78.0321918" />
        
        </div>
                            </div>
                        </div>
                    </div>
        <br><br>
         
        

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="dashboard.jsp">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="http://www.rkinfosystems.in/">
                                Company
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    Made with <img src="https://png.icons8.com/material/24/16a085/hearts.png"> by <a href="https://www.stnsaishashank.com">Tarun Shashank</a>
                </p>
            </div>
        </footer>

    </div>
</div>


</body>


    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>
    
     <!-- Light Bootstrap Table Core javascript and methods -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?query=bloods+banks&key=AIzaSyCNJ6qdu2y6NVQ89UcPpOqrNOtQw2HNPIo&libraries=places&callback=initialize" async defer></script>
     <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    

        <script src="js/bloodbanksjs.js"></script>
        
	<script type="text/javascript">
    	$(document).ready(function(){

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "This page shows locations of hospitals.<br> Scroll down for using services"
            },{
                type: 'danger',
                timer: 4000
                
            });
                
    	});
	</script>
    
       

</html>
