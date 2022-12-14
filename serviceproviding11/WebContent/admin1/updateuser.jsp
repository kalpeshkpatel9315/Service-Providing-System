<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
  <link rel="shortcut icon" href="./admin1/assets/images/favicon.png" type="image/x-icon" />    <!-- Favicon -->
        <link rel="apple-touch-icon-precomposed" href="./admin1/assets/images/apple-touch-icon-57-precomposed.png">	<!-- For iPhone -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="./admin1/assets/images/apple-touch-icon-114-precomposed.png">    <!-- For iPhone 4 Retina display -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="./admin1/assets/images/apple-touch-icon-72-precomposed.png">    <!-- For iPad -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="./admin1/assets/images/apple-touch-icon-144-precomposed.png">    <!-- For iPad Retina display -->




        <!-- CORE CSS FRAMEWORK - START -->
        <link href="./admin1/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="./admin1/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="./admin1/assets/plugins/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="./admin1/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="./admin1/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="./admin1/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
        <!-- CORE CSS FRAMEWORK - END -->

        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <link href="./admin1/assets/plugins/datepicker/css/datepicker.css" rel="stylesheet" type="text/css" media="screen"/>        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 


        <!-- CORE CSS TEMPLATE - START -->
        <link href="./admin1/assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="./admin1/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
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
                                <h1 class="title">UPDATE USER</h1>                            
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
                                        <strong>UPDATE USER</strong>
                                    </li>
                                </ol>
                            </div>

                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">User Edit Info</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>
                                    <i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
                                    <i class="box_close fa fa-times"></i>
                                </div>
                            </header>
                            <div class="content-body">
                                <div class="row">
                                    <form method="post" action="./ViewUser">
                                        <div class="col-lg-8 col-md-8 col-sm-9 col-xs-12">

										
										  
										  
										   <div class="form-group">
										   
                                                <label class="form-label" for="field-1">F Name</label>
												
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="${user1.f_name }" class="form-control" id="field-3" name="f_name">
                                                </div>
												     <label class="form-label" for="field-1">L Name</label>
												
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="${user1.l_name }" class="form-control" id="field-3" name="l_name">
                                                </div>
                                           
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="field-2">Phone</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="${user1.p_no }" class="form-control" id="field-2" data-mask="phone"  placeholder="(999) 999-9999" name="p_no">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="form-label" for="field-1">Email</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="${user1.e_mail }" class="form-control" id="field-3" name="e_mail">
                                                    <input type="hidden" value="${user1.uid }" class="form-control" id="field-3" name="uid">
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
                                                    <textarea class="form-control autogrow" cols="5" id="field-6"  name="address">${user1.address }</textarea>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-lg-8 col-md-8 col-sm-9 col-xs-12 padding-bottom-30">
                                            <div class="text-left">
                                                <button type="submit" value="updatecustomer" name="action" class="btn btn-primary">Save</button>
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
        <script src="./admin1/assets/js/jquery-1.11.2.min.js" type="text/javascript"></script> 
        <script src="./admin1/assets/js/jquery.easing.min.js" type="text/javascript"></script> 
        <script src="./admin1/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
        <script src="./admin1/assets/plugins/pace/pace.min.js" type="text/javascript"></script>  
        <script src="./admin1/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js" type="text/javascript"></script> 
        <script src="./admin1/assets/plugins/viewport/viewportchecker.js" type="text/javascript"></script>  
        <!-- CORE JS FRAMEWORK - END --> 


        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <script src="./admin1/assets/plugins/datepicker/js/datepicker.js" type="text/javascript"></script> <script src="assets/plugins/autosize/autosize.min.js" type="text/javascript"></script><script src="assets/plugins/inputmask/min/jquery.inputmask.bundle.min.js" type="text/javascript"></script><!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 


        <!-- CORE TEMPLATE JS - START --> 
        <script src="./admin1/assets/js/scripts.js" type="text/javascript"></script> 
        <!-- END CORE TEMPLATE JS - END --> 

        <!-- Sidebar Graph - START --> 
        <script src="./admin1/assets/plugins/sparkline-chart/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="./admin1/assets/js/chart-sparkline.js" type="text/javascript"></script>
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