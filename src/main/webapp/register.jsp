<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBookstore: Register</title>
<%@include file="assets/allCSS.jsp"%>
</head>
<body style ="background-color: #f0f1f2">
	<%@include file="assets/navbar.jsp"%>
	<br>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class ="text-center"> Registration page </h4>
						<br>
<%-- Use EL to retrieve the status and message from the session attributes and display accordingly --%>
<c:if test="${not empty sessionScope.status}">
    <div style="text-align: center; font-weight: bold; color: red;">
        ${sessionScope.message}
    </div>
    <%-- Clear the session attributes to avoid displaying the message multiple times --%>
    <c:remove var="status" scope="session"/>
    <c:remove var="message" scope="session"/>
</c:if>
					
					<br>
						<form action = "register" method = "post" >
						<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required ="required" name ="fname">
							</div>
						
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required ="required" name = "email">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No.</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required ="required" name = "phone">
							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required ="required" name = "psw">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name = "check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree terms and conditions</label>
							</div>
							<button type="submit" class="btn btn-primary mt-2">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	
	
	<%@ include file="assets/footer.jsp" %>
</body>
</html>