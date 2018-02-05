<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<center>
<br>
<br>
<a href="admin.jsp">Home </a> ||
<a href="addAccount.jsp">Add Account </a> ||
<a href="deleteAccount.jsp">Delete Account</a> ||
<a href="display.jsp">Display All Account </a> ||
<a href="logout.jsp">Logout</a>
<hr/>
<h2> Display all account</h2>
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





<table class="table table-striped table-bordered  "> <th>Account Name </th> <th> Ac. Number </th>  <th> Branch Name </th>    <th> Bank Name </th>  
                		
			                <%
			                	try{
			                		
			                		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam", "root", "root");
			                		Statement statement = con.createStatement();
			                		ResultSet rs = statement.executeQuery("select * from account_manager");
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
</form>
</body>
<footer>&copy; Copyright AshikurRahman 2017</footer>

</html>