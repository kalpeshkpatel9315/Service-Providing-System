<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/logo.jpg">
    <!-- Normalize CSS -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/main.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- MeanMenu CSS -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.min.css">
    <!-- FlatIcon CSS -->
    <link rel="stylesheet" href="font/flaticon.css">
    <!-- Select 2 CSS -->
    <link rel="stylesheet" href="css/select2.min.css">
    <!-- OwlCerousel CSS -->
    <link rel="stylesheet" href="vendor/OwlCarousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendor/OwlCarousel/owl.carousel.min.css">
    <!-- Nivo Slider CSS -->
    <link rel="stylesheet" href="vendor/slider/css/nivo-slider.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Modernize js -->
    <script src="js/modernizr-3.7.1.min.js"></script>


</head>
<body>
<header class="header">
            <div id="header-topbar" class="bg-Primary py-2">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <!-- <div class="col-lg-8">
                            <div class="header-topbar-layout1">
                                <div class="header-top-left">
                                    <ul>
                                        <li><i class="fas fa-map-marker-alt"></i><span>Address:</span> 58/A Newyork City, 1059</li>
                                        <li><i class="far fa-clock"></i><span>Opening Hours:</span> Mon-Fri: 09.00am - 10.00 pm</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 d-flex justify-content-end">
                            <div class="header-topbar-layout1">
                                <div class="header-top-right">
                                    <ul>
                                        <li><i class="fas fa-share-alt"></i>Follow Us:</li>
                                        <li class="social-icon">
                                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                                            <a href="#"><i class="fab fa-twitter"></i></a>
                                            <a href="#"><i class="fab fa-google-plus-g"></i></a>
                                            <a href="#"><i class="fab fa-pinterest"></i></a>
                                            <a href="#"><i class="fas fa-rss"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
            <div id="rt-sticky-placeholder"></div>
            <div id="header-menu" class="header-menu menu-layout1">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-area">
                                <a href="spindex.jsp" class="temp-logo">
                                    <img src="img/logo.jpg" alt="logo" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-7 d-flex justify-content-end position-static">
                            <nav id="dropdown" class="template-main-menu">
                                <ul>
                                   <li>
                                        <a href="spindex.jsp">Home</a>
                                        <!-- <ul class="dropdown-menu-col-1">
                                            <li>
                                                <a href="index.html">Home 1</a>
                                            </li>
                                             <li>
                                                <a href="index2.html">Home 2</a>
                                            </li>
                                            <li>
                                                <a href="index3.html">Home 3</a>
                                            </li>
                                            <li>
                                                <a href="index4.html">Home 4</a>
                                            </li>
                                        </ul> -->
                                    </li>
                                    <!-- <li>
                                        <a href="customerabout.jsp">About</a>
                                    </li> -->
                                    
                                    <!-- <li>
                                        <a href="#">Services</a>
                                        <ul class="dropdown-menu-col-1">
                                            <li>
                                                <a href="customerplumbing.jsp">Services 1Plumbing</a>
                                            </li>
                                            <li>
                                                <a href="customercleaning.jsp">Services 2Cleaning</a>
                                            </li>
                                            <li>
                                                <a href="customermaid.jsp">Service Details 1Maid</a>
                                            </li>
                                            <li>
                                                <a href="customerelectronics.jsp">Service Details 2Electronics</a>
                                            </li>
                                            <li>
                                                <a href="single-service3.html">Service Details 3</a>
                                            </li>
                                        </ul>
                                    </li> --><!-- 
                                     <li>
                                        <a href="customermybookings.jsp">My Bookings</a>
                                    </li> -->
                                    <li>
                                        <a href="OrderController?action=viewordersp&uid=<%=session.getAttribute("u_id")%>">View Order</a>
                                    </li>
                                    
                                    <li>
                                        <a href="ViewUser?action=viewprofileserviceprovider&uid=<%= session.getAttribute("u_id") %>">View Profile</a>
                                    </li>
                                    <li>
                                        <a href="about.jsp">About us</a>
                                    </li>
                                    
                                   <!-- <li>
                                        <a href="registration.jsp">Register</a>
                                    </li> 
                                   <li>
                                        <a href="login.jsp">Login</a>
                                    </li>  -->
                                    
                                        
                                </ul>
                            </nav>
                        </div>
                        
                          <!-- <div class="col-lg-3 d-flex justify-content-end">
                         
                             <div class="header-action-layout1">
                                <ul>
                                    <li class="header-search-icon">
                                        <a href="#header-search" title="Search">
                                            <i class="flaticon-magnifying-glass"></i>
                                        </a>
                                    </li>
                                     <li class="header-btn">
                                        <a href="#" class="item-btn">Get A Quote<i class="fas fa-long-arrow-alt-right"></i></a>
                                    </li> 
                                </ul>
                            </div>
                        </div>   -->
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Area End Here -->
        <!-- jquery-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Pace Preloder js -->
    <script src="js/pace.min.js"></script>
    <!-- MeanMenu js -->
    <script src="js/jquery.meanmenu.min.js"></script> 
    <!-- OwlCerousel js -->
    <script src="vendor/OwlCarousel/owl.carousel.min.js"></script>
    <!-- Select 2 js -->
    <script src="js/select2.min.js"></script>
    <!-- Nivo Slider js -->
    <script src="vendor/slider/js/jquery.nivo.slider.js"></script> 
    <script src="vendor/slider/home.js"></script>
    <!-- Google Map js -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtmXSwv4YmAKtcZyyad9W7D4AC08z0Rb4"></script>
    <!-- Main js -->
    <script src="js/main.js"></script>

</body>
</html>