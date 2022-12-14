<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SERVICE PROVIDING SYSTEM ADMIN</title>
</head>
<body class=" "><!-- START TOPBAR -->
        <div class='page-topbar '>
        
            <div class='logo-area'>
			
            </div>
   		          
            <div class='quick-area'>
           
                <div class='pull-left'>
           				     
                    <ul class="info-menu left-links list-inline list-unstyled">
                        <li class="sidebar-toggle-wrap">
                            <a href="#" data-toggle="sidebar" class="sidebar_toggle">
                                <i class="fa fa-bars"></i>
                            </a>
                            
                        </li>
                        <li><h3 style="margin-right: 100px;"> Welcome Admin, <%=session.getAttribute("emailid") %></h3></li>
                    </ul>
                    
                </div>
                			
                <div class='pull-right'>
                
                    <!-- <ul class="info-menu right-links list-inline list-unstyled">
                       ul no class name 6e  
                        <li class="profile">
                        			
                     -->           <a href="logout.jsp">    <button type="submit"  style="height:40px;width:80px;color: blue;margin-top: 25px;font-size: 17px;margin-right: 5px;">
                                   LOGOUT     <!-- <i class="fa fa-lock"></i> -->
                        				
                                   </button>
                                        </a>
                                    
                        <!-- </li>
                        
                    </ul>	 -->		
                </div>		
            </div>

        </div>
        <!-- END TOPBAR -->
</html>