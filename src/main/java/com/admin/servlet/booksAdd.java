package com.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.*;
import jakarta.servlet.http.Part;

import com.entity.bookDtls;
import com.dbconnect.*;
import com.DAO.*;



@WebServlet("/add_books")
@MultipartConfig
public class booksAdd extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String bookName = request.getParameter("bookName");
			String author = request.getParameter("authorName");
			Double price = Double.parseDouble(request.getParameter("price"));
			String categories = request.getParameter("bookCategory");
			String status = request.getParameter("bookStatus");
			Part part = request.getPart("bookPhoto");
			String fileName = part.getSubmittedFileName();
			
			bookDtls b = new bookDtls(bookName,author,price,categories,status,fileName,"admin");
			
			bookDAOImpl dao = new bookDAOImpl(dbConnection.takeConnection());
			
			
			boolean f = dao.addBooks(b);
			
			HttpSession session = request.getSession();
			
			  if (f) {
				  
				  	String path = getServletContext().getRealPath("")+"books";
				  	
				  	
				  	part.write(path + File.separator + fileName);
				  	
				  	
				  
			        session.setAttribute("status", "success");
			        session.setAttribute("message", "Book added successfully!");
			        // Redirect to a different URL, let's call it "success.jsp"
			        response.sendRedirect("admin/add_books.jsp");
			    } else {
			        session.setAttribute("status", "failed");
			        session.setAttribute("message", "Something went wrong..");
			        // Redirect back to the registration page to display the error message
			        response.sendRedirect("admin/add_books.jsp");
			    }
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
