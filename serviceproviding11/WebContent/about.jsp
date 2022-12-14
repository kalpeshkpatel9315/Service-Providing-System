<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About Us</title>
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
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- OwlCerousel CSS -->
    <link rel="stylesheet" href="vendor/OwlCarousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendor/OwlCarousel/owl.carousel.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Modernize js -->
    <script src="js/modernizr-3.7.1.min.js"></script>

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
                                <a href="index.jsp" class="temp-logo">
                                    <img src="img/main-logo.png" alt="logo" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-7 d-flex justify-content-end position-static">
                            <nav id="dropdown" class="template-main-menu">
                                <ul>
                                   <li>
                                        <a href="index.jsp">Home</a>
                                        <ul class="dropdown-menu-col-1">
                                            <li>
                                                <a href="index.jsp">Home 1</a>
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
                                        <a href="about.jsp">About</a>
                                    </li>
                                    <li>
                                        <a href="#">Services</a>
                                        <ul class="dropdown-menu-col-1">
                                            <li>
                                                <a href="service1.html">Plumbing</a>
                                            </li>
                                            <li>
                                                <a href="service2.html">Cleaning</a>
                                            </li>
                                            <li>
                                                <a href="single-service1.html">Maid</a>
                                            </li>
                                            <li>
                                                <a href="single-service2.html">Electronics</a>
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
                                        <a href="registration.jsp">Registration</a>
                                    </li>
                                    <li>
                                        <a href="login.jsp">Login</a>
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
                            <h1>About Our Website</h1>
                            <ul>
                                <li>
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>About Us</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Inne Page Banner Area End Here -->
        <!-- About Us Area Start Here -->
        <section class="about-wrap-layout6">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-12">
                        <div class="about-box-layout1">
                            <div class="item-subtitle">What We Provide?</div>
                            <h2 class="item-title">We Provide Different Services</h2>
                            <p>We provide different types of services at home. These services 
                            	include cleaning, plumbing, electronics services and the maid
                            	services as well.<!--  Pimply dummy text of the printing 
                            	and typesetting industry areatorem Ipsum 
                                has been the industry's standard dummy text ever since the 1500s, when an 
                                unknown printer took a galley of type and scrambled it to make a type 
                                specimen book. It has survived not only five centuries, but also the 
                                leap into electronic typesetting, remaining essentially unchanged. It was 
                                popularised in the 1960s with the release of Letraset sheets containpsumprinter 
                                took. --></p>
                            <p>The main purpose of this website is to make the user's life easier
                            	by saving their time since they have to go outside to get these 
                            	services.<!-- Ptandard dummy text ever since the 1500s, when an unknown printer took a galley 
                                of type and scrambled it to make a type specimen book. It has survived not only 
                                five centuries. --></p>
                            <div class="action-area">
                                <div class="media">
                                    <div class="item-icon">
                                        <i class="flaticon-call-answer"></i>
                                    </div>
                                    <div class="media-body space-md">
                                        <div class="action-title">Our Contact</div>
                                        <div class="item-number">+91- 9265963218</div>
                                        <div class="item-number">+91- 7096111593</div>
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-12">
                        <div class="about-box-layout2">
                            <div class="item-img">
                                <div class="main-img">
                                    <img src="img/about/a1.jpg" alt="about">
                                </div>
                                <div class="sub-img">
                                    <img src="img/about/a2.jpg" alt="about">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About Us Area End Here -->
        <!-- Call To Action Area Start Here -->
        <!-- <section class="action-wrap-layout3">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-xl-flex align-items-center">
                        <div class="action-box-layout3">
                            <div class="item-content">
                                <h2 class="item-title">Need Any Plubmber Services? Call Us : +123-9666 1985</h2>
                            </div>
                            <div class="item-btn">
                                <a href="#" class="ghost-btn-lg-2 text-textprimary">Check Schedules<i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!-- Call To Action Area End Here -->
        <!-- Why Choose Us Area Start Here -->
        <section class="why-choose-wrap-layout2">
            <div class="container">
                <div class="row gutters-40">
                    <div class="col-lg-6">
                        <div class="why-choose-box-layout3">
                            <div class="item-img">
                                <img src="img/figure/choose.jpg" alt="Why choose">
                                <div class="item-icon">
                                    <a class="play-btn popup-youtube" href="https://www.youtube.com/watch?v=vlEo1u1nB8k">
                                        <i class="flaticon-play-arrow"></i>
                                    </a>
                                </div>
                                <div class="experience-text">
                                    <div class="years">Best</div>
                                    <div class="text">
                                        <span>Quality</span>
                                        <span>Services</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="why-choose-box-layout3">
                            <div class="item-content">
                                <h2 class="item-title">Your Neighborhood Servicemen. The best choice for plumbing,cleaning,maid and electronics services in Town.</h2>
                                
                                
                                <!-- <p>Printer took a galley of type and scrambled it to make a type specimen book Iitter 
                                    hasser are survived notterty only five centuries, but also electronict only.Printer 
                                    took a galley of type andtype specimen book.Printer took a galley of type andey 
                                    scrambled it to make a type specimen bookItter hasser are survived notterty only 
                                    five centuries, but also electronict only.Printer took a galley of type andt aretype 
                                    specimen boo make a type specimen bookItter hasser are survived notterty only 
                                    five centuries, but also electronicte.five centuries, but also electronict only.Printer 
                                    took a galley of type andtype specimen book.</p> -->
                                <div class="item-brand">
                                    <!-- <a href="#"><img src="img/brand/brand5.png" alt="brnad"></a> -->
                                    <!-- <a href="#"><img src="img/brand/brand6.png" alt="brnad"></a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Why Choose Us Area End Here -->
        <!-- Brand Area Start Here -->
        <!-- <section class="pd-y-80">
            <div class="container">
                <div class="rc-carousel nav-control-layout2" data-loop="true" data-items="10" data-margin="30"
                data-autoplay="false" data-autoplay-timeout="3000" data-smart-speed="1000" data-dots="false"
                data-nav="true" data-nav-speed="false" data-r-x-small="1" data-r-x-small-nav="true"
                data-r-x-small-dots="false" data-r-x-medium="2" data-r-x-medium-nav="true"
                data-r-x-medium-dots="false" data-r-small="3" data-r-small-nav="true"
                data-r-small-dots="false" data-r-medium="3" data-r-medium-nav="true"
                data-r-medium-dots="false" data-r-large="4" data-r-large-nav="true"
                data-r-large-dots="false" data-r-extra-large="4" data-r-extra-large-nav="true"
                data-r-extra-large-dots="false">
                    <div class="brand-box-layout2">
                        <div class="item-img">
                            <img src="img/brand/brand1.png" alt="Client">
                            
                             <img src="img/brand/plumbing.jpg" alt="Client">
                        </div>
                    </div>
                    <div class="brand-box-layout2">
                        <div class="item-img">
                            <img src="img/brand/maid.jpg" alt="Client">
                        </div>
                    </div>
                    <div class="brand-box-layout2">
                        <div class="item-img">
                            <img src="img/brand/cleaning.jpg" alt="Client">
                        </div>
                    </div>
                    <div class="brand-box-layout2">
                        <div class="item-img">
                            <img src="img/brand/electrical.jpg" alt="Client">
                        </div>
                    </div>
                </div>
            </div>
        </section>
         --><!-- Brand Area End Here -->
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
        </footer>
         --><!-- Footer Area End Here -->
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
    <!-- Magnific Popup js -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <!-- OwlCerousel js -->
    <script src="vendor/OwlCarousel/owl.carousel.min.js"></script>
    <!-- Main js -->
    <script src="js/main.js"></script>

</body>


</html>