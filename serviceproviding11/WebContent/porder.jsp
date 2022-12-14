<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript">
    function validation()
    {
		var o_date=document.form1.o_date.value;
		var o_time=document.form1.o_time.value;
		
		
		
		if(o_date=="")
		{
			document.getElementById('o_date1').innerHTML="please fill the order date";
			document.form1.o_date.focus();return false;
		}
		if(o_time=="")
		{
			document.getElementById('o_time1').innerHTML="please fill the order time";
			document.form1.o_time.focus();return false;
		}
		
		
				
     }
    </script>   
	   
<%-- <style type="text/css">
.a{
	
	margin-left:200px;
	display: inline-block;
	margin: 0px;
	padding: 0px;
	word-spacing: normal;	
}
.b{
	margin: 0px;
	padding: 0px;
	word-spacing: normal;	
	/* margin-left:250px; */	
}
</style>

 --%>
 <style type="text/css">
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
  
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  /* padding: 10px; */
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  font-size:40px
  color: black;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
 
 </head>
<body>

<%@ include file="header.jsp" %>

<h1 style="align-items: center;margin-left:500px;margin-top:50px">Order Details</h1>

<%-- <form action="OrderController" method="post" style="align-items: center;margin-left:500px;margin-top:60px;width:50%">
<label class="b"><b>Name:-</b></label>
<input type="text"  class="a" name="f_name" value="<%= session.getAttribute("f_name") %>" readonly/><br>
<input type="hidden" class="a" name="u_id" value="<%= session.getAttribute("u_id") %>"/>
<input type="hidden" class="a" name="serv_det_id" value="${user1.serv_det_id}" />
<label class="b"><b>Service Name:-</b></label>
<input type="text" class="a" name="serv_subname" value="${user1.serv_subname}" readonly/><br>
<label class="b"><b>Price:-</b></label>
<input type="number" class="a" name="price" value="${user1.price}" readonly/><br>
<label class="b"><b>Address:-</b></label>
<textarea name="address" class="a"><%= session.getAttribute("address") %></textarea><br>
<label class="b"><b>Choose Date & Time:-</b></label><br>
<input type="date" class="a" name="o_date"></input>
<input type="time" class="a" name="o_time"></input><br>
<button type="submit" name="action"><b>Proceed to Payment</b></button>
</form>
 --%>
		<form action="OrderController" name="form1" method="post" style="max-width:1000px;margin:auto;width:600px">
  <label style="color:#d41731">Name:</label>
  <div class="input-container">
    
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="hidden"  value="<%= session.getAttribute("u_id") %>" name="u_id" readonly>
    <input type="hidden" class="a" name="serv_det_id" value="${user1.serv_det_id}" />
    <input class="input-field" type="text"  value="<%= session.getAttribute("f_name") %>" name="f_name" readonly>
    <input class="input-field" type="hidden"  value="<%= session.getAttribute("p_no") %>" name="p_no" readonly>
    <input class="input-field" type="hidden"  value="<%= session.getAttribute("e_mail") %>" name="e_mail" readonly>
    
  </div>
	
  <label style="color:#d41731">Service Subname</label>
  <div class="input-container">
    <i class="fa fa-key icon"></i>
  	  
    <input class="input-field" type="text" value="${user1.serv_subname}" name="serv_subname" readonly>
  </div>
  
  <label style="color:#d41731">Price</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    
    <input class="input-field" type="text"  value="${user1.price}" name="price" readonly>
  </div>
   <label style="color:#d41731">Select Order Date</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
   	
    <input class="input-field" type="date"   name="o_date" id="o_date">
    <span id="o_date1" class="text-danger font-weight-bold" ></span>
  </div>
  <label style="color:#d41731">Select Order Time</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    
    <input class="input-field" type="time"   name="o_time" id="o_time">
    <span id="o_time1" class="text-danger font-weight-bold" ></span>
  </div>
  <label style="color:#d41731">Address</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    
    <input class="input-field" type="text"  value="<%= session.getAttribute("address") %>" name="address">
  </div>
  
  
  
	<label style="color:#d41731">If information confirmed then Press Confirm</label>		
  <button type="submit" onclick="return validation();" class="btn" style="font-size:20px" name="action" >Proceed to Payment</button>
</form>
<%@ include file="footer.jsp" %>
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