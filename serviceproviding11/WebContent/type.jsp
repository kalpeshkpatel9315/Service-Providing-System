<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
       <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
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

   <link rel="stylesheet" href="css1/style.css">
            <!-- <link rel="stylesheet" href="style.css"> -->  
 
    <!-- Main css -->
       
       
   
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>	
    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img.jpg" alt="">
                </div>
				
                <div class="signup-form">
                    <form  class="register-form" id="register-form" action="CustomerRegistrationController" method="post"> 
                        <h2>registration form</h2>
					 <div class="form-group">
                            <label for="course" style="font-size:30px";>USER TYPE</label>
                            <div class="form-select">
                                <select  name="u_type" id="course" style="font-size:20px;border:1px solid;background-color: #f2f2f2;">
                                    
                                    <option value="customer">customer</option>
                                    <option value="serviceprovider" >service provider</option>
                                    
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                           <div class="form-submit">
                            <!-- <button type="submit" value="Reset All" class="reset" name="reset" id="reset" style="height:45px;font-size:20px;background: #ece4e4;color: #210303;">Reset All</button> -->
                            <button type="submit" value="conform" class="submit" name="action" id="submit" style="height:45px;font-size:20px;background: #ece4e4;color: #210303;">Conform</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>

    </div>
<%@ include file="footer.jsp" %>
    <!-- JS -->
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
    
        <script src="vendor1/jquery/jquery.min.js"></script>
    <script src="js1/main.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>