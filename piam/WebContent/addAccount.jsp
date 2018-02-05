<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Account</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>
<hr/>
<a href="admin.jsp">Home </a> ||
<a href="addAccount.jsp">Add Account </a> ||
<a href="deleteAccount.jsp">Delete Account </a>||
<a href="display.jsp">Display All Account </a>||
<a href="logout.jsp">Logout</a>
<hr/>

<h2> Add Account</h2>
<%
//response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
 {
	 response.sendRedirect("login.jsp");
 }
%>

<form action="addAccount">
Account Name: <input type="text" name="account_name" required="required">
<br>
<br>
Account Number: <input type="text/html" name="account_number" required="required">
<br>
<br>
Branch Name: <input type="text" name="branch_name" required="required">
<br>
<br>
Bank Name: <input type="text" name="bank_name" required="required">
<br>
<br>
<input type ="submit">
</center>
</body>
<center><footer>&copy; Copyright AshikurRahman 2017</footer></center>
</html>