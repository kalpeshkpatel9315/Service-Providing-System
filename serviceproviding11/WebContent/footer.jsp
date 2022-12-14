<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.sym"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="com.dao.ServiceDetailDao"%> --%>
<%@page import="com.model.Services"%>
<%@page import="java.util.List"%>

<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <!-- Footer Area Start Here -->
        <footer class="footer-wrap-layout1">
            <div class="footer-top-wrap-layout1">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="footer-box-layout1">
                                <div class="footer-logo">
                                    <a href="index.jsp"><img src="img/logo.jpg" alt="logo"></a>
                                </div>
                                <p>We always deliver 100% customer satisfaction and absolute quality 
                                    work without any other compromise.</p>
                                <!-- <ul class="footer-social">
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                </ul> -->
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="footer-box-layout1 pd-lg-l-60 pd-lg-t-15">
                                <div class="footer-title">
                                    <h3>Quick Links</h3>
                                </div>
                                <div class="footer-menu-box">
                                    <ul class="footer-menu-list">
                                        <li>
                                            <a href="index.jsp">Home</a>
                                        </li>
                                        <li>
                                            <a href="about.jsp">About Us</a>
                                        </li>
                                        <!-- <li>
                                            <a href="plumbing.jsp">Plumbing</a>
                                        </li>
                                        <li>
                                            <a href="cleaning.jsp">Cleaning</a>
                                        </li>
                                        <li>
                                            <a href="maid.jsp">Maid</a>
                                        </li>
                                        <li>
                                            <a href="electrical.jsp">Electrical</a>
                                        </li> -->
                                        <li>
                                            <a href="registration.jsp">Registration</a>
                                        </li>
                                        <li>
                                            <a href="login.jsp">Login</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="footer-box-layout1 pd-lg-l-60 pd-lg-t-15">
                                <div class="footer-title">
                                    <h3>Services</h3>
                                </div>
                                <div class="footer-menu-box">
                                    <ul class="footer-menu-list">
                 <%                   	 try 
		 	{
  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select * from services");
  				ResultSet rs=st.executeQuery();
  				while(rs.next())
  				{
  			//System.out.println("in services");
  			%>
            
                                    	 
                                    	 <li>
                                    	      <%  if(session.getAttribute("u_id")==null)
                                    	{
                                	   %>
								
                                            <a href="login.jsp"><%= rs.getString(2) %></a>
                                        </li>
                                        <% 	}
                                    else
                                    {%>
                                     <li>
                                            <a href="ServicesDetailsController?action=showserv&serv_id=<%= rs.getInt(1) %>"><%= rs.getString(2) %></a>
                                        </li>
                                       
                                        <!-- <li>
                                            <a href="cleaning.jsp">Cleaning</a>
                                        </li>
                                        <li>
                                            <a href="ServicesDetailsController?action=showserv&serv_id=<%= rs.getInt(1) %>"">Maid</a>
                                        </li>
                                        <li>
                                            <a href="electronics.jsp">Electronics</a>
                                        </li>
                                         --><!-- <li>
                                            <a href="#">Kitchen Plumbing</a>
                                        </li>
                                        <li>
                                            <a href="#">Bath Plumbing</a>
                                        </li>
                                        <li>
                                            <a href="#">Gas Plumbing</a>
                                        </li>
                                        <li>
                                            <a href="#">Bacine Plumbing</a>
                                        </li>
                                        <li>
                                            <a href="#">Industry Plumbing</a>
                                        </li> -->
                <%
  				}
  				}} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="footer-box-layout1 pd-lg-t-15">
                                <div class="footer-title">
                                    <h3><!-- Newsletter -->Contact Us</h3>
                                </div>
                                <div class="footer-form-box">
                                    <!-- <p>Get updates &amp; exclusive offers</p>
                                     --><form class="contact-form-box" method="post" action="./Contactuscontroller">
                                        <div class="row">
                                            <div class="col-12 form-group">
                                                <input type="email" placeholder="E-mail Address" class="form-control" name="e_mail" data-error="Name field is required" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                       
                                            <div class="col-12 form-group">
                                                <input type="text" placeholder="Subject" class="form-control" name="sub" data-error="Name field is required" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            <div class="col-12 form-group">
                                                <input type="text" placeholder="Message" class="form-control" name="msg" data-error="Name field is required" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            
                                            
                                            <div class="col-12 form-group">
                                                <button type="submit" class="item-btn" name="action" value="customer">Submit<i class="fas fa-long-arrow-alt-right"></i></button>
                                            </div>
                                        </div>
                                        <div class="form-response"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="footer-bottom-wrap-layout1">
                <div class="copyright-light">Copyright © 2019 Fixer by <a href="https://www.radiustheme.com/" target="_blank">RadiusTheme.</a> All Rights Reserved.</div>
            </div> -->
        </footer>
        <!-- Footer Area End Here -->

</body>
</html>