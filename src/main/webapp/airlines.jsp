<%@page import="com.flyaway.admin.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
</head>
<body>
<h2>List of Airlines</h2>
<table border="1">

<%AdminDAO dao=new AdminDAO();
List<String> l=(List<String>)dao.retr_airlines();
int i=1;
%>
<tr><th>Airlines</th></tr>
<%for(String s: l) { %>
<tr><td><%=s%></td></tr>
<%} %>
</table>


</body>
</html>