package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreatUser extends HttpServlet {
public CreatUser()
    { 
	 super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try
			{
			String user_id= request.getParameter("user_id");
			String pass= request.getParameter("pass");
			String uname= request.getParameter("uname");
			String uroll= request.getParameter("uroll");
			String sql ="insert into user(user_id,pass,uname,uroll) values(?,?,?,?)";
			 Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam","root","root");
				PreparedStatement st =con.prepareStatement(sql);
				st.setString(1, user_id);
				st.setString(2, pass);
				st.setString(3, uname);
				st.setString(4, uroll);
			    st.executeUpdate();
			    PrintWriter out = response.getWriter();
			    out.println("you have successfully create a user");
			    response.sendRedirect("users.jsp");
			}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();	
		}
			catch(SQLException e)
		{
				
		}
		
	}


}
