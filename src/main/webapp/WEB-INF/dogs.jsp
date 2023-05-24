<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Dog Dashboard</title>
</head>
<body>

	<div class="container">
		<h1>Welcome, <c:out value="${user.userName}"/>!</h1>
		
				<a href="/logout">logout</a>
		
		<table class="table table-light bg-light" >
		
			<tr>
				<th>Name</th>
				<th>Breed</th>
				<th>Age</th>
				<th>Daily Tracking</th>
			</tr>
			<c:forEach var="dog" items="${dogs}">
				
					<tr>
						<td><a href="doggies/${dog.id}"><c:out value="${dog.dogName}"/></a></td>
						<td><c:out value="${dog.breed}"/></td>
						<td><c:out value="${book.age}"/></td>
					<c:if test="${user==dog.user}">
						<td><a href="tracking/">Tracking</a></td>
				   </c:if>
						
					</tr>
				
			</c:forEach>
		
		</table>
		<a style="text-align:center" class="form-control" href="/newDog"> Add a Dog!</a>
	</div>

</body>
</html>