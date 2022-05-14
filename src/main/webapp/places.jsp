<%@ page import="com.flyaway.admin.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>master list of places for source and destination</h1>
<table border="1">

<%AdminDAO dao=new AdminDAO();
List<FlighPOJO> fp=(List<FlighPOJO>)dao.allPlaces();
%>
<tr><th>Source</th><th>Destination</th></tr>
<%for(FlighPOJO f: fp) { %>
<tr><td><%=f.getSource() %></td><td><%=f.getDestination() %></td></tr>
<%} %>
</table>


</body>
</html>