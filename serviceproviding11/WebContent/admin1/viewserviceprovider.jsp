<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>View Serviceprovider</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />

        <link rel="shortcut icon" href="<%= application.getContextPath() %>/admin1/assets/images/favicon.png" type="image/x-icon" />    <!-- Favicon -->
        <link rel="apple-touch-icon-precomposed" href="<%= application.getContextPath() %>/admin1/assets/images/apple-touch-icon-57-precomposed.png">	<!-- For iPhone -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%= application.getContextPath() %>/admin1/assets/images/apple-touch-icon-114-precomposed.png">    <!-- For iPhone 4 Retina display -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%= application.getContextPath() %>/admin1/assets/images/apple-touch-icon-72-precomposed.png">    <!-- For iPad -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%= application.getContextPath() %>/admin1/assets/images/apple-touch-icon-144-precomposed.png">    <!-- For iPad Retina display -->




        <!-- CORE CSS FRAMEWORK - START -->
        <link href="<%= application.getContextPath() %>/admin1/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<%= application.getContextPath() %>/admin1/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/admin1/assets/plugins/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/admin1/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/admin1/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/admin1/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
        <!-- CORE CSS FRAMEWORK - END -->

        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <link href="<%= application.getContextPath() %>/admin1/assets/plugins/datatables/css/jquery.dataTables.css" rel="stylesheet" type="text/css" media="screen"/><link href="assets/plugins/datatables/extensions/TableTools/css/dataTables.tableTools.min.css" rel="stylesheet" type="text/css" media="screen"/><link href="assets/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet" type="text/css" media="screen"/><link href="assets/plugins/datatables/extensions/Responsive/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet" type="text/css" media="screen"/>        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 


        <!-- CORE CSS TEMPLATE - START -->
        <link href="<%= application.getContextPath() %>/admin1/assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %><%= application.getContextPath() %>/admin1/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
        <!-- CORE CSS TEMPLATE - END -->

</head>
<body class=" ">
<%@include file="header.jsp" %>
    <%@include  file="sidebar.jsp"%>
    
                      <!-- START CONTAINER -->
        <div class="page-container row-fluid">

            <!-- START CONTENT -->
            <section id="main-content" class=" ">
                <section class="wrapper main-wrapper" style=''>

                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                        <div class="page-title">

                            <div class="pull-left">
                                <h1 class="title">Users</h1>                            </div>

                            <div class="pull-right hidden-xs">
                                <ol class="breadcrumb">
                                    <li>
                                        Home
                                    </li>
                                    <li>
                                        Users
                                    </li>
                                    <li class="active">
                                        <strong>Customer</strong>
                                    </li>
                                </ol>
                            </div>

                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-12">
                        <section class="box ">
                            <header class="panel_header" style="width: 1662px;">
                                <!-- <h2 class="title pull-left"> <a href="../ViewUser?action=showdata">Customer</a></h2> -->
                                <h2 class="title pull-left"> <a href="viewserviceprovider.jsp"></a>ServiceProvider</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>
                                    <i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
                                    <i class="box_close fa fa-times"></i>
                                </div>
                            </header>
                            <div class="content-body" style="width: 1662px;">    <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">



                                        <!-- ********************************************** -->


                                        <table id="example" class="display table table-hover table-condensed">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>FName</th>
                                                    <th>LName</th>
                                                    <th>Phone</th>
                                                    <th>Email</th>
                                                    <th>Address</th>
                                                    <th>Service</th>
                                                    <th>A/c No</th>
                                                    <th>s_img</th>
                                                    <th>a_img</th>
                                                    <th>Delete</th>
                                                    <th>Update</th>    
                                                </tr>
                                            </thead>
												
                                          <!--   <tbody>
                                         </tbody>
                                        </table>
                                        **********************************************
										<table> -->
										<s:forEach var="serv" items="${serv}">
                                                <tr>
                                                	 <td>${serv.uid}</td> 
                                                    <td>${serv.f_name }</td>
                                                    <td>${serv.l_name}</td>
                                                    <td>${serv.e_mail }</td>
                                                    <td>${serv.p_no }</td>
                                                    <td>${serv.address }</td>
                                                    <td>${serv.service }</td>
                                                    <td>${serv.a_no }</td>
                                                    <td>${serv.s_img }</td>
                                                    <td>${serv.a_img }</td>
                                                      <td><a href="ViewUser?action=deletedata1&servuid=${serv.uid}">Delete</a></td>
                                                    <td><a href="ViewUser?action=updatedata1&servuid=${serv.uid}">Update</a></td>
                                                  
                                                </tr>
                                             </s:forEach>
										
										
										</table>						



                                    </div>
                                </div>
                            </div>
                        </section></div>
                </section>
            </section>
            <!-- END CONTENT -->
            

                </div>
        <!-- END CONTAINER -->
        <!-- LOAD FILES AT PAGE END FOR FASTER LOADING -->


        <!-- CORE JS FRAMEWORK - START --> 
        <script src="<%= application.getContextPath() %>/admin1/assets/js/jquery-1.11.2.min.js" type="text/javascript"></script> 
        <script src="<%= application.getContextPath() %>/admin1/assets/js/jquery.easing.min.js" type="text/javascript"></script> 
        <script src="<%= application.getContextPath() %>/admin1/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
        <script src="<%= application.getContextPath() %>/admin1/assets/plugins/pace/pace.min.js" type="text/javascript"></script>  
        <script src="<%= application.getContextPath() %>/admin1/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js" type="text/javascript"></script> 
        <script src="<%= application.getContextPath() %>/admin1/assets/plugins/viewport/viewportchecker.js" type="text/javascript"></script>  
        <!-- CORE JS FRAMEWORK - END --> 


        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <script src="<%= application.getContextPath() %>/admin1/assets/plugins/datatables/js/jquery.dataTables.min.js" type="text/javascript"></script><script src="assets/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js" type="text/javascript"></script><script src="assets/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js" type="text/javascript"></script><script src="assets/plugins/datatables/extensions/Responsive/bootstrap/3/dataTables.bootstrap.js" type="text/javascript"></script><!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 


        <!-- CORE TEMPLATE JS - START --> 
        <script src="<%= application.getContextPath() %>/admin1/assets/js/scripts.js" type="text/javascript"></script> 
        <!-- END CORE TEMPLATE JS - END --> 

        <!-- Sidebar Graph - START --> 
        <script src="<%= application.getContextPath() %>/admin1/assets/plugins/sparkline-chart/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="<%= application.getContextPath() %>/admin1/assets/js/chart-sparkline.js" type="text/javascript"></script>
        <!-- Sidebar Graph - END --> 

        <!-- General section box modal start -->
        <div class="modal" id="section-settings" tabindex="-1" role="dialog" aria-labelledby="ultraModal-Label" aria-hidden="true">
            <div class="modal-dialog animated bounceInDown">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Section Settings</h4>
                    </div>
                    <div class="modal-body">

                        Body goes here...

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                        <button class="btn btn-success" type="button">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal end -->
    </body>

</html>