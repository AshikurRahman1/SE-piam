<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete User</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>
<a href="admin.jsp">Home </a> ||
<a href="displayUser.jsp">Display All User</a> ||
<a href ="createUser.jsp">Create A User</a> ||
<a href="logout.jsp">Logout</a>
<h2>Delete User</h2>
<hr/>
<br>
<%
//response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
 {
	 response.sendRedirect("login.jsp");
 }
%>
<form action="deleteUser">
User Id: <input type="text/html" name="user_id" required="required">
<br>
<br>
<input type ="Submit">
 
</form>

</center>
</body>
</html>