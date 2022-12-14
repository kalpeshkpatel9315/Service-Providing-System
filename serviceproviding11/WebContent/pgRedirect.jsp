 <%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
 
 <%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="paytm_java.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
 <%--  <s:forEach var="om" items="${om}"> --%>  
<%
Random r  = new Random();
int r1 = r.nextInt(10000000);
String merchantMid = "bZPhnu03504329279305";
//Key in your staging and production MID available in your dashboard
String merchantKey = "Bn06qUImw7!XhqAc";
//Key in your staging and production merchant key available in your dashboard
String orderId = "order"+r1;
String channelId = "WEB";
String custId = session.getAttribute("u_id").toString();
System.out.println(custId);
String mobileNo = session.getAttribute("p_no").toString();
System.out.println(mobileNo);
String email = session.getAttribute("e_mail").toString();
System.out.println(email);
String txnAmount = session.getAttribute("om").toString();

System.out.println(txnAmount);
 
	

String website = "WEBSTAGING";
//This is the staging value. Production value is available in your dashboard
String industryTypeId = "Retail";
//This is the staging value. Production value is available in your dashboard
String callbackUrl = "http://localhost:8083/serviceproviding11/pgResponse.jsp";
TreeMap<String, String> paytmParams = new TreeMap<String, String>();
paytmParams.put("MID",merchantMid);
paytmParams.put("ORDER_ID",orderId);
paytmParams.put("CHANNEL_ID",channelId);
paytmParams.put("CUST_ID",custId);
paytmParams.put("MOBILE_NO",mobileNo);
paytmParams.put("EMAIL",email);
paytmParams.put("TXN_AMOUNT",txnAmount);
paytmParams.put("WEBSITE",website);
paytmParams.put("INDUSTRY_TYPE_ID",industryTypeId);
paytmParams.put("CALLBACK_URL", callbackUrl);
String paytmChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(merchantKey, paytmParams);
StringBuilder outputHtml = new StringBuilder();
outputHtml.append("<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>");
outputHtml.append("<html>");
outputHtml.append("<head>");
outputHtml.append("<title>Merchant Checkout Page</title>");
outputHtml.append("</head>");
outputHtml.append("<body>");
outputHtml.append("<center><h1>Please do not refresh this page...</h1></center>");

outputHtml.append("<form method='post' action='https://securegw-stage.paytm.in/theia/processTransaction' name='f1'>");

for(Map.Entry<String,String> entry : paytmParams.entrySet()) {
outputHtml.append("<input type='hidden' name='"+entry.getKey()+"' value='"+entry.getValue()+"'>");

}
outputHtml.append("<input type='hidden' name='CHECKSUMHASH' value='"+paytmChecksum+"'>");

outputHtml.append("</form>");
outputHtml.append("<script type='text/javascript'>");
outputHtml.append("document.f1.submit();");

outputHtml.append("</script>");
outputHtml.append("</body>");
outputHtml.append("</html>");
out.println(outputHtml);

%>
<%-- </s:forEach> --%>
 