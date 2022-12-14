<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.sym"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="com.dao.ServiceDetailDao"%> --%>
<%@page import="com.model.Services"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.slides img
{
	height: 10px;
	width: 10px;
 	color: red;
}

</style>
</head>
<body>
	<!-- Slider Area Start Here -->
			
		 
	<div class="slider-area slider-layout2">
		<div class="bend niceties preview-1">
			<div id="ensign-nivoslider-4" class="slides" style="height:300px;width:550px;margin-left: 400px;">
				<%
				try 
		 		{
  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select * from services");
  				ResultSet rs=st.executeQuery();
  				while(rs.next())
  				{%>
				
				
				<img src="./Serviceimages/<%=rs.getString(3)%>" alt="slider" title="#slider-direction-2"/> 
				 <%-- <h1 class="slider-big-text" title="#slider-direction-1" alt="slider"><%= rs.getString(2) %></h1> --%> 
				<!--<img src="img/slider/slide1-2.jpg" alt="slider" title="#slider-direction-2" />
				<img src="img/slider/slide1-1.jpg" alt="slider" title="#slider-direction-1" />
				<img src="img/slider/slide1-3.jpg" alt="slider" title="#slider-direction-3" /> -->
					<%}}catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>						                           				
  			
			</div>
           	
			<div id="slider-direction-1" class="t-cn slider-direction">
		
				<div class="slider-content s-tb slide-1">
				
					<div class="text-left title-container s-tb-c">
				
						<div class="container">
							<!-- <div class="slider-sub-text">
								Servicing
								&amp; Repair Company
							</div>-->
										                     
  							
							<%-- <h1 class="slider-big-text"><%= rs.getString(2) %></h1> --%>
							 <!--  <div class="slider-paragraph">Pellentesque habitant morbi tristique senectus et pellente morbi 
                                    nectneolitics ellentesque vestibulum nectneolitics modern</div> -->
							 <div class="slider-btn-area">
							 	<%-- <%  if(session.getAttribute("u_id")==null)
                                    	{
                                	   %>
                               	 --%>
								<%-- <a href="ServicesDetailsController?action=showserv&serv_id=<%= rs.getInt(1) %>" class="item-btn-fill">Get Started Now <i class="fas fa-long-arrow-alt-right"></i>
								</a> --%>
								
							</div>
					
			 
						</div>
							
					</div>
				</div>
		
			</div>
				
  			
			<!-- <div id="slider-direction-2" class="t-cn slider-direction">
				<div class="slider-content s-tb slide-2">
					<div class="text-left title-container s-tb-c">
						<div class="container">
							<div class="slider-sub-text">
								Servicing
								&amp; Repair Company
							</div>
							<h1 class="slider-big-text">Maid</h1>
							<div class="slider-paragraph">Pellentesque habitant morbi tristique senectus et pellente morbi 
                                    nectneolitics ellentesque vestibulum nectneolitics modern</div>
							<div class="slider-btn-area">
								<a href="index.jsp" class="item-btn-fill">Get Started Now <i class="fas fa-long-arrow-alt-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			 --><!-- <div id="slider-direction-1" class="t-cn slider-direction">
                    <div class="slider-content s-tb slide-1">
                        <div class="text-left title-container s-tb-c">
                            <div class="container">
                                <div class="slider-sub-text">Servicing &amp; Repair Company</div>
                                <h1 class="slider-big-text">Electric</h1>
                                <div class="slider-paragraph">Pellentesque habitant morbi tristique senectus et pellente morbi 
                                    nectneolitics ellentesque vestibulum nectneolitics modern</div>
                                <div class="slider-btn-area">
                                     <a href="index.jsp" class="item-btn-fill">Get Started Now
                                        <i class="fas fa-long-arrow-alt-right"></i>
                                    </a>                                     
                                </div>
                            </div>
                        </div>
                    </div>
                 -->
			<!-- <div id="slider-direction-3" class="t-cn slider-direction">
				<div class="slider-content s-tb slide-3">
					<div class="text-left title-container s-tb-c">
						<div class="container">
							<div class="slider-sub-text">
								Servicing
								&amp; Repair Company
							</div>
							<h1 class="slider-big-text">Cleaning</h1>
							<div class="slider-paragraph">Pellentesque habitant morbi tristique senectus et pellente morbi 
                                    nectneolitics ellentesque vestibulum nectneolitics modern</div>
							<div class="slider-btn-area">
								<a href="index.jsp" class="item-btn-fill">Get Started Now <i class="fas fa-long-arrow-alt-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
 -->
 			
		</div>
	</div>
				
	
	<!-- Slider Area End Here -->
	<!-- Service Area Start Here -->
	<section class="service-wrap-layout1">
		<div class="container">
			<div class="row">
				<%-- <form action="get">
       				 <s:forEach var="user1" items="${user1}">
       
                    <div class="col-xl-4 col-md-6">
                        <div class="service-box-layout1">
                            <div class="item-img">
                                <img src="img/brand/cleaning.jpg" alt="service">
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="cleaning.jsp">${user1.serv_name }</a></h3>
                                <a href="ServicesDetailsController?action=showserv&serv_id=${user1.serv_id }"><img src="" alt="${user1.image }" class="img_fl" /></a>
                                <div class="btn-wrap">
                                    <!-- <a href="cleaning.jsp" class="item-btn"><i class="fas fa-long-arrow-alt-right"></i></a> -->
                                    <a href="ServicesDetailsController?action=showserv&serv_id=${user1.serv_id }"><img src="" alt="${user1.image }" class="item-btn" />  </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </s:forEach>
                    </form>
		 --%>
				<%
  			try 
				{     																{
  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select * from services");
  				ResultSet rs=st.executeQuery();
  				while(rs.next())
  				{
  			//System.out.println("in services");
  			%>
				<div class="col-xl-4 col-md-6">
					<div class="service-box-layout1">

						<div class="item-img">
							<img src="./Serviceimages/<%=rs.getString(3) %>" alt="service" />
						</div>
						<div class="item-content">
							<h3 class="item-title">
								<a href=""><%= rs.getString(2) %></a>
							</h3>

							<div class="btn-wrap">
								<%  if(session.getAttribute("u_id")==null)
                                    	{
                                	   %>
								<a href="login.jsp" class="item-btn"> <img src="" alt="" /><i
									class="fas fa-long-arrow-alt-right"></i></a>
								<% 	}
                                    else
                                    {%>
								<a
									href="ServicesDetailsController?action=showserv&serv_id=<%= rs.getInt(1) %>"
									class="item-btn"> <img src="" alt="" /><i
									class="fas fa-long-arrow-alt-right"></i></a>
								<%  }%>
							</div>
						</div>
					</div>
				</div>
				<%-- <option value="<%=rs.getInt(1) %>"><%= rs.getString(2) %></option> --%>
				<% 
  				}
  			}} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>


				<%-- <form action="get">
       				 <s:forEach var="user1" items="${user1}">
         
                     <div class="col-xl-4 col-md-6">
                        <div class="service-box-layout1">
                            <div class="item-img">
                                <img src="img/brand/maid.jpg" alt="service">
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="maid.jsp">${user1.serv_name}</a></h3>
                                <div class="btn-wrap">
                                    <a href="maid.jsp" class="item-btn"><i class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </s:forEach>
                    </form>
         --%>
				<!--<div class="col-xl-4 col-md-6">
                        <div class="service-box-layout1">
                            <div class="item-img">
                                <img src="img/brand/plumbing.jpg" alt="service">
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="plumbing.jsp">Plumbing</a></h3>
                                <div class="btn-wrap">
                                    <a href="plumbing.jsp" class="item-btn"><i class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 d-lg-none d-md-none d-xl-block">
                        <div class="service-box-layout1">
                            <div class="item-img">
                                <img src="img/brand/electrical.jpg" alt="service">
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="electronics.jsp">Electronics</a></h3>
                                <div class="btn-wrap">
                                    <a href="electronics.jsp" class="item-btn"><i class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div> -->
			</div>
		</div>
	</section>
	<!-- Service Area End Here -->
	<!-- Service Area Start Here -->
	<!-- <section class="service-wrap-layout2 bg-common" data-bg-image="img/figure/section-bg3.jpg">
            <div class="container">
                <div class="heading-layout1">
                    <p>Plumbing Services</p>
                    <h2 class="item-title">Our Plumbing Services</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-drainage"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Drain Cleaning</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-faucet"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Sewer Line</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-leak"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Leak Pipe</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-bathroom"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Toilet Cleaning</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12 d-none d-sm-block">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-broken"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Broken Pipe</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12 d-none d-sm-block">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-tank"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Water Heating</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12 d-none d-sm-block">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-pipe-wrench"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Plumber Wrench</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12 d-none d-sm-block">
                        <div class="service-box-layout2">
                            <div class="item-icon">
                                <i class="flaticon-pipes"></i>
                            </div>
                            <div class="item-content">
                                <h3 class="item-title"><a href="single-service1.html">Factory Machine</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
	<!-- Service Area End Here -->

	<!-- Schedule Area Start Here -->
	<%-- <section class="schedule-wrap-layout1 bg-common"
		data-bg-image="img/figure/section-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-xl-10 col-12">
					<div class="schedule-box-layout1">
						<h2 class="item-title">24/7 Scheduling . Same Day Service</h2>
						<form class="contact-form-box">
							<div class="row">
								<div class="col-md-4 col-12 form-group">
									<label>I Need Service For</label> <select class="select2">
										<option value="0">Plumbing</option>
										<option value="1">Cleaning</option>
										<option value="2">Maid</option>
										<option value="3">Electronics</option>
									</select>
								</div>
								<div class="col-md-4 col-12 form-group">
									<label>Service Area</label> <select class="select2">
										<option value="0">Saraspur</option>
										<option value="1">Bapunagar</option>
										<option value="2">Navrangpura</option>
										<option value="3">Isanpur</option>
										<option value="4">Naroda</option>
									</select>
								</div>
								<div class="col-lg-3 col-md-4 form-group mg-t-md-42">
									<button type="submit" class="fw-btn-primary">
										Check Availability <i class="fas fa-long-arrow-alt-right"></i>
									</button>
								</div>
							</div>
							<div class="form-response"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
 --%>	<!-- Schedule Area End Here -->
	<!-- <a href=""><button style="margin-left:100px; ">Review</button></a> -->

</body>
</html>