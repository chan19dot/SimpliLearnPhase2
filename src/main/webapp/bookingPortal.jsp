<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import= "com.flyaway.admin.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select the flight</title>
</head>
<body>

<%
//----------------------------------------------
//Customer details 
String customerName = request.getParameter("cname");
session.setAttribute("cname", customerName);
String cemail = request.getParameter("cEmailId");
session.setAttribute("cemail", cemail);
String cphone = request.getParameter("CphoneNumber");
session.setAttribute("cphone",cphone);
//-------------------------------------------------------


//------------------------------------------------
//Logic to fetch the flights

Date date= (Date) session.getAttribute("date");
//out.println(date);

String source = (String) session.getAttribute("source");
String dest = (String) session.getAttribute("destination");
//out.println(date);
FlighPOJO fp1 = new FlighPOJO();
fp1.setSource(source);
fp1.setDateOfFlight(date);
fp1.setDestination(dest);
int id=1;

%>
<table border="1">

<%AdminDAO dao=new AdminDAO();
List<FlighPOJO> fp=(List<FlighPOJO>)dao.fetch(fp1);
%>
<tr><th>Airline</th><th>Source</th><th>Destination</th><th>Date</th><th>Price</th><th>Book</th></tr>
<%for(FlighPOJO f: fp) { 
String Id =  f.getId()+"" ;
%>

<tr><td><%=f.getAirline() %></td><td><%=f.getSource() %></td><td><%=f.getDestination() %></td><td><%=f.getDateOfFlight() %></td><td><%=f.getPrice() %></td><td> <a href="<%="paymentGateway.jsp?id="+Id %>">Book</a> </td></tr>
<%} %>
</table>


</body>
</html>