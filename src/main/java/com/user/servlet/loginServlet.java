package com.user.servlet;
import com.DAO.*;
import com.dbconnect.*;
import com.entity.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/login")
public class loginServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDAOImpl dao = new userDAOImpl(dbConnection.takeConnection());
		HttpSession session = request.getSession();
		
		try {
			String email = request.getParameter("email");
			String psw = request.getParameter("psw");
			
			if("admin@gmail.com".equals(email) && "admin".equals(psw)) {
				
				user us = new user();
				
				session.setAttribute("userobj", us);
				response.sendRedirect("admin/home.jsp");
			}
			else {
				user us = dao.login(email, psw);
				
				if(us!=null) {
					session.setAttribute("userobj", us);
					response.sendRedirect("home.jsp");
				}
				else {
					session.setAttribute("status", "failed");
				    session.setAttribute("message", "Please check Email and Password");
				    // Redirect back to the registration page to display the error message
				    response.sendRedirect("login.jsp");
				}
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
	}

}
