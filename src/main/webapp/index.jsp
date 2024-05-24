<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%@ page import="com.dbconnect.dbConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBookstore: Index</title>
<%@include file="assets/allCSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/library1.jpg");
	height: 30vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="assets/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-lg-center text-dark">Online Bookstore</h2>
	</div>

	<!-- recent books section -->

	<div class="container">
		<h3 class="text-center">Recent Books</h3>
		<div class="row">

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	
	<!-- end recent book section  -->
	<hr>
	<!-- New books section -->

	<div class="container">
		<h3 class="text-center">New Books</h3>
		<div class="row">

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-2"><i class="fa-solid fa-cart-plus mr-1"></i>Add Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- end new book section  -->
	<hr>
	<!-- old books section -->

	<div class="container">
		<h3 class="text-center">Old Books</h3>
		<div class="row">

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> 
							<a href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a>  <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a>  <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Introduction To Java Programming</p>
						<p>K.Somasundaram</p>
						<p>Categories:New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a>  <a
								href="" class="btn btn-success btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>

	<!-- end Old book section  -->
	<%@ include file ="assets/footer.jsp" %>
</body>
</html>