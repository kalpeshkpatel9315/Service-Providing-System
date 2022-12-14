<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>Add User</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />

        <link rel="shortcut icon" href="<%= application.getContextPath() %>/assets/images/favicon.png" type="image/x-icon" />    <!-- Favicon -->
        <link rel="apple-touch-icon-precomposed" href="<%= application.getContextPath() %>/assets/images/apple-touch-icon-57-precomposed.png">	<!-- For iPhone -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%= application.getContextPath() %>/assets/images/apple-touch-icon-114-precomposed.png">    <!-- For iPhone 4 Retina display -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%= application.getContextPath() %>/assets/images/apple-touch-icon-72-precomposed.png">    <!-- For iPad -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%= application.getContextPath() %>/assets/images/apple-touch-icon-144-precomposed.png">    <!-- For iPad Retina display -->




        <!-- CORE CSS FRAMEWORK - START -->
        <link href="<%= application.getContextPath() %>/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<%= application.getContextPath() %>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/assets/plugins/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
        <!-- CORE CSS FRAMEWORK - END -->

        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <link href="<%= application.getContextPath() %>/assets/plugins/datepicker/css/datepicker.css" rel="stylesheet" type="text/css" media="screen"/>        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 


        <!-- CORE CSS TEMPLATE - START -->
        <link href="<%= application.getContextPath() %>/assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="<%= application.getContextPath() %>/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
        <!-- CORE CSS TEMPLATE - END -->


<meta charset="ISO-8859-1">
<title>Add User</title>
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
                                <h1 class="title">Add User</h1>                            
                            </div>

                            <div class="pull-right hidden-xs">
                                <ol class="breadcrumb">
                                    <li>
                                       Home
                                    </li>
                                    <li>
                                        Users
                                    </li>
                                    <li class="active">
                                        <strong>Add User</strong>
                                    </li>
                                </ol>
                            </div>

                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">User Account Info</h2>
                                <h3 class="title pull-left">${msg}</h3>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>
                                    <i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
                                    <i class="box_close fa fa-times"></i>
                                </div>
                            </header>
                            <div class="content-body">
                                <div class="row">
                                    <form method="post" action="../AddUser">
                                        <div class="col-lg-8 col-md-8 col-sm-9 col-xs-12">

								<!-- 			<label for="course">user type:</label>
								<div class="form-select">
								<button type=submit value="Customer" name="action">Customer</button>
								<button type=submit value="Service Provider" name="action">Service Provider</button>
                                <select  name="u_type" id="course" >
                                	<button type=submit value="customer"></button>
                                     <option value="Customer">customer</option>
                                    <option value="Service Provider">service provider</option>
                                     
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
								</div>
 -->								
										  
										  
										   <div class="form-group">
										   
                                                <label class="form-label" for="field-1">F Name</label>
												
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-3" name="f_name">
                                                </div>
												     <label class="form-label" for="field-1">L Name</label>
												
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-3" name="l_name">
                                                </div>
                                           
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="field-1">Email</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-3" name="e_mail">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="form-label" for="field-2">Phone</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-2"  name="p_no">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="field-2">Password</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="password" value="" class="form-control" id="field-2" name="pass">
                                                </div>
                                            </div>
                                            <!-- <div class="form-group">
                                                <label class="form-label" for="field-2">Confirm Password</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="password"  value="" class="form-control" id="field-21">
                                                </div>
                                            </div>
 -->
                                            <div class="form-group">
                                                <label class="form-label" for="field-6">Address</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <textarea class="form-control autogrow" cols="5" id="field-6" name="address"></textarea>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-lg-8 col-md-8 col-sm-9 col-xs-12 padding-bottom-30">
                                            <div class="text-left">
                                                <button type="submit" class="btn btn-primary" name="action" value="adduser">Save</button>
                                                <button type="button" class="btn">Cancel</button>
                                            </div>
                                        </div>
                                    </form>
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
        <script src="assets/js/jquery-1.11.2.min.js" type="text/javascript"></script> 
        <script src="assets/js/jquery.easing.min.js" type="text/javascript"></script> 
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
        <script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>  
        <script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js" type="text/javascript"></script> 
        <script src="assets/plugins/viewport/viewportchecker.js" type="text/javascript"></script>  
        <!-- CORE JS FRAMEWORK - END --> 


        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <script src="assets/plugins/datepicker/js/datepicker.js" type="text/javascript"></script> <script src="assets/plugins/autosize/autosize.min.js" type="text/javascript"></script><script src="assets/plugins/inputmask/min/jquery.inputmask.bundle.min.js" type="text/javascript"></script><!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 


        <!-- CORE TEMPLATE JS - START --> 
        <script src="assets/js/scripts.js" type="text/javascript"></script> 
        <!-- END CORE TEMPLATE JS - END --> 

        <!-- Sidebar Graph - START --> 
        <script src="assets/plugins/sparkline-chart/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="assets/js/chart-sparkline.js" type="text/javascript"></script>
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