<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<% 

String date = request.getParameter("dateOfTravel");
String source = request.getParameter("source");
String p =request.getParameter("passengers");
int passengers = Integer.valueOf(p);
session.setAttribute("date",date);
session.setAttribute("source", source);
session.setAttribute("passengers", passengers);

//get all parameters and set them here using the flighPOJO and redirect them to the flight
//booking page 




%>
<form action="bookingPortal.jsp">
Name:<input type="text">
<input type="submit" value="book">
</form>
</body>
</html>