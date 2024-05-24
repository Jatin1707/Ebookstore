package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.bookDAOImpl;
import com.dbconnect.dbConnection;

/**
 * Servlet implementation class deleteBooksServlet
 */
@WebServlet("/delete")
public class deleteBooksServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
		
			bookDAOImpl dao = new bookDAOImpl(dbConnection.takeConnection());
			boolean f = dao.deleteBooks(id);
			
			HttpSession session = request.getSession();
			if(f) {
			session.setAttribute("status", "success");
	        session.setAttribute("message", "Book deleted successfully!");
	        // Redirect to a different URL, let's call it "success.jsp"
	        response.sendRedirect("admin/all_books.jsp");
	    } else {
	        session.setAttribute("status", "failed");
	        session.setAttribute("message", "Something went wrong..");
	        // Redirect back to the registration page to display the error message
	        response.sendRedirect("admin/all_books.jsp");
	    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
