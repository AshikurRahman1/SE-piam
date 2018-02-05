<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create A User</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>
<a href="admin.jsp">Home</a> ||
<a href="displayUser.jsp">Display all user</a> ||
<a href="deleteUser.jsp">Delete User</a> ||
<a href="logout.jsp">Logout</a>
<br>
<%
//response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
 {
	 response.sendRedirect("login.jsp");
 }
%>
<form action="CreatUser">
<h2>Create A New User</h2>
<hr/>
User Id: <input type="text/html" name="user_id" required="required"br>
<br>
<br>
User Password: <input type="password" name="pass" required="required"br>
<br>
<br>
User Name: <input type="text" name="uname" required="required"br>
<br>
<br>
User Roll: <select type="text" name="uroll" required="required">
                   <option value="admin">Admin </option>
                   <option value="user"> User </option>
          </select>
         <br>
         <br>
<input type ="Submit">
 
</form>

</center>
</body>
<center><footer>&copy; Copyright AshikurRahman 2017</footer></center>

</html>