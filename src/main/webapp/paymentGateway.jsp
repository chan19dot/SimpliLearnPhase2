<%@ page import="com.flyaway.admin.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String id = request.getParameter("id");
String name= (String) session.getAttribute("cname");
String e_mail = (String) session.getAttribute("cemail");
String phone = (String) session.getAttribute("cphone");
//out.println(id);
AdminDAO ad = new AdminDAO();
FlighPOJO f = ad.fetch1(id);
int np = (int) session.getAttribute("passengers");
session.setAttribute("passengers", np);
f.setPrice(f.getPrice()*np);
double price = f.getPrice();
session.setAttribute("price", price);
session.setAttribute("airline", f.getAirline());
//out.println(np);
%>
Name:<%out.println(name); %>
<br>
E-mail:<%out.println(e_mail); %>
<br>
phone:<%out.println(phone); %>
<table>
<tr><th>Airline</th><th>Source</th><th>Destination</th><th>Date</th><th>Total Price</th><th>Number of passengers</th>
<tr><td><%=f.getAirline() %></td><td><%=f.getSource() %></td><td><%=f.getDestination() %></td><td><%=f.getDateOfFlight() %></td><td><%=f.getPrice() %></td><td><%=np %></td></tr>
</table>
<form action="transaction.jsp">
<input type="submit" value="pay">
</form>
</body>
</html>