<%@ page import = "com.flyaway.admin.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String Uname =request.getParameter("Auname");
String Pass = request.getParameter("Apass");
AdminDAO dao = new AdminDAO();
AdminPOJO pojo = new AdminPOJO();
pojo.setadmEmail(Uname);
pojo.setPass(Pass);
if(dao.checkDb(pojo)==1){
	out.println("Welcome!");
	String redirectURL = "adminOperations.jsp";
	session.setAttribute("Auname", Uname);
	response.sendRedirect(redirectURL); 
}
else{
	out.println("Please check your credentials");
}
%>




</body>
</html>