<%-- 
    Document   : addreliefcenter
    Created on : Mar 11, 2018, 6:45:47 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../admin/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../admin/assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Now UI Dashboard by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="../admin/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../admin/assets/css/now-ui-dashboard.css?v=1.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../admin/assets/demo/demo.css" rel="stylesheet" />
</head>
<script type="text/javascript">
function del()
{
if(confirm("Do You Want to Delete this relief center?"))
{
}
else
{
return false;
}
}
</script>

<body class="">
     

    <div class="wrapper ">
        <div class="sidebar" data-color="orange">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text logo-mini">
                    AD
                </a>
                <a href="http://www.creative-tim.com" class="simple-text logo-normal">
                    Admin Dashboard
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                   <li>
                        <a href="../admin/dashboard.jsp">
                            <i class="now-ui-icons design_app"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li>
                        <a href="../admin/members.jsp">
                            <i class="now-ui-icons users_circle-08"></i>
                            <p>Members</p>
                        </a>
                    </li>
                    <li>
                        <a href="../admin/finaidapply.jsp">
                            <i class="now-ui-icons business_bank"></i>
                            <p>Financial Aid Apply</p>
                        </a>
                    </li>
                    <li class="active">
                        <a href="../admin/addreliefcenter.jsp">
                            <i class="now-ui-icons ui-1_simple-add"></i>
                            <p>Add Relief Center</p>
                        </a>
                    </li>
                    <li>
                        <a href="../admin/reliefdonate.jsp">
                            <i class="now-ui-icons ui-1_send"></i>
                            <p>Relief Donate</p>
                        </a>
                    </li>
                    <li>
                        <a href="../admin/support.jsp">
                            <i class="now-ui-icons objects_support-17"></i>
                            <p>Support</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top">
                <div class="container-fluid">
                    <div class="navbar-wrapper">
                        <div class="navbar-toggle">
                            <button type="button" class="navbar-toggler">
                                <span class="navbar-toggler-bar bar1"></span>
                                <span class="navbar-toggler-bar bar2"></span>
                                <span class="navbar-toggler-bar bar3"></span>
                            </button>
                        </div>
                        <a class="navbar-brand" href="#pablo">Table List</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <form>
                            <div class="input-group no-border">
                                <input type="text" value="" class="form-control" placeholder="Search...">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons ui-1_zoom-bold"></i>
                                </span>
                            </div>
                        </form>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <i class="now-ui-icons media-2_sound-wave"></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Stats</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="now-ui-icons location_world"></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Some Actions</span>
                                    </p>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <i class="now-ui-icons users_single-02"></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Account</span>
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="panel-header panel-header-sm">
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title"> Relief Centers List</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>
                                                Sno
                                            </th>
                                            <th>
                                               Center
                                            </th>
                                            <th>
                                               Pincode
                                            </th>
                                            
                                            <th>
                                                Type 
                                            </th>
                                            <th>
                                                Address
                                            </th>
                                            <th>
                                                Items
                                            </th>
                                            <th class="text-right">
                                                Action
                                            </th>
                                        </thead>
                                         <%
                         int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from addreliefcenter");
                                while(rs.next())
                                {
                                             String rid= rs.getString("rid");
                                       %>
                                        <tbody>
                                            <tr>
                                               
                                                <td>
                                                    <%=++count %>
                                                </td>
                                                <td>
                                                    <%= rs.getString("place") %>
                                                </td>
                                                <td>
                                                    <%= rs.getString("pincode") %>
                                                </td>
                                                <td>
                                                    <%= rs.getString("kind") %>
                                                </td>
                                                <td>
                                                    <%=rs.getString("addrwco")%>
                                                </td>
                                                <td>
                                                    <%= rs.getString("items") %>
                                                </td>
                                                <td class="td-actions text-right">
                                                    <form action="addreliefcenter_del.jsp" method="get">
                                                        <input type="hidden" id="reliefcenterid" name="rel_id" value="<%=rid%>">
                                                      <button type="submit" rel="tooltip" onclick="return del()" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove">
                                                        <i class="now-ui-icons ui-1_simple-remove"></i>
                                                      </button>    
                                                    </form>   
                                                </td>
                                            </tr>
                                            <hr>
                                        </tbody>
                                         <% } %>
                                    </table>
                                    <hr>
                                    <div class="stats">
                                              <i class="now-ui-icons loader_refresh spin"></i> Updated 3 minutes ago
                                 </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
            
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="../admin/assets/js/core/jquery.min.js"></script>
<script src="../admin/assets/js/core/popper.min.js"></script>
<script src="../admin/assets/js/core/bootstrap.min.js"></script>
<script src="../admin/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../admin/assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../admin/assets/js/now-ui-dashboard.js?v=1.0.1"></script>
<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
<script src="../admin/assets/demo/demo.js"></script>

<script>
    
</script>

      


</html>


