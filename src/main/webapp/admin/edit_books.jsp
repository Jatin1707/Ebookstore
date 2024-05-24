<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.DAO.*" %>
<%@ page import="com.entity.*" %>
<%@ page import="com.dbconnect.*" %>
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Edit Books</title>
<%@include file="allCSS.jsp" %>
</head>
<body style= "background-color: #f0f2f2;">
	<%@include file="navbar.jsp" %>
	<div class ="container">
		<div class ="row">
			<div class ="col-md-4 offset-md-4">
				<div class = "card">
					<div class ="card-body">
					<h4 class ="text-center">Edit Books</h4>	
					
	 <%
	 	int id =0;
	 	 id = Integer.parseInt(request.getParameter("id"));
	 	bookDAOImpl dao = new bookDAOImpl(dbConnection.takeConnection());
	 	bookDtls b = dao.getBookbyId(id);
	 %> 				
					
	 <form action="../edit_books" method="post" enctype="multipart/form-data">
     
     	<input type ="hidden" name ="id" value= "<%=b.getBookId()%>">
     
        <div class= "form-group">
        	<label for="bookName">Book Name:</label>
        	<input type="text" id="bookName" name="bookName" class ="form-control" value= "<%=b.getBookName() %>" required>
		</div>
		
		<div class= "form-group">
        <label for="authorName">Author Name:</label>
        <input type="text" id="authorName" name="authorName" class ="form-control" value= "<%=b.getAuthor() %>" required>
		</div>
		
		
		<div class= "form-group">
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" class ="form-control" value ="<%=b.getPrice() %>" required>
		</div>
		
		
		<div class= "form-group">
        <label for="bookStatus">Book Status:</label>
        <select id="bookStatus" name="bookStatus" class ="form-control">
        	<%if("Active".equals(b.getStatus())){
			%>		        		
        		 <option value="Active">Active</option>
        	 <option value="Inactive">Inactive</option>
        	<%
        	} else{
        	%>
        		 <option value="Active">Active</option>
        	 <option value="Inactive">Inactive</option>
        		 <% } %>
        	
        
        </select>
		</div>
		
		<div class="text-center">
			<button type="submit" class="btn btn-primary">Add</button>
				
		</div>
    </form>		
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>