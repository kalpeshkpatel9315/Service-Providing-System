<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<!-- <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"> -->

    <!-- Main css -->
  <link rel="stylesheet" href="css1/style.css"> 
  <script type="text/javascript">
    function validation()
    {
		var e_mail=document.form1.e_mail.value;
		var pass=document.form1.pass.value;
		
		var letters=/^[0-9a-zA-Z]+$/;
		
		if(e_mail=="")
		{
			document.getElementById('e_mail1').innerHTML="please fill the Email Id";
		document.form1.e_mail.focus();return false;
		}
		if(e_mail.indexOf('@')<=0)
		{
			document.getElementById('e_mail1').innerHTML="@ Invalid position";
		document.form1.e_mail.focus();return false;
		}
		if((e_mail.charAt(e_mail.length-4)!='.')&&(e_mail.charAt(e_mail.length-3)!='.'))
		{
			document.getElementById('e_mail1').innerHTML=". Invalid position";
		document.form1.e_mail.focus();return false;
		}
		if(pass=="")
		{
			document.getElementById('pass1').innerHTML="please fill the Password";
			document.form1.pass.focus();return false;
		}
		if((pass.length<=5)||(pass.length>20))
		{
			document.getElementById('pass1').innerHTML="password length must be between 5 and 20";
			document.form1.pass.focus();return false;
		}
		
				
     }
    </script>   
   

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
                    <form  class="register-form" name="form1" id="register-form" action="CustomerLoginController" method="post"> 
                        <h2>Reset Password </h2>
					 <!-- <div class="form-group">
                            <label for="course">USER TYPE:</label>
                            <div class="form-select">
                                <select  name="u_type" id="course" style="font-size: 20px;background-color: #f2f2f2;border:1px solid">
                                
                                    <option value="customer">Customer</option>
                                    <option value="serviceprovider">Service Provider</option>
                                    
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                      -->    <div class="form-row">
                            <div class="form-group">
                        <div class="form-group">
                            <label for="email">Enter OTP :</label>
                            <input type="text" name="e_mail" id="email" style="font-size: 20px;" required/>
                            <span id="e_mail1" class="text-danger font-weight-bold" ></span>
                        </div>
                        <div class="form-group">
                            <label for="email">New Password :</label>
                            <input type="text" name="e_mail" id="email" style="font-size: 20px;" required/>
                            <span id="e_mail1" class="text-danger font-weight-bold" ></span>
                        </div>
					
                       
                     
                                            
                       </div>
                       <div class="form-submit">
	
                            <input type="reset" value="Reset All" class="submit" name="reset" id="reset" style="height:45px;font-size:20px;background: #ece4e4;color: #210303;"/>
                            <input type="submit" onclick="return validation();" value="Reset New Password" class="submit" name="submit" id="submit" style="height:45px;font-size:20px;background: #ece4e4;color: #210303;"/><br><br>
                        	<a href="registration.jsp" style="font-size:20px;padding-left:10px;">Don't have an account?</a>
                        	<a href="login.jsp" style="font-size:20px;padding-left:10px;">Login?</a>	
                        </div>
                        
    
                       </div> 
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
        <script src="vendor1/jquery/jquery.min.js"></script>
    <script src="js1/main.js"></script>
<%@ include file="footer.jsp" %>
</body>
</html>
</body>
</html>