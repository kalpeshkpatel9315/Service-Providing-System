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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <!-- START CONTENT -->
            <section id="main-content" class=" ">
                <section class="wrapper main-wrapper" style=''>

                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                        <div class="page-title">

                            <div class="pull-left">
                                <h1 class="title">Dashboard</h1>                            
                            </div>


                        </div>
                    </div>
                    <div class="clearfix"></div>


                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <section class="box nobox">
                            <div class="content-body">


                                <div class="row">
                                    <div class="col-md-4 col-sm-6 col-xs-12">
						                            <div class="r1_graph1 db_box db_box_large">
						                    			    <% 		try 
		 	{
  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select count(*)  from customer");
  				
  				ResultSet rs=st.executeQuery();
  				if(rs.next())
  				{
  					
  					
  				
  			//System.out.println("in services");
  			%>
            
                                            <h3><b>Total Register Customer</b></h3><br>
                                            <h2><%= rs.getInt(1)%></h2>
                                            <%-- <span class='bold'><%=rs.getInt(1) %></span> --%>
                                            <!-- <span class='pull-right'><small>New/Repeating Users</small></span>
                                             --><div class="clearfix"></div>
                                            <span class="db_dynamicbar">Loading...</span>
                                      	<%
  				}
  			} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12">

                                         <div class="r1_graph2 db_box db_box_large">
                           						                    			    <% 		
             try 
		 	{
  	  			Connection cn1=new DBUtil().getConnectionData();
  				PreparedStatement st1=cn1.prepareStatement("select count(*)  from service_provider");
  				
  				ResultSet rs1=st1.executeQuery();
  				if(rs1.next())
  				{
  					
  					
  				
  			//System.out.println("in services");
  			%>
                           
            							     <h3><b>Total Register ServiceProvider</b></h3><br>
                                            <h2><%= rs1.getInt(1)%></h2>
            
                                            <!-- <span class='bold'>2332</span>
                                            <span class='pull-right'><small>Links Shared</small></span>
                                             --><div class="clearfix"></div>
                                            <span class="db_linesparkline">Loading...</span>
                                            <%
  				}
  			} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
                                        </div>
 
                                    </div>

                                    <div class="col-md-4 hidden-sm col-sm-12 col-xs-12">

                                        <div class="r1_graph1 db_box db_box_large">
<%                                        try 
		 	{
  	  			Connection cn2=new DBUtil().getConnectionData();
  				PreparedStatement st2=cn2.prepareStatement("select count(*)  from order11");
  				
  				ResultSet rs2=st2.executeQuery();
  				if(rs2.next())
  				{
  					
  					
  				
  			//System.out.println("in services");
  			%>
            
                                        
                                           <!--  <span class='bold'>67/98</span>
                                            <span class='pull-right'><small>Total / Unique visitors</small></span>
                                            
                                            -->
                                            <h3><b>Total Order</b></h3><br>
                                            <h2><%= rs2.getInt(1)%></h2>
            
                                             <div class="clearfix"></div>
                                            <span class="db_compositebar">Loading...</span>
                                                                            <%
  				}
  			} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
                                         </div>
                                     </div>

                                </div> <!-- End .row -->

                            <div class="row">
                              <div class="col-md-4 col-sm-6 col-xs-12">
						                            <div class="r1_graph1 db_box db_box_large">
				<%try 
		 		{
  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select count(*)  from services");
  				
  				ResultSet rs=st.executeQuery();
  				if(rs.next())
  				{
  					
  					
  				
  			//System.out.println("in services");
  			%>
            
                                            <h3><b>TOTAL SERVICES</b></h3><br>
                                            <h2><%= rs.getInt(1)%></h2>
                                            <%-- <span class='bold'><%=rs.getInt(1) %></span> --%>
                                            <!-- <span class='pull-right'><small>New/Repeating Users</small></span>
                                             --><div class="clearfix"></div>
                                            <span class="db_dynamicbar">Loading...</span>
                                      	<%
  				}
  			} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
                                        </div>
                                    </div>
 						              <div class="col-md-4 col-sm-6 col-xs-12">

                                         <div class="r1_graph2 db_box db_box_large">

				<%try 
		 		{
  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select count(*)  from servicesdetail");
  				
  				ResultSet rs=st.executeQuery();
  				if(rs.next())
  				{
  					
  					
  				
  			//System.out.println("in services");
  			%>
            
                                            <h3><b>TOTAL SERVICES SUBCATEGORY</b></h3><br>
                                            <h2><%= rs.getInt(1)%></h2>
                                            <%-- <span class='bold'><%=rs.getInt(1) %></span> --%>
                                            <!-- <span class='pull-right'><small>New/Repeating Users</small></span>
                                             --><div class="clearfix"></div>
                                            <span class="db_linesparkline">Loading...</span>
                                      	<%
  				}
  			} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
                                        </div>
                                    </div>
 <div class="col-md-4 hidden-sm col-sm-12 col-xs-12">

                                        <div class="r1_graph1 db_box db_box_large">

				<%try 
		 		{
  	  			Connection cn=new DBUtil().getConnectionData();
  				PreparedStatement st=cn.prepareStatement("select count(*)  from order11 where status=?");
  				st.setString(1, "completed");
  				
  				ResultSet rs=st.executeQuery();
  				if(rs.next())
  				{
  					
  					
  				
  			//System.out.println("in services");
  			%>
            
                                            <h3><b>TOTAL COMPLETED ORDER</b></h3><br>
                                            <h2><%= rs.getInt(1)%></h2>
                                            <%-- <span class='bold'><%=rs.getInt(1) %></span> --%>
                                            <!-- <span class='pull-right'><small>New/Repeating Users</small></span>
                                             --><div class="clearfix"></div>
                                            <span class="db_compositebar">Loading...</span>
                                      	<%
  				}
  			} catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
			%>
                                        </div>
                                    </div>
 		                      
                            </div>    

                          <div id="db_morris_bar_graph" style="height:0;width:0;position:absolute;top:0px;"></div>
                              
                            </div>
                            
                            
                        </section>
                    </div>
                </section>
            </section>

 </div>
        <!-- END CONTAINER -->

</body>
</html>