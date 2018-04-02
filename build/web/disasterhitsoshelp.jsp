<%-- 
    Document   : disasterhitsoshelp
    Created on : Jan 22, 2018, 6:02:06 PM
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
    <%
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from addreliefcenter");
        %>

<div class="wrapper">
    <div class="sidebar" data-color="orange" data-image="assets/img/sidebar-3.jpg">

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
                <li class="active">
                    <a href="#">
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
                    
                    <a class="navbar-brand" href="#">Disaster Hit SOS Help</a>
                   
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
                    <div class="row ">
                        <div class="card col-md-3 col-md-offset-2"  style="height: 250px">
                            <div class="card-body"><br>
                            <h5 class="card-title">Add Relief Center</h5>
                            <h6 class="card-subtitle mb-2 text-muted">adding a nearby relief center</h6>
                            <p class="card-text"><br>please click the link below to add a relief shelter.By doing this you could help a lot of people who are in a very dire need of shelter.<br></p>
                            <a  class="card-link" style="cursor: pointer" data-toggle="modal" data-target="#enter">Add Relief Center</a>     
                          </div>
                        </div>
                        <div class="card col-md-3 col-md-offset-1"  style="height: 250px">
                            <div class="card-body"><br>
                            <h5 class="card-title">Search Relief Center</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Searching for a nearby relief center</h6>
                            <p class="card-text"><br>By choosing this option you can search for a nearby relief centers.<br><br><br> </p>
                            <a style="cursor: pointer;" id="searchall" class="card-link" data-toggle="modal" data-target="#search" >Search Relief Center</a>
                          </div>
                        </div>    
                    </div>
                    <div class="row">
                        <div class="card col-md-3 col-md-offset-2"  style="height: 250px">
                            <div class="card-body"><br>
                            <h5 class="card-title">Donate</h5>
                            <h6 class="card-subtitle mb-2 text-muted">donate for disaster hit people</h6>
                            <p class="card-text"><br>people who lost their houses are in a very need of some money.click this link and help them.<br><br></p>
                            <a style="cursor: pointer;" id="donation" class="card-link" data-toggle="modal" data-target="#donate">Donate</a>
                          </div>
                        </div>
                        <div class="card col-md-3 col-md-offset-1" style="height: 250px">
                            <div class="card-body"><br>
                            <h5 class="card-title">Find Help</h5>
                            <h6 class="card-subtitle mb-2 text-muted">In danger?</h6>
                            <p class="card-text"><br>click here for immediate help support will be provided.<br><br><br></p>
                            <a style="cursor: pointer;" id="helpme" class="card-link" data-toggle="modal" data-target="#help">Find Help</a>
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
                                        
                                        
    <div class="modal fade" id="donate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel3" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="exampleModalLabel3">Donate Us A Bit</h4>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>    
                    <div class="modal-body">
		<form class="col s12" method="post" action="reliefdonate.jsp">
					<div class="form-group">
						<div class="form-inline">
                                                    <label for="first_name" class="col-form-label">First Name</label>
                                                    <input id="first_name" name="first_name" type="text" class="form-control" length=15 required>
						
						
                                                    <label for="last_name" class="col-form-label">Last Name</label>
                                                    <input id="last_name" type="text" name="last_name" class="form-control" length=15 required>
						</div>
					</div>
					<div class="form-group">
						
                                                    <label for="amount" class="col-form-label">Money or Things</label>
                                                    <input id="amount" type="text" class="form-control" name="mot" length=20 required>
						
					</div>
					<div class="form-group">
						
                                                    <label for="textarea1" class="col-form-label">Your Address</label>
                                                    <input id="textarea1" type="text" class="form-control" name="address" length=60 required>
					</div>
                                           <input type="submit" class="btn btn-primary btn-fill">
                                </form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-fill" data-dismiss="modal">close</button>
			</div>
                 </div>
            </div>
	</div>

        <div class="modal fade" id="enter" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
			<h4 class="modal-title" id="exampleModalLabel">Add Relief Center</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>    
			<div class="modal-body">
                            <form id="subForm" class="col s12" method="post" action="addrelief.jsp">
				<div class="form-group">
                                    <label for="place" class="col-form-label">Relief Center Name</label>
                                    <input id="place" name="place" type="text" class="form-control" length=50 required>
				</div>
				<div class="form-group">
                                    <label for="pincode" class="col-form-label">Pincode</label>
                                    <input id="pincode" name="pincode" type="text" class="form-control" length=10 required>
				</div>
				<div class="form-group">
                                    <label for="kind">Type</label>
                                    <select id="kind" name="kind" class=" btn dropdown-toggle form-control">
                                        <option class="dropdown-item">Select</option>
                                        <option class="dropdown-item">Self</option>
                                        <option class="dropdown-item">Government</option>
                                    </select>
				</div>
				<div class="form-group">
                                    <label for="address" class="col-form-label">Center Address with Contact Number</label>
				    <input id="address" type="text" class="form-control" name="addrwco" length=50 required>
                                </div>
				<div class="form-group">
                                    <label for="amount" class="col-form-label">Items Available</label>
                                    <input id="amount" type="text" class="form-control" name="items" length=50 required>
				</div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">submit</button>
				</div>
                            </form>
                        </div>
                
                <div class="modal-footer">
			<button type="button" class="btn btn-disaled btn-fill" data-dismiss="modal">close</button>
                </div>
        </div>
    </div>
        </div>

    <div class="modal fade" id="help" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="exampleModalLabel2">Need Help, but No Internet?</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <h5 class="black-text">SAVE this number to SECURE your Future!</h5>
			<h5 class="indigo-text"><i class="material-icons left">&#xE0B0;</i> +91-9711077372 </h5>
			<h5 class="blue-text">S.M.S on this number to find RELIEF Centers and help will reach your address ASAP...</h5>
			<h5 class="cyan-text">S.M.S, RELIEF <i>&lt;your Pincode&gt;</i> <i>&lt;your address&gt;</i></h5>
			<h5 class="teal-text">Example: <b>RELIEF 248001 39/11 Canal Road, Jakhan</b></h5>
			
                    </div>
		<div class="modal-footer">
			<button type="button"class="btn btn-default btn-fill" data-dismiss="modal">Close</button>
		</div>
              </div>      
	</div>
    </div>
                                        
        <div class="modal fade" id="search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel4" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
			<h4 class="modal-title" id="exampleModalLabel4">Relief Centers</h4>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                        <div class="modal-body">
                            <%
                                while(rs.next())
                                {
                            %>
                            <ol class="list-unstyled">
                                <li class="collection-item avatar">
                                    <h3 style="text-align: center; margin-top: 5px;" class="circle"></h3>
                                    <span class="title"><b>Center Name:</b><%= rs.getString("place") %></span>
				    <p><b>Address:</b><%= rs.getString("addrwco") %></p>
                                    <p><b>Pin code:</b><%= rs.getString("pincode") %></p>
                                    <p><b>type:</b><%= rs.getString("kind") %></p>
				    <p><b>Facilities Available:</b><%= rs.getString("items") %></p>
                                    <hr>
                                </li>
                            </ol>   
                                <% }%>
                    </div>
                
		    <div class="modal-footer">
                        <button  type="button" class="btn btn-default btn-fill" data-dismiss="modal">Close</button>
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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNJ6qdu2y6NVQ89UcPpOqrNOtQw2HNPIo"></script>

    <!-- Light Bootstrap Table Core javascript and methods -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	

	<script type="text/javascript">
    	$(document).ready(function(){

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "This page helps you in identifying nearby places for the displayed services."
                
            },{
                type: 'warning',
                timer: 4000
                
            });
                
    	});
	</script>
        
 
    
    
    
    
</html>
