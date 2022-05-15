<%@ page import="java.sql.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Success</title>
</head>
<body>
<h2>Transaction success</h2>
<h3>Booking Details</h3>

<%
String customerName= (String) session.getAttribute("cname");
Date date=(Date) session.getAttribute("date");
String source =(String) session.getAttribute("source");
int p= (int) session.getAttribute("passengers");
String dest =(String)session.getAttribute("destination");
String airline =(String)session.getAttribute("airline");
double cost = (double) session.getAttribute("price");
%>

<table>
<tr><th>name</th><th>Airline</th><th>number of passengers</th><th>From</th><th>To</th><th>Date</th><th>Cost</th>
<tr><td><%=customerName %></td><td><%=airline %></td><td><%=p %></td><td><%=source %></td><td><%=dest %></td><td><%=date %></td><td><%=cost %></td>
</table>
</body>

