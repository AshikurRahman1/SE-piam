<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Dairy</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>
<a href ="admin.jsp">Home</a> ||
<a href="addDairy.jsp">Add dairy</a> ||
<a href="showDairy.jsp">Show dairy</a> ||
<a href="logout.jsp">Logout</a>
<br>
<br>
<h2>Delete Dairy</h2>
<hr/>
<form action="deleteDairy">
User ID: <input type="text/html" name="user_id" required="required">
<input type="Submit">
</form>
</center>
</body>
</html>