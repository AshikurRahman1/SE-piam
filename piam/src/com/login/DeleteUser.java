package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteUser extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			
		String user_id= request.getParameter("user_id");
		
		String sql ="delete from user where user_id=?";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam","root","root");
			PreparedStatement st =con.prepareStatement(sql);
			st.setString(1, user_id);
		   st.executeUpdate();
		    PrintWriter out = response.getWriter();
		    
		   out.println(" Delete Successfully ");
		   response.sendRedirect("users.jsp");
		}
	    catch(Exception e)
		{
	    	e.printStackTrace();
	    	PrintWriter out = response.getWriter();
		    
			   out.println("not successfull");
		}
	}
}
