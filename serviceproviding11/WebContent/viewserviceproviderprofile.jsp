<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="com.dao.ServiceDetailDao"%> --%>
<%@page import="com.model.Services"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width:100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
.c1{
 background-color: #f2f2f2;
 border-radius: 5px;
 padding: 20px;
}
/* .container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
 */</style>


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
        <%@ include file="spheader.jsp" %>
        <!-- Header Area End Here -->
        <!-- Inne Page Banner Area Start Here -->
        <section class="inner-page-banner bg-common" data-bg-image="img/figure/inner-banner.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumbs-area">
                            <h1>Your Profile</h1>
                            <ul>
                                <li>
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>Your Profile</li>
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
                               <form action="LoginController">
                              <button type="submit" name="action" value="logout" style="margin-left:1090px;">LOGOUT</button>
                              </form>
                               <div class="c1">
  <s:if test="${viewsp.uid > 0 }">
  <h1>View Profile</h1>
  <form action="ViewUser">
    <label for="fname">First Name</label>
    <input type="hidden" id="fname" name="u_id" value="${viewsp.uid}" >
    <input type="text" id="fname" name="f_name" value="${viewsp.f_name}" readonly>

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="l_name" value="${viewsp.l_name}" readonly>

    <label for="lname">Phone No</label>
    <input type="text" id="p_no" name="p_no" value="${viewsp.p_no}" readonly>
    
    <label for="subject">E_mail</label>
    <input type="text" id="e_mail" name="e_mail" value="${viewsp.e_mail}" readonly>

    <label for="subject">Address</label>
     <textarea id="subject" name="address"  style="height:50px" readonly>${viewsp.address}</textarea>
	
	<label for="subject">Your Area Of Interest :</label>
    <select  style="font-size: 20px;" name="service">
    <option value="">${viewsp.serv_subname}</option>
    </select>
    
    <label for="lname">Bank Account No :</label>
    <input type="text" id="e_mail" name="a_no" value="${viewsp.a_no}" readonly>
    
    <label for="lname">AadharCard Image</label>
    <input type="file" id="e_mail" name="a_img" value="${viewsp.a_img}" readonly>
    
    <label  for="lname">PassportSize Photo</label>
    <input type="file" id="e_mail" name="s_img" value="${viewsp.s_img}" readonly>
    
    <button type="submit" value="editprofileserviceprovider" name="action">Edit</button>
  </form>
  </s:if>
   <s:if test="${editsp.uid > 0 }">
   <h1>Edit Profile</h1>
   <form action="ViewUser" method="post">
   <label for="fname">First Name</label>
    <input type="hidden" id="fname" name="u_id" value="${editsp.uid}" >
    <input type="text" id="fname" name="f_name" value="${editsp.f_name}">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="l_name" value="${editsp.l_name}" >

    <label for="lname">Phone No</label>
    <input type="text" id="p_no" name="p_no" value="${editsp.p_no}" >
    
    <label for="subject">E_mail</label>
    <input type="text" id="e_mail" name="e_mail" value="${editsp.e_mail}" >

    <label for="subject">Address</label>
     <textarea id="subject" name="address"  style="height:50px">${editsp.address}</textarea>

    <label for="subject">Your Area Of Interest :</label>
    <select  style="font-size: 20px;" name="service">
    														<%
  			try 
  			{

  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select * from services");
  				ResultSet rs=st.executeQuery();
  				while(rs.next())
  				{
  			
  			%>
    
    <option value="<%=rs.getInt(1) %>"><%= rs.getString(2) %></option>
    <%
  				}
  			} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
    </select>
    
    <label for="lname">Bank Account No :</label>
    <input type="text" id="e_mail" name="a_no" value="${editsp.a_no}">
    
    <label for="lname">AadharCard Image</label>
    <input type="file" id="e_mail" name="a_img" value="${editsp.a_img}" >
    
    <label  for="lname">PassportSize Photo</label>
    <input type="file" id="e_mail" name="s_img" value="${editsp.s_img}" >
    
    
    <button type="submit" value="updateprofileserviceprovider" name="action">Update</button>
	</form>  
  </s:if>
 </div>
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
        <%@ include file="spfooter.jsp" %>
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