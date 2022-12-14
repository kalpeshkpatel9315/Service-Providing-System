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
	out.print(email);
%>
<%if(request.getAttribute("Otpmatch")!=null) {%>
<form action="ForgotController" method="post">
<input type="hidden" name="email" value="<%=email%>">
New Password : <input type="password" name="newpassword"><br>
Confirm New Password : <input type="password" name="Cpassword"><br>

<input type="submit" name="action"  value="Confirm">
</form>
<%}
else
{
	response.sendRedirect("SendOTP.jsp");
}
%>
</body>
</html>