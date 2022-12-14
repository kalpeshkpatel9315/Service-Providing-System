 <%@page import="com.model.Assignserviceprovider"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="com.dao.ServiceDetailDao"%> --%>
<%@page import="com.model.Services"%>
<%@page import="com.model.OrderModel"%>
<%@page import="com.model.ViewUserModel"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<div class="container">
                <div class="row">
                    <div class="col-xl-10 col-12">
                           
                        <div class="schedule-box-layout1">
                        	<br>
                        	<br>
                            <h2 class="item-title">Service Requests</h2>
                            
                            <%-- <%@ include file="approverequest.jsp" %> --%>
                                               
                        </div>
                           
       </div>
       
																																	
<%
String status="pending";
int serv_det_id=0;						
int uidd=0;
Assignserviceprovider as=new Assignserviceprovider();
  			try 
  			{
  				int uid=0;
  				//String temp=null;
  				//String a="(NULL)";
  				uid=(int)session.getAttribute("u_id");
  				
  				Connection cn=new DBUtil().getConnectionData();
				PreparedStatement st=cn.prepareStatement("SELECT * FROM order11 WHERE uid=? AND spreq_status IS ?");
				st.setInt(1, uid);
				st.setString(2, null);
				//st.setString(3, "cancelled");
				 
				ResultSet rs=st.executeQuery();
				if(rs.next())															
				{																
					System.out.println("kashiyo");		
					as.setO_id(rs.getInt(1));
					System.out.println("kalpesh"+as.getO_id());
					serv_det_id=rs.getInt(2);
					uidd=rs.getInt(3);	
					as.setUid(uidd);
					as.setUid1(rs.getInt(8));
				}
				
				Connection cn1=new DBUtil().getConnectionData();
				PreparedStatement st1=cn1.prepareStatement("select * from servicesdetail where serv_det_id=?" );
				st1.setInt(1, serv_det_id);
				ResultSet rs1=st1.executeQuery();
				if(rs1.next())
				{
					as.setServ_subname(rs1.getString(3));
					as.setServ_detail(rs1.getString(4));
					as.setPrice(rs1.getInt(5));
				}
  	  			
				Connection cn2=new DBUtil().getConnectionData();
				PreparedStatement st2=cn2.prepareStatement("select * from customer where uid=?" );
				st2.setInt(1, as.getUid());
				ResultSet rs2=st2.executeQuery();
				if(rs2.next())
				{
					as.setF_name(rs2.getString(3));
					as.setL_name(rs2.getString(4));
					as.setP_no(rs2.getString(5));
					
				}
  	  			
				
				
				   if(as.getUid1()==uid) 
				 {  
				Connection cn3=new DBUtil().getConnectionData();
  				PreparedStatement st3=cn3.prepareStatement("SELECT * FROM order11 WHERE uid=? AND spreq_status IS ?");
  				st3.setInt(1, uid);	
  				st3.setString(2, null);
				//st3.setString(3, "cancelled");  
  				
				
  				ResultSet rs3=st3.executeQuery();
  				if(rs3.next())
  				{
  				%>															
  			<form action="OrderController" style="max-width:1000px;margin:auto;width:600px">
  <lable style="color:#d41731">Name:</lable>
  <div class="input-container">
    
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="hidden"  value="<%=as.getO_id() %>" name="o_id" readonly>
    <input class="input-field" type="text"  value="<%=as.getF_name() %>" name="usrnm" readonly>
    
  </div>
	<label style="color:#d41731">Phone No</label>
  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
  	
    <input class="input-field" type="text" value="<%=as.getP_no() %>" name="email" readonly>
  </div>
  <label style="color:#d41731">Service Subname</label>
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    
    <input class="input-field" type="text" value="<%=as.getServ_subname() %>" name="psw" readonly>
  </div>
  <label style="color:#d41731">Service Details</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    
    <input class="input-field" type="text"  value="<%=as.getServ_detail() %>" name="usrnm" readonly>
  </div>
  <label style="color:#d41731">Price</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    
    <input class="input-field" type="text"  value="<%=as.getPrice() %>" name="usrnm" readonly>
  </div>
   <label style="color:#d41731">Order Date</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
   
    <input class="input-field" type="text"  value="<%=rs3.getString(5) %>" name="usrnm" readonly>
  </div>
  <label style="color:#d41731">Order Time</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    
    <input class="input-field" type="text"  value="<%=rs3.getString(6) %>" name="usrnm" readonly>
  </div>
  <label style="color:#d41731">Address</label>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    
    <input class="input-field" type="text"  value="<%=rs3.getString(4) %>" name="usrnm" readonly>
  </div>
  
  
  
	<label style="color:#d41731">Request Approve or Cancel</label>		
  <button type="submit" class="btn" style="font-size:20px;width:  110px;" name="action" value="confirm">Approve</button>
  <button type="submit" class="btn" style="font-size:20px;width:  110px;" name="action" value="cancel">Cancel</button>
</form>
  			<%-- 	<form>
  			<label>Fname</label>
  			<input type="text" value="<%=as.getF_name() %>" readonly/><br>
  			<label>Lname</label>
  			<input type="text" value="<%=as.getL_name() %>" readonly/><br>
  			<label>Phone No</label>
  			<input type="text" value="<%=as.getP_no() %>" readonly/><br>
  			<label>Service Subname</label>
  			<input type="text" value="<%=as.getServ_subname() %>"/><br>
  			<label>Service Details</label>
  			<input type="text" value="<%=as.getServ_detail() %>"/><br>
  			<label>Price</label>
  			<input type="text" value="<%=as.getPrice() %>"/><br>
  			<label>Order Date</label>
  			<input type="text" value="<%=rs.getString(5) %>"/><br>
  			<label>Order Time</label>
  			<input type="text" value="<%=rs.getString(6) %>"/><br>
  			<label>Address</label>
  			<input type="text" value="<%=rs.getString(4) %>"/><br>
  			
  			
  			
  			
  			
  			
  			
  			<input type="text" value="<%=as.getPrice() %>"/>
            </form> --%> 
            <%
  				}
  				 }
				   else{%>
	  				<div class="schedule-box-layout1" style="margin-left: 450px;">
	                        	<br>
	                        	<br>
	                            <h3 class="item-title">Request Not Comming Yet</h3>
	                            
	                            
	                                               
	                        </div>
	  					<!-- <h3 class="item-title"></h3> -->
	  						
	  				<%
  				}
				 
				  
  			}catch (Exception e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
  			
			%>           
                        
        
       </div>
       </div>                 
</body>
</html>