package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;


public class Login extends HttpServlet {
public Login(){
	super();
}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("uname");
		String pass= request.getParameter("pass");
		String uroll= request.getParameter("uroll");
		LoginDao dao = new LoginDao();
	if(dao.check(uname,pass,uroll))
		{
			HttpSession session = request.getSession();
			session.setAttribute("userName",uname);
			session.setAttribute("password",pass);
			session.setAttribute("userRole",uroll);
			if(uroll.equals("admin"))
			{
				response.sendRedirect("admin.jsp");	
			}
			else if(uroll.equals("user")){
				response.sendRedirect("user.jsp");
			}
			
		}
		
		else
			{
			response.sendRedirect("login.jsp");
			}
		
	}



}
