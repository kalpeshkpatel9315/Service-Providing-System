<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
	session.invalidate();
%>
<h1 style="color: red;">You Are Successfully Logged Out....</h1>
<a href="index.jsp">Go Back To Home Page</a>
</body>
</html>