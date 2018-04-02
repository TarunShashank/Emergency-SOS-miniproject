<%-- 
    Document   : support my work
    Created on : feb 27, 2018, 4 :25 :30 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-1.jpg" >

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
                <li class="active active-pro">
                    <a href="support my work.jsp">
                        <i class="pe-7s-rocket"></i>
                        <p>Support my Work</p>
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
                    
                    <a class="navbar-brand" href="#">Support developer</a>
                   
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
                                <li class="divider"></li>
                                <li><a href="logout.jsp">Logout</a></li>
                              </ul>
                        </li>
                            <li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
          </nav>
                                                                 
        <div class="content">
            <div class="container-fluid">
                <div class="col-md-8 col-md-offset-2">
                    <div class="card">
                        <div class="header text-center">
                            <h4 class="title">Support this hard working developer </h4>
                            <p class="category">write your opinion about this page.</p>
                        </div>
                        <div class="content">
                             <form action="feedback.jsp" method="post">
                                    <div class="row"> 
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label  for="feedback">Feedback</label>
                                                <textarea rows="6" name="feedback" id="feedback" class="form-control" placeholder="write about how you feel after viewing this website" ></textarea>
                                            </div>
                                        </div>
                                    </div>
                                  <div class="row">
                                      <div class="col-md-4"> 
                                          <div class="form-group">
                                              <button type="submit" class="btn btn-round btn-fill btn-success">submit</button>
                                          </div>
                                      </div>
                                  </div>
                             </form>
                        </div>
                    </div>
                </div>
                 <div class="col-md-8 col-md-offset-2">
                    <div class="card">
                        <form class="form-inline">
                        <div class="header text-center">
                            <h4 class="title">Fund developer</h4>
                            <p class="category">buying him a coffee or some funding as a token of appreciation</p> 
                        </div>
                        <div class="content">                           
                            <div class="text-center">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal">Pay U Money</h4>
                                </div>
                                <div class='pm-button'>
                                    <a href='https://www.payumoney.com/paybypayumoney/#/6E3BC63A5119C667ABEC21C7A6B2350F'>
                                        <img src='https://www.payumoney.com/media/images/payby_payumoney/new_buttons/22.png' />
                                    </a>
                                </div>                                
                            </div>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
                                       
                                           

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

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2hCyl51oVWrQf1VpepgCsqPkj9qBcsuE"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        
    <!-- Light Bootstrap Table Core javascript and methods -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
     
    
</html>
