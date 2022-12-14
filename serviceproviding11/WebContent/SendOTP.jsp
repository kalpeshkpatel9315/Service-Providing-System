<%@page import="com.model.ForgotPswd"%>
<%@page import="com.dao.ForgotDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String email=request.getAttribute("email").toString();
	String otp=request.getAttribute("otp").toString();
%>
<form action="ForgotController" method="post">
<label>Email Send On Email Address &emsp;<%=email%></label>
<br>
<input type="hidden" name="email" value="<%=email %>">
<input type="hidden" name="otp" value="<%=otp %>">
<input type="password" name="uotp" >
<input type="submit" name="action" value="Verify">
</form>
</body>
</html>