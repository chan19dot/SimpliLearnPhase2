<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Portal</title>
</head>
<body>
<% %>
<form action="transactionSuccess.jsp">
Credit card number<input type="number" name="credit card number" max=999999999999999999">
<br>
<br>
expiry date<input type="month" id="start" name="expiryDate">
<br>
<br>
Name on card:<input type="text" name="name on card">
<br>
<br>
CVV:<input type="number" name="CVV" min="1" max="999">
<br>
<br>
<input type="submit">
</form>

</body>
</html>