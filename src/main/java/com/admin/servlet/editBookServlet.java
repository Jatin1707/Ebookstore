package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.DAO.bookDAOImpl;
import com.dbconnect.dbConnection;
import com.entity.bookDtls;

@WebServlet("/edit_books")
public class editBookServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 int id =Integer.parseInt(request.getParameter("id"));
			String bookName = request.getParameter("bookName");
			String author = request.getParameter("authorName");
			Double price = Double.parseDouble(request.getParameter("price"));
			String status = request.getParameter("bookStatus");
			
			bookDtls b = new bookDtls();
			b.setBookId(id);
			b.setBookName(bookName);
			b.setAuthor(author);
			b.setPrice(price);
			b.setStatus(status);
			
			bookDAOImpl dao = new bookDAOImpl(dbConnection.takeConnection());
			boolean f = dao.updateEditBooks(b);
			
			HttpSession session = request.getSession();
			if(f) {
			session.setAttribute("status", "success");
	        session.setAttribute("message", "Book updated successfully!");
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
