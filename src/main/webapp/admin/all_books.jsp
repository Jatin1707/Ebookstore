<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.DAO.*" %>
<%@ page import="com.entity.bookDtls" %>
<%@ page import="com.dbconnect.*" %>
<%@ page import="java.util.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCSS.jsp" %>
</head>
<body>
	<%@ include file ="navbar.jsp" %>
	<br>
	<h3 class= "text-center"> Hello Admin</h3>
	<br>
	
	<c:if test="${not empty sessionScope.status}">
    <div style="text-align: center; font-weight: bold; color: red;">
        ${sessionScope.message}
    </div>
    <%-- Clear the session attributes to avoid displaying the message multiple times --%>
    <c:remove var="status" scope="session"/>
    <c:remove var="message" scope="session"/>
</c:if>

	<table class="table table-striped ">
  <thead class= "bg-info">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  	bookDAOImpl dao = new bookDAOImpl(dbConnection.takeConnection());
  	List<bookDtls> list = dao.getAllBooks();
  	for(bookDtls b: list){
  %>
	
	 <tr>
      <td><%= b.getBookId() %></td>
      <td><img src ="../books/<%=b.getPhotoName()%>"
			style= "width: 50px; height 50px;"></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
      <td><%=b.getStatus() %></td>
      
	  <td>	
	  	<a href ="edit_books.jsp?id=<%=b.getBookId()%>" class ="btn btn-sm btn-primary mr-1">Edit</a>      
	  	<a href ="../delete?id=<%=b.getBookId()%> " class ="btn btn-sm btn-danger">Delete</a>
	  	</td>      
    </tr>
	
<%
  	}
%>  		
  
  </tbody>
</table>
	
</body>
<div style ="margin-top: 140px";>
<%@ include file ="footer.jsp" %>
</div>
</html>