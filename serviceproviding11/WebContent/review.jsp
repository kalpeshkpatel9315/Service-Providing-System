<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Review</title>
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






<link rel="stylesheet" href="assets/css/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/iconfont/material-icons.css">

<link rel="stylesheet" href="assets/css/icofont/css/icofont.css">

<link rel="stylesheet" href="assets/css/page-style.css">

<link rel="stylesheet" href="assets/css/munform-form.css">

</head>
<body class="munform-wrapper">
<%@ include file="header.jsp" %>
<header class="munform-header">
<div class="container">
<div class="row">
<div class="col-lg-12">
<!-- <div class="munform-menu">
<nav class="navbar navbar-expand-lg">
<a class="navbar-brand" href="#">Munform</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"><i class="material-icons">menu</i></span>
</button>
 <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
<ul class="navbar-nav">
<li class="nav-item"><a class="nav-link" href="login.html">login</a></li>
<li class="nav-item"><a class="nav-link" href="payment.html">payment</a></li>
<li class="nav-item"><a class="nav-link" href="reset.html">reset</a></li>
<li class="nav-item"><a class="nav-link" href="create.html">create</a></li>
<li class="nav-item"><a class="nav-link" href="review.html">review</a></li>
 <li class="nav-item"><a class="nav-link" href="contact.html">contact</a></li>
<li class="nav-item"><a class="nav-link" href="newsletter.html">newsletter</a></li>
<li class="nav-item"><a class="nav-link" href="recover.html">recover</a></li>
<li class="nav-item"><a class="nav-link" href="checkout.html">checkout</a></li>
<li class="nav-item"><a class="nav-link" href="search.html">search</a></li>
</ul>
</div>
 </nav>
</div>
 --></div>
</div>
</div>
</header>

<section class="munform-area">

<div class="container">
<div class="row justify-content-center">
<div class="col-lg-6">
<div class="form-area">
<div class="form-title text-center">

<h2>Send Your Review</h2>
</div>
<form method="post" action="Reviewcontroller">
<div class="form-group">
<input type="text" id="" name="c_name" placeholder="Full Name" required>

<i class="material-icons">person</i>
<!-- <label>Full name</label> -->
</div>
<div class="form-group">
<input type="text" id="" name="serv_name" placeholder="Service Name" required>
<i class="material-icons">email</i>
<!-- <label>Email address</label> -->
</div>
<div class="rating-area">
<h6>Your Rating</h6>
<div class="rating rating star">
<div class="rating-wrapper">
<input name="star-rating-2" id="star-rating-5-2" value="5" type="radio">
<label class="icon-star" for="star-rating-5-2"><i class="material-icons">star</i></label>
<input name="star-rating-2" id="star-rating-4-2" value="4" type="radio">
<label class="icon-star" for="star-rating-4-2"><i class="material-icons">star</i></label>
<input name="star-rating-2" id="star-rating-3-2" value="3" checked="checked" type="radio">
<label class="icon-star" for="star-rating-3-2"><i class="material-icons">star</i></label>
<input name="star-rating-2" id="star-rating-2-2" value="2" type="radio">
<label class="icon-star" for="star-rating-2-2"><i class="material-icons">star</i></label>
<input name="star-rating-2" id="star-rating-1-2" value="1" type="radio">
<label class="icon-star" for="star-rating-1-2"><i class="material-icons">star</i></label>
</div>
</div>
</div>
<div class="form-group">
<textarea rows="3" name="feedback" id="" required></textarea>
<label>Feedback</label>
</div>
<div class="form-button">
<button class="form-btn">Post your review</button>
<h3><a href="Reviewcontroller?action=viewreviewcu">View Customer Review</a></h3>
</div>
</form>
</div>
</div>
</div>
</div>
</section>

<script src="assets/js/vendor/jquery-1.12.4.min.js" type="346cd6369cb5f80aa6189064-text/javascript"></script>

<script src="assets/css/bootstrap/js/bootstrap.min.js" type="346cd6369cb5f80aa6189064-text/javascript"></script>
<script src="assets/css/bootstrap/js/popper.min.js" type="346cd6369cb5f80aa6189064-text/javascript"></script>
<script src="../../../../ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="346cd6369cb5f80aa6189064-|49" defer=""></script></body>
<%@ include file="footer.jsp" %>
</html>