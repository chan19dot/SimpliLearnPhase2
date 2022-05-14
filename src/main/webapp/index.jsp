
<%@page import="com.flyaway.admin.AdminDbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To FlyAway.com </title>
</head>
<body>
<h2>Fly Away</h2>
<form action="adminlogin.jsp">
<input type="submit" value="Admin Login" >
</form>
<form action="customerlogin.jsp">
<input type="submit" value="Customer Login">
</form>
<form action="registration.jsp">
<br>


<br>
Source <input type="text" name="source">
Destination <input type="text" name="destination">
<br>
Number of Travelers <input type="text" name="passengers">
Date of Travel<input type="date" id="date" name="dateOfTravel">
<input type="submit" value="search">
<br>
</form>

</body>
</html>