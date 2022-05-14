<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Booked</title>
</head>
<body>
<%
String source =(String)session.getAttribute("source");
out.println(source);
%>
</body>
</html>