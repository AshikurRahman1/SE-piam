<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<%
    response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
   {
     	 response.sendRedirect("login.jsp");
  }
%>
Welcome Mr. ${userName} <br>
<br>
<br>
<hr/>
<ul>
<li><a href="account.jsp">All account </a></li><br>
<li><a href="showBankInfo.jsp">Banking info</a></li><br>
<li><a href="dairy.jsp">Dairy</a></li><br>
<li><a href="users.jsp">User</a></li><br>
<li><a href="logout.jsp">Logout</a></li>
</ul>
</center>
</body>
<center><footer>&copy; Copyright AshikurRahman 2017</footer></center>
</html>