<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  border-collapse: collapse;
  width: 50%;
  
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>

<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>vieworder</title>
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
        <!-- Header Area End Here -->
        <!-- Inne Page Banner Area Start Here -->
        <section class="inner-page-banner bg-common" data-bg-image="img/figure/inner-banner.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumbs-area">
                            <h1>Your Order</h1>
                            <ul>
                                <li>
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>Your Order</li>
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
        <!--         <div class="row">
         -->             
                    <!-- <div class="service-box-layout4"> -->
                        <!-- <div class="media media-none--md"> -->
                            <!-- <div class="item-img"> -->
                               <h2>VIEW ORDER</h2>
                                <table>
                                <tr>
                                <th>Address</th>
                                <th>O_Date</th>
                                <th>O_Time</th>
                                <th>Status</th>
                                <th>Serv_subname</th>
                                <th>Cancel Order</th>
                                
                                </tr>
                                <s:forEach var="vieworder" items="${vieworder}">
                                <tr>
                                <td>${vieworder.address}</td>
                                <td>${vieworder.o_date}</td>
                                <td>${vieworder.o_time}</td>
                                <td>${vieworder.status}</td>
                                <td>${vieworder.serv_subname}</td>
                                <td><a href="OrderController?action=deletecustomerorder&o_id=${vieworder.o_id}">Cancel</a></td>
                                <%-- <td><a href="OrderController?action=updatecustomerorder&o_id=${vieworder.o_id}">Update</a></td> --%>
                                
                                </tr>
                                </s:forEach>
                                </table>
                                <%-- <img src="./Serviceimages/${user1.serv_img}" alt="service"> --%>
                            <!-- </div> -->
                            <%-- <div class="media-body space-lg">
                                <h2 class="item-title"><a href="cooking.jsp">${user1.serv_subname }</a></h2>
                                <p>${user1.serv_detail}</p>
                                <a href="ServicesDetailsController?action=seedetails&serv_det_id=${user1.serv_det_id }" class="ghost-btn-lg text-mediumdark border-accent">See Details<i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                             --%><!-- ServicesDetailsController?action=showserv&serv_id=${user1.serv_det_id } -->
                <!--         </div>
                    </div>
                 -->    <%-- </s:forEach> --%>
                   
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