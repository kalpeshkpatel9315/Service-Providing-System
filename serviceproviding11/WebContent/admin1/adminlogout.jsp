<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogout</title>
</head>
<body>
<% 
	session.invalidate();
%>

<h1 style="color: red;">You Are Successfully Logged Out....</h1>
<a href="../Admin/index.jsp">Go Back To Login Page</a>

</body>
</html>