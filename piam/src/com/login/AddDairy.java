package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddDairy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try
		{
		String personal_memories= request.getParameter("personal_memories");
		String user_id= request.getParameter("user_id");
		String sql ="insert into personal_info(personal_memories,user_id) values (?,?)";
		 Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam","root","root");
			PreparedStatement st =con.prepareStatement(sql);
			st.setString(1, personal_memories);
			st.setString(2, user_id);
		    st.executeUpdate();
		    PrintWriter out = response.getWriter();
		    out.println(personal_memories+user_id);
		 // System.out.println("hi");
		//  out.println(account_number+" "+balance+" "+password" "+email);
		  response.sendRedirect("dairy.jsp");
		}
	catch(SQLException e)
	{
		e.printStackTrace();	
	}
	catch(Exception e)
		{
			e.printStackTrace();	
			
		}
		
	
}
}
