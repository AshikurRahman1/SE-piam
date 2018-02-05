<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Account</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>
<hr/>
<a href="admin.jsp">Home </a> ||
<a href="addAccount.jsp">Add Account </a> ||
<a href="deleteAccount.jsp">Delete Account </a> ||
<a href="display.jsp">Display All Account </a> ||
<a href="logout.jsp">Logout</a>
<hr/>

<h2> Delete Account</h2>
<%
//response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
 {
	 response.sendRedirect("login.jsp");
 }
%>

<form action="DeleteAccount">

Account Number: <input type="text/html" name="account_number" required="required">

<br>
<br>
<input type ="Submit">
</center>
</body>
</html>