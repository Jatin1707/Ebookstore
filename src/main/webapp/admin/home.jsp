<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCSS.jsp" %>
<style type="text/css">
a{
text-decoration: none;
color: black;
}
a:hover {
	text-decoration: none;
	color: green;
	
}

.text-center {
      text-align: center;
    }
    
    .color {
      /* Define your desired color, e.g., red (#ff0000) */
      color: #ff0000;
    }
    
    .success {
      /* Define the color for success messages */
      color: green;
</style>

</head>
<body>

<%@include file="navbar.jsp" %>
<br>
<h4 class ="text-center color success mt-3"> Admin Home</h4>
	<div class ="container">
		<div class = "row p-5">
			<div class ="col-md-3">
		<a href= "add_books.jsp">
				<div class = "card">
					<div class = "card-body text-center">
					<i class="fa-solid fa-book-medical fa-3x text-primary"></i>
						<br>
						<h4>Add Books</h4>
						-----------
					</div>
				</div>
		</a>
			</div>
			
			<div class ="col-md-3">
		<a href= "all_books.jsp">	
				<div class = "card">
					<div class = "card-body text-center">
						<i class="fa-solid fa-book-open fa-3x text-danger"></i>
						<br>
						<h4>All Books</h4>
						-----------
					</div>
				</div>
		</a>		
			</div>
			
			<div class ="col-md-3">
		<a href= "orders.jsp">	
				<div class = "card">
					<div class = "card-body text-center">
						<i class="fa-solid fa-dolly fa-3x text-warning"></i>
						<br>
						<h4>Orders</h4>
						-----------
					</div>
				</div>
		</a>		
			</div>
			
			<div class ="col-md-3">
		<a href= "logout.jsp">
				<div class = "card">
					<div class = "card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i>
						<br>
						<h4>Logout</h4>
						-----------
					</div>
				</div>
		</a>		
			</div>
			
		</div>
	</div>


</body>
<div style ="margin-top: 140px";>
<%@ include file ="footer.jsp" %>
</div>

</html>