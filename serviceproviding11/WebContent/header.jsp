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
<header class="header">
            <div id="header-topbar" class="bg-Primary py-2">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        
                    </div>
                </div>
            </div>
            <div id="rt-sticky-placeholder"></div>
            <div id="header-menu" class="header-menu menu-layout1">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-area">
                                <a href="index.jsp" class="temp-logo">
                                    <img src="img/logo.jpg" alt="logo" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-7 d-flex justify-content-end position-static" style="margin-left: 80px;">
                            <nav id="dropdown" class="template-main-menu" >
                                <ul>
                                   <li>
                                        <a href="index.jsp">Home</a>
                                    </li>
                                    
                                    <li>
                                        <a href="#">Services</a>
                                       <ul class="dropdown-menu-col-1">
                                        <%
  			try 
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
								
                                                <a href="login.jsp"><!-- Services 1 --><%= rs.getString(2) %></a>
                                            </li>
                                            <% 	}
                                    else
                                    {%>
											<li>	
											<a href="ServicesDetailsController?action=showserv&serv_id=<%= rs.getInt(1) %>"><%= rs.getString(2) %></a>							
                                            </li>
                                            <!-- <li>
                                                <a href="cleaning.jsp">Services 2Cleaning</a>
                                            </li>	
                                            <li>
                                                <a href="maid.jsp">Service Details 1Maid</a>
                                            </li>
                                            <li>
                                                <a href="electronics.jsp">Service Details 2Electronics</a>
                                            </li>
                                             --><!--  <li>
                                                <a href="single-service3.html">Service Details 3</a>
                                            </li>
                            -->
            
                                         
            						                           				<%
  				}
  				}} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
			</ul>
                                    </li>
                                    <% if(session.getAttribute("u_id")==null){%>
                                    <li>
                                        <a href="login.jsp">ViewOrder</a>
                                    </li>
                                    
                                    <%}else{ %>
                      				<li>
                                        <a href="OrderController?action=vieworder&u_id=<%= session.getAttribute("u_id") %>">ViewOrder</a>
                                        
                                    </li>
                                    
                                    <%} %> 
                                   <%if(session.getAttribute("u_id")==null){ %>
                                   <li>
                                        <a href="type.jsp">Register</a>
                                    </li> 
                                   <li>
                                        <a href="login.jsp">Login</a>
                                    </li> 
                                    <li>
                                        <a href="about.jsp">AboutUs</a>
                                    </li>
                                     <li>
                                        <a href="review.jsp">REVIEW</a>
                                    </li> 
                                    
                                    
                                    <%}else{ %>
                                    	<li>
                                        <a href="ViewUser?action=viewprofile&u_id=<%= session.getAttribute("u_id") %>">MyAccount</a>
                                        
                                    </li>
                                    <li>
                                        <a href="about.jsp">AboutUs</a>
                                    </li>
                                     <li>
                                        <a href="review.jsp">REVIEW</a>
                                    </li>
                                     
                                    	
                                    <% } %>
                                        
                                </ul>
                            </nav>
                        </div>
                        
                          <!-- <div class="col-lg-3 d-flex justify-content-end">
                         
                             <div class="header-action-layout1">
                                <ul>
                                    <li class="header-search-icon">
                                        <a href="#header-search" title="Search">
                                            <i class="flaticon-magnifying-glass"></i>
                                        </a>
                                    </li>
                                     <li class="header-btn">
                                        <a href="#" class="item-btn">Get A Quote<i class="fas fa-long-arrow-alt-right"></i></a>
                                    </li> 
                                </ul>
                            </div>
                        </div> -->  
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Area End Here -->
</body>
</html>