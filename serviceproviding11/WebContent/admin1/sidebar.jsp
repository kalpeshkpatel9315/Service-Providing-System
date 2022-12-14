<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SERVICE PROVIDING SYSTEM ADMIN</title>
</head>
<body>
       <!-- START CONTAINER -->
        <div class="page-container row-fluid">

            <!-- SIDEBAR - START -->
            <div class="page-sidebar ">

                <!-- MAIN MENU - START -->
                <div class="page-sidebar-wrapper" id="main-menu-wrapper"> 

                    <ul class='wraplist'>	
                        <li class="open"> 
                            <a href="<%= application.getContextPath() %>/admin1/dashboard.jsp">
                                <i class="fa fa-dashboard"></i>
                                <span class="title">DASHBOARD</span>
                            </a>
                        </li>
                       <li class=""> 
                            <a href="javascript:;">
                                <i class="fa fa-user"></i>
                                <span class="title">MANAGE USERS</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu" >
                             
                                <li>
                                    <a class="" href="<%= application.getContextPath() %>/admin1/adduser.jsp" >Add User</a>
                                </li>
                                   <!-- <li>
                                    <a class="" href="viewuser.jsp" >View Users</a>
                                </li> -->
                               <li>
                                    <a class="" href="<%= application.getContextPath() %>/ViewUser?action=showdata">View Customer</a>
                                </li>
                                    <li>
                                    <a class="" href="<%= application.getContextPath() %>/ViewUser?action=showdata1" >View Service Provider</a>
                                </li>
                            </ul>
                        </li>

                        <li class=""> 
                            <a href="javascript:;">
                                <i class="fa fa-cubes"></i>
                                <span class="title">MANAGE SERVICES</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a class="" href="<%= application.getContextPath() %>/admin1/addservice.jsp" >Add Service</a>
                                </li>
                                 <li>
                                    <a class="" href="<%= application.getContextPath() %>/admin1/addservicedetails.jsp" >Add ServiceSubcategory</a>
                                </li>
                               
                                    <li>
                                    <a class="" href="<%= application.getContextPath() %>/ServicesController?action=showservices" >View Service</a>
                                </li>
                                 <li>
                                    <a class="" href="<%= application.getContextPath() %>/ServicesDetailsController?action=showservicesDetails" >View ServiceSubcategory</a>
                                </li>
                            	
                               
                            </ul>
                        </li>
                        
                        <li class=""> 
                            <a href="javascript:;">
                                <i class="fa fa-cubes"></i>
                                <span class="title">MANAGE ORDER</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                
                                    <li>
                                    <a class="" href="<%= application.getContextPath() %>/OrderController?action=showorder" >View Order</a>
                                </li>
                                
                               
                            </ul>
                        </li>
                        <li class=""> 
                            <a href="javascript:;">
                                <i class="fa fa-cubes"></i>
                                <span class="title">MANAGE CONTACTUS</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a class="" href="<%= application.getContextPath() %>/Contactuscontroller?action=viewcontactus" >View ContactUs</a>
                                </li>  
                            </ul>
                        </li>
                        
                        <li class=""> 
                            <a href="javascript:;">
                                <i class="fa fa-cubes"></i>
                                <span class="title">MANAGE REVIEW</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a class="" href="<%= application.getContextPath() %>/Reviewcontroller?action=viewreview" >View Review</a>
                                </li>  
                            </ul>
                        </li>
                        
                        
                    </ul>

                </div>
                <!-- MAIN MENU - END -->
            </div>
            <!--  SIDEBAR - END -->
            </div>

</body>
</html>