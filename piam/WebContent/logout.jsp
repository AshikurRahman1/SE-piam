<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%@ page import = "java.io.*,java.util.*,
				 javax.servlet.*,
				   java.io.IOException,
				     java.io.PrintWriter, 
				     java.sql.Connection,
				      java.sql.DriverManager,
				       java.sql.ResultSet,
				        java.sql.Statement,
				        javax.servlet.http.HttpServletResponse" %> 
				        <%
				        session.invalidate();
				        response.sendRedirect("./index.jsp");
				        %>

</body>
</html>