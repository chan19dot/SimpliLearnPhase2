
<%@ page import= "java.text.SimpleDateFormat" %>
<%@ page import= "java.sql.Date" %>
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

String date =request.getParameter("dateOfTravel");

Date date1= Date.valueOf(date);
/*
SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");
Date parsed = dateFormat.parse();
out.println(parsed);*/
//out.println(date1);
String source = request.getParameter("source");
String dest = request.getParameter("destination");
String p =request.getParameter("passengers");
int passengers = Integer.valueOf(p);
session.setAttribute("date",date1);
session.setAttribute("source", source);
session.setAttribute("passengers", passengers);
session.setAttribute("destination",dest);

%>
<form action="bookingPortal.jsp">
Name:<input type="text" name="cname" >
<br>
E-mailId:<input type="text" name="cEmailId">
<br>
Phone Number:<input type="text" name="CphoneNumber">
<br>
<input type="submit" value="book">
</form>
</body>
</html>