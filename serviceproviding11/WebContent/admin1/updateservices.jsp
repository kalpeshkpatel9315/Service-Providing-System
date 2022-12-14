<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Services</title>
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
<%@ include file="header.jsp" %>
<%@ include file="sidebar.jsp" %>
        
        
            <!-- START CONTENT -->
            <section id="main-content" class=" ">
                <section class="wrapper main-wrapper" style=''>

        
                    <div class="clearfix"></div>
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">Update Service</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>
                                    <i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
                                    <i class="box_close fa fa-times"></i>
                                </div>
                            </header>
                            <div class="content-body">
                                <div class="row">
                                ${msg }
                                    <form action="ServicesController" method="post">
                                        <div class="col-lg-8 col-md-8 col-sm-9 col-xs-12">

                                            <div class="form-group">
                                                <label class="form-label" for="field-1">Update Service</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="${editservices.serv_name }" class="form-control" id="field-1" name="serv_name">
                                                		<input type="hidden" name="serv_id" value="${editservices.serv_id }" readonly="readonly">
                                                </div>
                                            </div>


                                            <!-- <div class="form-group">
                                                <label class="form-label" for="field-1">Product Name</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-1">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="form-label" for="field-5">Date Created</label>
                                                <span class="desc">e.g. "04/03/2015"</span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control datepicker" data-format="mm/dd/yyyy" value="">
                                                </div>
                                            </div>
 -->
                                           
                                            <div class="form-group">
                                                <label class="form-label" for="field-1">Service Image</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="file" value="${editservices.image }" class="form-control" id="field-5" name="image" >
                                                </div>
                                            </div>

                                           
                                            <!-- <div class="form-group">
                                                <label class="form-label" for="field-1">Product Price</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-1">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="form-label" for="field-1">Discount</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-1">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="form-label" for="field-1">Quantity</label>
                                                <span class="desc"></span>
                                                <div class="controls">
                                                    <input type="text" value="" class="form-control" id="field-1">
                                                </div>
                                            </div>
 -->
                                            <div class="col-lg-8 col-md-8 col-sm-9 col-xs-12 padding-bottom-30">
                                                <div class="text-left">
                                                    <button type="submit" class="btn btn-primary" name="action" value="Update">Update</button>
                                                    <button type="reset" class="btn">Cancel</button>
                                                </div>
                                            </div>
                                    </div>
                                    </form>
                                </div>


                            </div>
                        </section></div>



                </section>
            </section>
            <!-- END CONTENT -->
        
        
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