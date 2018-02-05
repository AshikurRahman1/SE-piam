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

public class DeleteBankInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			
		String account_number= request.getParameter("account_number");
		
		String sql ="delete from password_balance where account_number=?";
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/piam","root","root");
			PreparedStatement st =con.prepareStatement(sql);
			st.setString(1, account_number);
		   st.executeUpdate();
		    PrintWriter out = response.getWriter();
		    
		   out.println(" Delete Successfully ");
		  //  System.out.println();
		  // out.println(account_name+" "+account_number+" "+branch_name+" "+bank_name);
		   response.sendRedirect("showBankInfo.jsp");
		}
	    catch(Exception e)
		{
	    	e.printStackTrace();
	    	PrintWriter out = response.getWriter();
		    
			   out.println("not successfull");
		}
	
}

}
