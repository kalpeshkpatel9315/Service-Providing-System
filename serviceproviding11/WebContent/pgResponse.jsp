<%-- <%@page import="javafx.scene.control.Alert"%> --%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.io.PrintWriter"%>
<%@page import="paytm_java.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
<%
System.out.println("Badshah");
Enumeration<String> paramNames = request.getParameterNames();

Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	System.out.println("darsh");
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
		System.out.println("darsh");
	}
}
boolean isValideChecksum = false;
String outputHTML="";
try{
	isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY,parameters,paytmChecksum);
	if(isValideChecksum && parameters.containsKey("RESPCODE")){
		if(parameters.get("RESPCODE").equals("01")){
			System.out.println("darsh");
			outputHTML = parameters.toString();
		}else{
			outputHTML="<b>Payment Failed.</b>";
			System.out.println("darsh");
		}
	}else{
		
		outputHTML="<b>Checksum mismatched.</b>";
		System.out.println("darsh");
	}
}catch(Exception e){
	outputHTML=e.toString();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>jordar</h1>

<%= outputHTML %>
<%

PrintWriter p1 = response.getWriter();
p1.println("<script>");
p1.println("alert('Payment Successfull')");
try
{
				int o_id=0;
				Connection cn1=new DBUtil().getConnectionData();
 				PreparedStatement st1=cn1.prepareStatement("select o_id from order11 where o_id=(select max(o_id) from order11)");
 				ResultSet rs1=st1.executeQuery();
 				if(rs1.next())
 				{
 					o_id=rs1.getInt(1);
 					System.out.println("order id"+o_id);
 				}
 				Connection cn2=new DBUtil().getConnectionData();
 				PreparedStatement st2=cn2.prepareStatement("update order11 set p_status=? where o_id=?");
 				st2.setString(1, "Paid");
 				st2.setInt(2, o_id);
 				int x=st2.executeUpdate();
}
catch(Exception e)
{
	e.printStackTrace();
}

System.out.println("darsh");
p1.println("</script>");

%>

alert('Your Payment is Done Enjoy your dinner...');
System.out.println("darsh");

<%

response.sendRedirect("index.jsp");
System.out.println("darsh");
%>

</body>

</html>