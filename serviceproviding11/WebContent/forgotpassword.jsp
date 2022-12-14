<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ForgotController" method="post">
<h2>Forgot Password</h2>
<input type="email" name="email">
<font color="red">${invalidemail}</font>
<font color="red">${SendOtpError}</font>
<input  type="submit" value="Submit" name="action">
</form>

<div style="color: red; background-color: gray;"></div>
</body>
</html>