<%@page import= "com.flyaway.admin.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PasswordCheck</title>
</head>
<body>
<%
String npass = request.getParameter("newPasskey");
String npass1 = request.getParameter("newPasskey2");
String username = (String) session.getAttribute("Auname");
//out.println(username);
if(!(npass1.equals(npass))){
	
	out.println("password doesn't match");
}
else{
	AdminPOJO pj = new AdminPOJO();
	AdminDAO d = new AdminDAO();
	pj.setPass(npass);
	pj.setadmEmail(username);
	if(d.newPassSet(pj) !=0){
		response.sendRedirect("passwordUpdateSuccess.jsp");
	}
	else{
		out.println("Couldn't update");
	}
}

%>
</body>
</html>