<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
 {
	 response.sendRedirect("login.jsp");
 }
%>
Welcome Mr. ${userName} <br>
<a href="account.jsp">All Acoount </a><br>

<form action ="Logout"><br>
<input type ="submit" value ="Logout">
</form>
</body>
</html>