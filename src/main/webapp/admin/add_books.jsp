<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCSS.jsp" %>
</head>
<body style= "background-color: #f0f2f2;">
	<%@include file="navbar.jsp" %>
	<div class ="container">
		<div class ="row">
			<div class ="col-md-4 offset-md-4">
				<div class = "card">
					<div class ="card-body">
					<h4 class ="text-center">Add Books</h4>	
					
					<%-- Use EL to retrieve the status and message from the session attributes and display accordingly --%>
<c:if test="${not empty sessionScope.status}">
    <div style="text-align: center; font-weight: bold; color: red;">
        ${sessionScope.message}
    </div>
    <%-- Clear the session attributes to avoid displaying the message multiple times --%>
    <c:remove var="status" scope="session"/>
    <c:remove var="message" scope="session"/>
</c:if>
					
					
	 <form action="../add_books" method="post" enctype="multipart/form-data">
     
        <div class= "form-group">
        	<label for="bookName">Book Name:</label>
        	<input type="text" id="bookName" name="bookName" class ="form-control" required>
		</div>
		
		<div class= "form-group">
        <label for="authorName">Author Name:</label>
        <input type="text" id="authorName" name="authorName" class ="form-control" required>
		</div>
		
		
		<div class= "form-group">
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" class ="form-control" required>
		</div>
		
		<div class= "form-group">
        <label for="bookCategory">Book Category:</label>
        <select id="bookCategory" name="bookCategory" class ="form-control">
            <option value="New Book">New Book</option>
            <option value="Fiction">Fiction</option>
            <option value="Non-Fiction">Non-Fiction</option>
            <!-- Add more categories as needed -->
        </select>
        </div>
        
		<div class= "form-group">
        <label for="bookStatus">Book Status:</label>
        <select id="bookStatus" name="bookStatus" class ="form-control">
            <option value="Active">Active</option>
            <option value="Inactive">Inactive</option>
        </select>
		</div>
		
		<div class ="form-group">
        <label for="exampleFormControlFile1">Upload Photo:</label>
        <input type="file" id="exampleFormControlFile1" name="bookPhoto" class ="form-control-file"><br>
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