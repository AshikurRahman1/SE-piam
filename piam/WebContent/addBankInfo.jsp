<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Banking Information</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>
<a href="admin.jsp">Home</a> ||
<a href="showBankInfo.jsp">Show BInfo</a> ||
<a href="deleteBankInfo.jsp">Delete BInfo</a> ||
<a href="logout.jsp">Logout</a>
<hr/>
<br>
<%
//response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
 {
	 response.sendRedirect("login.jsp");
 }
%>
<h3>Add Banking Information</h3>
<hr>
<form action="addBankInfo">
Account Number: <input type="text/html" name="account_number" required="required">
<br>
<br>
Balance: <input type="text/html" name="balance" required="required">
<br>
<br>
Password: <input type="password" name="password" required="required">
<br>
<br>
Email: <input type="text/html" name="email" required="required">
<br>
<br>
<input type ="Submit">
 
</form>

</center>
<center><footer>&copy; Copyright AshikurRahman 2017</footer></center>
</body>
</html>