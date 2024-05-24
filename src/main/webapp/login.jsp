<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBookstore: login</title>
<%@include file="assets/allCSS.jsp"%>

</head>
<body style ="background-color: #f0f1f2">
	<%@include file="assets/navbar.jsp"%>
	<div class="container pd-2">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
			<div class ="card">
				<div class="card-body">
				<h3 class = "text-center">Login</h3>
				
<%-- Use EL to retrieve the status and message from the session attributes and display accordingly --%>
<c:if test="${not empty sessionScope.status}">
    <div style="text-align: center; font-weight: bold; color: red;">
        ${sessionScope.message}
    </div>
    <%-- Clear the session attributes to avoid displaying the message multiple times --%>
    <c:remove var="status" scope="session"/>
    <c:remove var="message" scope="session"/>
</c:if>
				
					<form action ="login" method = "post">
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" required ="required" name ="email">
							
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								required ="required" name = "psw">
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary">Submit</button>
							<br>
							<a href ="register.jsp"> create account </a>
						</div>
					</form>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file ="assets/footer.jsp" %>
</html>