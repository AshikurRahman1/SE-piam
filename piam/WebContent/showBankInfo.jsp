<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Bank Info</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<br>
<a href="admin.jsp">Home</a> ||
<a href="addBankInfo.jsp">Add BInfo</a> ||
<a href="deleteBankInfo.jsp">Delete BInfo</a> ||
<a href="logout.jsp">Logout</a>
<hr/>
<%
//response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
 if(session.getAttribute("userName")==null)
 {
	 response.sendRedirect("login.jsp");
 }
%>
<%@ page import = "java.io.*,java.util.*,
				 javax.servlet.*,
				   java.io.IOException,
				     java.io.PrintWriter, 
				     java.sql.Connection,
				      java.sql.DriverManager,
				       java.sql.ResultSet,
				        java.sql.Statement,
				        javax.servlet.http.HttpServletResponse" %> 




 <h3>All Banking Information</h3>
 <hr>
<table class="table table-striped table-bordered  "> <th>Ac Number</th> <th> Balance </th>  <th>Password </th>    <th> Email Id </th>  
                		
			                <%
			                	try{
			                		
			                		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam", "root", "root");
			                		Statement statement = con.createStatement();
			                		ResultSet rs = statement.executeQuery("select * from password_balance");
			                		while(rs.next())
			                		{
			                			out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3)+ "</td><td>"+rs.getString(4)+"</td></tr>");
			                		}
			                		out.println("</table><br/>");
			                	}catch(Exception e)
			                    {
			                		System.out.println("Something is wrong");

			                    }
			                %>
			                </center>
</body>
</html>