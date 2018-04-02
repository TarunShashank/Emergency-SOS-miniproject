<%-- 
    Document   : dashboard
    Created on : Jan 17, 2018, 6:08:19 PM
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

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no' name='viewport' />
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
    <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">

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
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-like"></i>
                        <p>Medicare Services</p>
                    </a>
                </li>
                <li>
                    <a href="bloodbank.jsp">
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
                    
                    <a class="navbar-brand" href="#">Medicare Services</a>
                   
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
                                <li><a href="profile.jsp">profile</a></li>
                                <li><a href="user.html">loan</a></li>
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
                                    
            <form class="form-inline">
                <button id="button1"  class="btn btn-primary btn-fill" onclick="mylocation(); return false;">Get My Location</button>
                <div class="form-group">
                    <label for="gmap_where">Location:</label> 
                    <input id="gmap_where" type="text" name="gmap_where" />
		</div>
                    
		<button id="button2" class="btn btn-primary btn-fill" onclick="findAddress(); return false;">Go To Location</button>
		<div class="form-group">
                    <label for="gmap_keyword">Area (optional):</label> 
                    <input id="gmap_keyword" type="text" name="gmap_keyword" />
		</div>
                
		<div class="form-group" style="display: none;">
                    <label for="gmap_type">Type:</label> 
                    <select id="gmap_type">
			<option value="hospital">hospital</option>
                    </select>
		</div>
                <div class="form-group" >
                          <label for="gmap_radius">Radius</label>
                        <select class=" btn dropdown-toggle" id="gmap_radius" style="margin-left: 10px;">
                            <option class="dropdown-item"  value="500">500m </option>
                            <option class="dropdown-item"  value="1000">1000m</option>
                            <option class="dropdown-item"  value="1500">1500m</option>
                            <option class="dropdown-item"  value="5000">5000m</option>
			</select>
		</div>
		<input type="hidden" id="lat" name="lat" value="17.5003369" /> 
                <input	type="hidden" id="lng" name="lng" value="78.4724265" />
		<div type="button" id="button3" class="btn btn-success btn-fill" onclick="findPlaces(); return false;">Show Hospitals</div>
		<div type="button"  id="button4" class="btn btn-warning btn-fill" onclick="showPlaces(); return false;" data-toggle="modal" data-target="#modal1">List Hospitals</div>
                </form>            
                                </div>
                            </div>
                        </div>
                    </div>
                                       
                <br>
                   
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

                <!--modal -->
                <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-lg" role="document">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <h5 class="modal-title">List of Hospitals</h5>
                                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true" id="exampleModalLongTitle">&times;</span>
                                                  </button>
                                                </div>
                                                <div class="modal-body">
                                                </div>
                                                <div class="modal-footer">
                                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
    
     <!-- Light Bootstrap Table Core javascript and methods -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNJ6qdu2y6NVQ89UcPpOqrNOtQw2HNPIo&libraries=places&"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script src="js/medicarejs.js"></script>
   
    <script type="text/javascript">
    	$(document).ready(function(){

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to <b>Scrape</b>.This page shows locations of hospitals.\n\
                           Scroll down for using services"
                
            },{
                type: 'info',
                timer: 4000
                
            });
                
    	});
	</script>
    
    

    
    
</html>

