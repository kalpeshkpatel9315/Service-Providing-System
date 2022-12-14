<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Review</title>
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
</head>
<body class="sticky-header">
	<%@ include file="header.jsp" %>
    <a href="#wrapper" data-type="section-switch" class="scrollup">
        <i class="fas fa-angle-double-up"></i>
    </a>
    <!-- ScrollUp End Here -->
    <div id="wrapper" class="wrapper">
        <!-- Add your site or application content here -->
        <!-- Inne Page Banner Area Start Here -->
        <section class="inner-page-banner bg-common" data-bg-image="img/figure/inner-banner.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumbs-area">
                            <h1>Customer Reviews</h1>
                            <ul>
                                <li>
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>Reviews</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Inne Page Banner Area End Here -->
        <!-- Team Area Start Here -->
        <section class="inner-page-padding2">
            <div class="container">
                <div class="row">
                <s:forEach var="vrcu" items="${vrcu}">
                    <div class="col-lg-4 col-md-6" >
                        <div class="testimonial-box-layout2" style="background-color: black";>
                            <div class="item-quote">
                                <img src="img/figure/qoute1.png" alt="quote">
                            </div>
                            <p style="font-size: 20px;"><b>${vrcu.feedback}</b></p>
                            <!-- <div class="item-img">
                                <img src="img/figure/testimonial.jpg" alt="testimonial">
                            </div> -->
                            <div class="item-rating">
                                <ul>
                                	<s:forEach begin="1" end="${ vrcu.rating}">  
                                    <li><i class="fas fa-star"></i></li>
                                    </s:forEach>
                                    <!-- <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li> -->
                                </ul>
                            </div>
                            <h2 class="item-title" style="color:white";>${vrcu.c_name} </h2>
                            <div class="item-subtitle" style="font-size: 20px;">${vrcu.serv_name}</div>
                        </div>
                    </div>
                    </s:forEach>
                    <!-- <div class="col-lg-4 col-md-6">
                        <div class="testimonial-box-layout2">
                            <div class="item-quote">
                                <img src="img/figure/qoute1.png" alt="quote">
                            </div>
                            <p>Printer took a galley offer type andscram
                                aebled make type specimen arebook 
                                of type and scrambled itterfacte 
                                make a type spen book</p>
                            <div class="item-img">
                                <img src="img/figure/testimonial1.jpg" alt="testimonial">
                            </div>
                            <div class="item-rating">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>
                            </div>
                            <h3 class="item-title">Robert Smith</h3>
                            <div class="item-subtitle">Designer</div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="testimonial-box-layout2">
                            <div class="item-quote">
                                <img src="img/figure/qoute1.png" alt="quote">
                            </div>
                            <p>Printer took a galley offer type andscram
                                aebled make type specimen arebook 
                                of type and scrambled itterfacte 
                                make a type spen book</p>
                            <div class="item-img">
                                <img src="img/figure/testimonial2.jpg" alt="testimonial">
                            </div>
                            <div class="item-rating">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>
                            </div>
                            <h3 class="item-title">Robert Smith</h3>
                            <div class="item-subtitle">Designer</div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="testimonial-box-layout2">
                            <div class="item-quote">
                                <img src="img/figure/qoute1.png" alt="quote">
                            </div>
                            <p>Printer took a galley offer type andscram
                                aebled make type specimen arebook 
                                of type and scrambled itterfacte 
                                make a type spen book</p>
                            <div class="item-img">
                                <img src="img/figure/testimonial3.jpg" alt="testimonial">
                            </div>
                            <div class="item-rating">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>
                            </div>
                            <h3 class="item-title">Robert Smith</h3>
                            <div class="item-subtitle">Designer</div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="testimonial-box-layout2">
                            <div class="item-quote">
                                <img src="img/figure/qoute1.png" alt="quote">
                            </div>
                            <p>Printer took a galley offer type andscram
                                aebled make type specimen arebook 
                                of type and scrambled itterfacte 
                                make a type spen book</p>
                            <div class="item-img">
                                <img src="img/figure/testimonial4.jpg" alt="testimonial">
                            </div>
                            <div class="item-rating">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>
                            </div>
                            <h3 class="item-title">Robert Smith</h3>
                            <div class="item-subtitle">Designer</div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="testimonial-box-layout2">
                            <div class="item-quote">
                                <img src="img/figure/qoute1.png" alt="quote">
                            </div>
                            <p>Printer took a galley offer type andscram
                                aebled make type specimen arebook 
                                of type and scrambled itterfacte 
                                make a type spen book</p>
                            <div class="item-img">
                                <img src="img/figure/testimonial5.jpg" alt="testimonial">
                            </div>
                            <div class="item-rating">
                                <ul>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                    <li><i class="fas fa-star"></i></li>
                                </ul>
                            </div>
                            <h3 class="item-title">Robert Smith</h3>
                            <div class="item-subtitle">Designer</div>
                        </div>
                    </div> -->
                </div>
            </div>
        </section>
        <!-- Team Area End Here -->
        
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
<%@ include file="footer.jsp" %>
</body>

</html>