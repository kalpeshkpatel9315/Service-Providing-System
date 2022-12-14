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
            <link rel="stylesheet" href="style.css">  
 
    <!-- Main css -->
    <script type="text/javascript">
    function validation()
    {
		var f_name=document.form1.f_name.value;
		var l_name=document.form1.l_name.value;
		var p_no=document.form1.p_no.value;
		var e_mail=document.form1.e_mail.value;
		var pass=document.form1.pass.value;
		var address=document.form1.address.value;
		var letters=/^[0-9a-zA-Z]+$/;
		/* if(f_name!=l_name)
		{
		alert("User Already Exists");
		
		} */
		if(f_name=="")
		{
		document.getElementById('fname').innerHTML="please fill the first name";
		document.form1.f_name.focus();return false;
		}
		if(f_name.length<=2)
		{
			document.getElementById('fname').innerHTML="Name Length must be between 2 and 20";
			document.form1.f_name.focus();return false;
		}
		if(!isNaN(f_name))
		{
			document.getElementById('fname').innerHTML="Only Character Are Allowed";
			document.form1.f_name.focus();return false;
		
		}
		if(l_name=="")
		{
			document.getElementById('lname').innerHTML="please fill the Last name";
		document.form1.l_name.focus();return false;
		}
		if(l_name.length<=2)
		{
			document.getElementById('lname').innerHTML="Name Length must be between 2 and 20";
			document.form1.l_name.focus();return false;
		}
		if(!isNaN(l_name))
		{
			document.getElementById('lname').innerHTML="Only Character Are Allowed";
			document.form1.l_name.focus();return false;
		
		}
		if(p_no=="")
		{
			document.getElementById('p_no1').innerHTML="please fill the Phone Number";
		document.form1.p_no.focus();return false;
		}
		if(isNaN(p_no))
		{
			document.getElementById('p_no1').innerHTML="Only Enter Number Not a Character";
		document.form1.p_no.focus();return false;
		}
		if(p_no.length!=10)
		{
			document.getElementById('p_no1').innerHTML="Mobile Number must be 10 Digit Only";
		document.form1.p_no.focus();return false;
		}
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
		
		if(address=="")
		{
			document.getElementById('address1').innerHTML="please fill the Address";
		document.form1.address.focus();return false;
		}
		/* if(address!=letters)
		{
			document.getElementById('address1').innerHTML="User Address Must have Alphanumeric Character only";
		document.form1.address.focus();return false;
		} */
		
     }
    </script>   
           
   
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
                    <form  name="form1" class="register-form"  id="register-form" action="CustomerRegistrationController" method="post" onsubmit="return validateForm()">  
                        <h2>Registration Form</h2>
					 <!-- <div class="form-group">
                            <label for="course">user type:</label>
                            <div class="form-select">
                                <select  name="u_type" id="course" >
                                    <option value=""></option>
                                    <option value="Customer">customer</option>
                                    <option value='spregistration.jsp' >service provider</option>
                                    
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                      -->    <div class="form-row">
                            <div class="form-group">
                              <div class="form-group" style="padding-left:0px;">
                                <label for="father_name">First Name :</label>
                                <input type="text" name="f_name" id="f_name" style="font-size: 20px;"/>
                                <span id="fname" class="text-danger font-weight-bold" ></span>
                            </div>  
                            </div>
							<div class="form-group">
                                <label for="father_name">Last Name :</label>
                                <input type="text" name="l_name" id="l_name" style="font-size: 20px;" required/>
                                <span id="lname" class="text-danger font-weight-bold" ></span>
                            </div>
                        </div>
						<div class="form-group">
                            <label for="birth_date">Phone No :</label>
                            <input type="text" name="p_no" id="p_no" style="font-size: 20px;" required/>
                            <span id="p_no1" class="text-danger font-weight-bold" ></span>
                        </div>
						<div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="text" name="e_mail" id="e_mail" style="font-size: 20px;" required/>
                            <span id="e_mail1" class="text-danger font-weight-bold" ></span>
                        </div>
						<!-- <div class="form-submit">
                            
                            <input type="submit" value="send otp" class="submit" name="submit" id="submit" />
                        </div>-->
                         <div class="form-group">
                            <label for="pincode">password :</label>
                            <input type="text" name="pass" id="pass" style="font-size: 20px;" required/>
                            <span id="pass1" class="text-danger font-weight-bold" ></span>
                        </div>
						
                        
                        <div class="form-group">
                            <label for="address">Address :</label>
                            <input type="text" name="address" id="address" style="font-size: 20px;" required/>
                            <span id="address1" class="text-danger font-weight-bold" ></span>
                        </div>
                        
                        <!--<div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="male" checked>
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="female">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">State :</label>
                                <div class="form-select">
                                    <select name="state" id="state">
                                        <option value=""></option>
                                        <option value="us">America</option>
                                        <option value="uk">English</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            
                        </div>-->
                        <!-- <div class="form-group">
                            <label for="address">enter otp :</label>
                            <input type="text" name="address" id="address" required/>
                        </div>
                         -->
                        <div class="form-submit">
                            <button type="submit" onclick="return validation();" value="csignup" class="submit" name="action" id="reset" style="height:45px;font-size:20px;background: #ece4e4;color: #210303;">Sign up</button>
                            <button type="reset" value="Sign up" class="submit" name="reset" id="reset" style="height:45px;font-size:20px;background: #ece4e4;color: #210303;">Reset All</button>
                        </div>
                        <!-- <a href="login.jsp">Already Registered</a> -->
                    </form>
                </div>
            </div>
        </div>

    </div>
<%@ include file="footer.jsp" %>
    <!-- JS -->
         <script src="js/jquery-3.3.1.min.js"></script>
    Plugins js
    <script src="js/plugins.js"></script>
    Popper js
    <script src="js/popper.min.js"></script>
    Bootstrap js
    <script src="js/bootstrap.min.js"></script>
    Pace Preloder js
    <script src="js/pace.min.js"></script>
    MeanMenu js
    <script src="js/jquery.meanmenu.min.js"></script> 
    OwlCerousel js
    <script src="vendor/OwlCarousel/owl.carousel.min.js"></script>
    Select 2 js
    <script src="js/select2.min.js"></script>
    Nivo Slider js
    <script src="vendor/slider/js/jquery.nivo.slider.js"></script> 
    <script src="vendor/slider/home.js"></script>
    Google Map js
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtmXSwv4YmAKtcZyyad9W7D4AC08z0Rb4"></script>
    Main js
    <script src="js/main.js"></script>
    
        <script src="vendor1/jquery/jquery.min.js"></script>
    <script src="js1/main.js"></script>
    
    		
    	
		
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>