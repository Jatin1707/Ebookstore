package com.user.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.entity.*;
import com.DAO.*;
import com.dbconnect.dbConnection;
@WebServlet("/register")
public class registerServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String name = request.getParameter("fname");
			String email = request.getParameter("email");
			String pno = request.getParameter("phone");
			String psw = request.getParameter("psw");
			String check = request.getParameter("check");
			
			user us = new user();
			us.setName(name);
			us.setEmail(email);
			us.setPhone(pno);
			us.setPassword(psw);
			
			HttpSession session = request.getSession();
			
			if (check != null) {
			    userDAOImpl dao = new userDAOImpl(dbConnection.takeConnection());
			    boolean f = dao.userRegister(us);
			    if (f) {
			        session.setAttribute("status", "success");
			        session.setAttribute("message", "Registration successful!");
			        // Redirect to a different URL, let's call it "success.jsp"
			        response.sendRedirect("register.jsp");
			    } else {
			        session.setAttribute("status", "failed");
			        session.setAttribute("message", "Something went wrong..");
			        // Redirect back to the registration page to display the error message
			        response.sendRedirect("register.jsp");
			    }
			} else {
			    session.setAttribute("status", "failed");
			    session.setAttribute("message", "Please check terms and conditions");
			    // Redirect back to the registration page to display the error message
			    response.sendRedirect("register.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
