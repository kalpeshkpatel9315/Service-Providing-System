<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Fixer | Plumbing</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
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
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Modernize js -->
    <script src="js/modernizr-3.7.1.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="sticky-header">
    <!--[if lte IE 9]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
      <![endif]-->
    <!-- ScrollUp Start Here -->
    <a href="#wrapper" data-type="section-switch" class="scrollup">
        <i class="fas fa-angle-double-up"></i>
    </a>
    <!-- ScrollUp End Here -->
    <div id="wrapper" class="wrapper">
        <!-- Add your site or application content here -->
        <!-- Header Area Start Here -->
        <%@ include file="header.jsp" %>
        <!-- <header class="header">
            <div id="header-topbar" class="bg-Primary py-2">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-lg-8">
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
                        </div>
                    </div>
                </div>
            </div>
            <div id="rt-sticky-placeholder"></div>
            <div id="header-menu" class="header-menu menu-layout1">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-area">
                                <a href="index.html" class="temp-logo">
                                    <img src="img/main-logo.png" alt="logo" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-7 d-flex justify-content-end position-static">
                            <nav id="dropdown" class="template-main-menu">
                                <ul>
                                   <li>
                                        <a href="#">Home</a>
                                        <ul class="dropdown-menu-col-1">
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
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="about.html">About</a>
                                    </li>
                                    <li>
                                        <a href="#">Services</a>
                                        <ul class="dropdown-menu-col-1">
                                            <li>
                                                <a href="service1.html">Services 1</a>
                                            </li>
                                            <li>
                                                <a href="service2.html">Services 2</a>
                                            </li>
                                            <li>
                                                <a href="single-service1.html">Service Details 1</a>
                                            </li>
                                            <li>
                                                <a href="single-service2.html">Service Details 2</a>
                                            </li>
                                            <li>
                                                <a href="single-service3.html">Service Details 3</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Blog</a>
                                        <ul class="dropdown-menu-col-1">
                                            <li>
                                                <a href="blog1.html">Blog 1</a>
                                            </li>
                                            <li>
                                                <a href="blog2.html">Blog 2</a>
                                            </li>
                                            <li>
                                                <a href="single-blog1.html">Blog Details 1</a>
                                            </li>
                                            <li>
                                                <a href="single-blog2.html">Blog Details 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="position-static hide-on-mobile-menu">
                                        <a href="#">Pages</a>
                                        <div class="template-mega-menu">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-3">
                                                        <div class="menu-ctg-title">Pages</div>
                                                        <ul class="sub-menu">
                                                            <li>
                                                                <a href="shop.html">
                                                                    <i class="fas fa-cart-plus"></i>Shop</a>
                                                            </li>
                                                            <li>
                                                                <a href="shop-cart.html">
                                                                    <i class="fas fa-cart-plus"></i>Shop Cart</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-product.html">
                                                                    <i class="fas fa-cart-plus"></i>Product Details</a>
                                                            </li>
                                                            <li>
                                                                <a href="checkout.html">
                                                                    <i class="fas fa-cart-plus"></i>Checkout</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-3">
                                                        <div class="menu-ctg-title">Pages</div>
                                                        <ul class="sub-menu">
                                                            <li>
                                                                <a href="team1.html">
                                                                    <i class="fas fa-user-tie"></i>Team 1</a>
                                                            </li>
                                                            <li>
                                                                <a href="team2.html">
                                                                    <i class="fas fa-user-tie"></i>Team 2</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-team1.html">
                                                                    <i class="fas fa-user-tie"></i>Single Team</a>
                                                            </li>
                                                            <li>
                                                                <a href="about.html">
                                                                    <i class="fas fa-user-tie"></i>About</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-3">
                                                        <div class="menu-ctg-title">Pages</div>
                                                        <ul class="sub-menu">
                                                            <li>
                                                                <a href="blog1.html">
                                                                    <i class="fab fa-blogger-b"></i>Blog 1</a>
                                                            </li>
                                                            <li>
                                                                <a href="blog2.html">
                                                                    <i class="fab fa-blogger-b"></i>Blog 2</a>
                                                            </li>
                                                            <li>
                                                                <a href="gallery.html">
                                                                    <i class="fas fa-camera-retro"></i>Gallery</a>
                                                            </li>
                                                            <li>
                                                                <a href="schedule-form.html">
                                                                    <i class="fas fa-stopwatch"></i>Schedule Form</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-3">
                                                        <div class="menu-ctg-title">Pages</div>
                                                        <ul class="sub-menu">
                                                            <li>
                                                                <a href="reviews.html">
                                                                    <i class="fas fa-quote-right"></i>Customer Reviews</a>
                                                            </li>
                                                            <li>
                                                                <a href="faq.html">
                                                                    <i class="fas fa-question-circle"></i>Faq Page</a>
                                                            </li>
                                                            <li>
                                                                <a href="404.html">
                                                                    <i class="fas fa-exclamation-triangle"></i>404 Error</a>
                                                            </li>
                                                            <li>
                                                                <a href="coming-soon.html">
                                                                    <i class="fas fa-spinner"></i>Coming Soon</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="hide-on-desktop-menu">
                                        <a href="#">Pages</a>
                                        <ul>
                                            <li>
                                                <a href="about.html">About</a>
                                            </li>
                                            <li>
                                                <a href="service1.html">Services</a>
                                            </li>
                                            <li>
                                                <a href="project1.html">Project</a>
                                            </li>
                                            <li>
                                                <a href="404.html">404 Error</a>
                                            </li>
                                            <li>
                                                <a href="contact.html">Contact</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="contact.html">Contact</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-lg-3 d-flex justify-content-end">
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
                        </div>
                    </div>
                </div>
            </div>
        </header> -->
        <!-- Header Area End Here -->
        <!-- Inne Page Banner Area Start Here -->
        <section class="inner-page-banner bg-common" data-bg-image="img/figure/inner-banner.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumbs-area">
                            <h1>Our Services</h1>
                            <ul>
                                <li>
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>Services</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Inne Page Banner Area End Here -->
        <!-- Service Area Start Here -->
        <section class="inner-page-padding">
            <div class="container">
                <div class="row">
                    <!-- <div class="service-box-layout4">
                        <div class="media media-none--md">
                            <div class="item-img">
                                <img src="img/service/service4.jpg" alt="service">
                            </div>
                            <div class="media-body space-lg">
                                <h2 class="item-title"><a href="single-service1.html">Toilet Pipe Cleaning</a></h2>
                                <p>Toilethen an unknown printer took a galley of type and scrambled it to make a
                                type specimen book. Iambled it to make a type specimen book. Iambled it to make 
                                a type specimen book. It haso an unknown printer took a galley of type and 
                                scrambled it to make a type specimen book. It has survived not only five 
                                centuries aelso.</p>
                                <a href="single-service1.html" class="ghost-btn-lg text-mediumdark border-accent">See Details<i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </div> -->
                    <div class="service-box-layout4">
                        <div class="media media-none--md">
                            <div class="item-img">
                                <img src="img/service/service5.jpg" alt="service">
                            </div>
                            <div class="media-body space-lg">
                                <h2 class="item-title"><a href="brokenpiperepair.jsp">Broken Pipe Repair</a></h2>
                                <p>Toilethen an unknown printer took a galley of type and scrambled it to make a
                                    type specimen book. Iambled it to make a type specimen book. Iambled it to make 
                                    a type specimen book. It haso an unknown printer took a galley of type and 
                                    scrambled it to make a type specimen book. It has survived not only five 
                                    centuries aelso.</p>
                                <a href="brokenpiperepair.jsp" class="ghost-btn-lg text-mediumdark border-accent">See Details<i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </div>
                   <!--  <div class="service-box-layout4">
                        <div class="media media-none--md">
                            <div class="item-img">
                                <img src="img/service/service6.jpg" alt="service">
                            </div>
                            <div class="media-body space-lg">
                                <h2 class="item-title"><a href="single-service1.html">Water Pipe Cleaning</a></h2>
                                <p>Toilethen an unknown printer took a galley of type and scrambled it to make a
                                    type specimen book. Iambled it to make a type specimen book. Iambled it to make 
                                    a type specimen book. It haso an unknown printer took a galley of type and 
                                    scrambled it to make a type specimen book. It has survived not only five 
                                    centuries aelso.</p>
                                <a href="single-service1.html" class="ghost-btn-lg text-mediumdark border-accent">See Details<i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </div> -->
                    <div class="service-box-layout4">
                        <div class="media media-none--md">
                            <div class="item-img">
                                <img src="img/service/service7.jpg" alt="service">
                            </div>
                            <div class="media-body space-lg">
                                <h2 class="item-title"><a href="leakagepiperepair.jsp">Leakage Pipe Repair</a></h2>
                                <p>Toilethen an unknown printer took a galley of type and scrambled it to make a
                                    type specimen book. Iambled it to make a type specimen book. Iambled it to make 
                                    a type specimen book. It haso an unknown printer took a galley of type and 
                                    scrambled it to make a type specimen book. It has survived not only five 
                                    centuries aelso.</p>
                                <a href="leakagepiperepair.jsp" class="ghost-btn-lg text-mediumdark border-accent">See Details<i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="service-box-layout4">
                        <div class="media media-none--md">
                            <div class="item-img">
                                <img src="img/service/service8.jpg" alt="service">
                            </div>
                            <div class="media-body space-lg">
                                <h2 class="item-title"><a href="kitcheninspection.jsp">Kitchen Inspection</a></h2>
                                <p>Toilethen an unknown printer took a galley of type and scrambled it to make a
                                    type specimen book. Iambled it to make a type specimen book. Iambled it to make 
                                    a type specimen book. It haso an unknown printer took a galley of type and 
                                    scrambled it to make a type specimen book. It has survived not only five 
                                    centuries aelso.</p>
                                <a href="kitcheninspection.jsp" class="ghost-btn-lg text-mediumdark border-accent">See Details<i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="pagination-layout1 text-center mt-5">
                    <ul>
                        <li><a href="#" class="nav-item active">1</a></li>
                        <li><a href="#" class="nav-item">2</a></li>
                        <li><a href="#" class="nav-item">3</a></li>
                    </ul>
                </div> -->
            </div>
        </section>
        <!-- Service Area End Here -->
        <!-- Footer Area Start Here -->
        <%@ include file="footer.jsp" %>
        <!-- <footer class="footer-wrap-layout2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="footer-box-layout2">
                            <div class="footer-about">
                                <div class="footer-logo">
                                    <a href="index.html"><img src="img/logo-light.png" alt="logo"></a>
                                </div>
                                <p>We always deliver 100% customer are satisfaction and 
                                    absolute quality work without any compromise.</p>
                                <div class="contact-type">
                                    <ul>
                                        <li><i class="fas fa-map-marker-alt"></i>11 Georgian Rd, 58/A Newyork City</li>
                                        <li><i class="fas fa-phone-volume"></i><strong>+123-9666 1985</strong></li>
                                        <li><i class="fas fa-envelope"></i>info@fixer.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="footer-box-layout2 pd-lg-l-60 pd-lg-t-15">
                            <div class="footer-title">
                                <h3>Service Areas</h3>
                            </div>
                            <div class="footer-menu-box">
                                <ul class="footer-menu-list">
                                    <li>
                                        <a href="#">Gas Pipe Repair</a>
                                    </li>
                                    <li>
                                        <a href="#">Pipe Leakage</a>
                                    </li>
                                    <li>
                                        <a href="#">Drain Cleaning</a>
                                    </li>
                                    <li>
                                        <a href="#">Water Heating</a>
                                    </li>
                                    <li>
                                        <a href="#">Residential Plumbing</a>
                                    </li>
                                    <li>
                                        <a href="#">Commercial Plumbing</a>
                                    </li>
                                    <li>
                                        <a href="#">Repairs Plumbing </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="footer-box-layout2 pd-lg-t-15">
                            <div class="footer-title">
                                <h3>Newsletter</h3>
                            </div>
                            <div class="footer-form-box">
                                <p>Get updates &amp; exclusive offers</p>
                                <form class="contact-form-box">
                                    <div class="row">
                                        <div class="col-12 form-group">
                                            <input type="email" placeholder="E-mail Address" class="form-control"
                                                name="name" data-error="Name field is required" required>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="col-12 form-group">
                                            <button type="submit" class="item-btn">Subscribe Now<i
                                                    class="fas fa-long-arrow-alt-right"></i></button>
                                        </div>
                                    </div>
                                    <div class="form-response"></div>
                                </form>
                            </div>
                            <div class="footer-social">
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                    <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
               <div class="copyright">Copyright © 2019 Fixer by <a href="https://www.radiustheme.com/"
                    target="_blank">RadiusTheme.</a> All Rights Reserved.</div>
            </div>
        </footer> -->
        <!-- Footer Area End Here -->
        <!-- Search Box Start Here -->
        <div id="header-search" class="header-search">
            <button type="button" class="close">×</button>
            <form class="header-search-form">
                <input type="search" value="" placeholder="Type here........" />
                <button type="submit" class="search-btn">
                    <i class="flaticon-magnifying-glass"></i>
                </button>
            </form>
        </div>
        <!-- Search Box End Here -->
    </div>
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
    <!-- Main js -->
    <script src="js/main.js"></script>

</body>

</html>