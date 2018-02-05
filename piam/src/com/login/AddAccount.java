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

public class AddAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		try
			{
			String account_name= request.getParameter("account_name");
			String account_number= request.getParameter("account_number");
			String branch_name= request.getParameter("branch_name");
			String bank_name= request.getParameter("bank_name");
			String sql ="insert into account_manager(account_name,account_number,branch_name,bank_name) values(?,?,?,?)";
			 Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam","root","root");
				PreparedStatement st =con.prepareStatement(sql);
				st.setString(1, account_name);
				st.setString(2, account_number);
				st.setString(3, branch_name);
				st.setString(4, bank_name);
			    st.executeUpdate();
			    PrintWriter out = response.getWriter();
			   // out.println("You have successfully add new account");
			  //  System.out.println();
			  // out.println(account_name+" "+account_number+" "+branch_name+" "+bank_name);
			    response.sendRedirect("account.jsp");
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
