<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>


<form action="Login" method = "get"><br>
<br>
 User Name: <input type="text" name="uname"><br>
 <br>
 Password: <input type="password" name="pass"><br>
 <br>
 User Role: <select type="text" name="uroll" required="required">
                   <option value="admin">Admin </option>
                   <option value="user"> User </option>
          </select>
         <br>
         <br>
<input type ="Submit" value="Login"><br>
</form>
</center>
</body>
</html>
