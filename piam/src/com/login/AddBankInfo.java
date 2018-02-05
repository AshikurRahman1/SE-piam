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

public class AddBankInfo extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		String account_number= request.getParameter("account_number");
		String balance= request.getParameter("balance");
		String password= request.getParameter("password");
		String email= request.getParameter("email");
		String sql ="insert into password_balance(account_number,balance,password,email) values(?,?,?,?)";
		 Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam","root","root");
			PreparedStatement st =con.prepareStatement(sql);
			st.setString(1, account_number);
			st.setString(2, balance);
			st.setString(3, password);
			st.setString(4, email);
		    st.executeUpdate();
		    PrintWriter out = response.getWriter();
		    out.println("You have successfully add new account");
		  // System.out.println();
		//  out.println(account_number+" "+balance+" "+password" "+email);
		  response.sendRedirect("showBankInfo.jsp");
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
