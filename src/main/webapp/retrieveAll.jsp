<%@ page import="com.flyaway.admin.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
</head>
<body>

<h1>All Details</h1>
<table border="1">

<%AdminDAO dao=new AdminDAO();
List<FlighPOJO> fp=(List<FlighPOJO>)dao.retrieveAll();
%>
<tr><th>ID</th><th>Airline</th><th>Source</th><th>Destination</th><th>Date</th><th>Price</th></tr>
<%for(FlighPOJO f: fp) { %>
<tr><td><%=f.getId() %></td><td><%=f.getAirline() %></td><td><%=f.getSource() %></td><td><%=f.getDestination() %></td><td><%=f.getDateOfFlight() %></td><td><%=f.getPrice() %></td></tr>
<%} %>
</table>

</body>
</html>