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
<title>Edit Dog</title>
</head>
<body>
<div class="container">
<a href="/logout">logout</a>

	<h1>Edit Dog</h1>
	
	<h5><a href="/dashboard">Dashboard</a></h5>

	<div class="container">
		<form:form action="/doggies/${dog.id}/edit" modelAttribute="dog" class="form" method="put">
		
			<div class="form-row">
				<form:label path="dogName">Name:</form:label>
				<form:errors path="dogName" class="text-danger" />
				<form:input path="dogName" type="text" class="form-control" />
			</div>
			<br>
			<div class="form-row">
				<form:label path="breed">Breed:</form:label>
				<form:errors path="breed" class="text-danger" />
				<form:input path="breed" type="text" class="form-control" />
			</div>
			<br>
			<div class="form-row">
				<form:label path="color">Coat Color:</form:label>
				<form:errors path="color" class="text-danger" />
				<form:input path="color" type="text" class="form-control" />
			</div>
			<br>
			<div class="form-row">
				Sex: <form:select path="sex">
					<form:option value="male" label="Male" />
					<form:option value="female" label="Female" />
				</form:select>
			</div>
			<br>
			<div class="form-row">
				<form:label path="age">Age:</form:label>
				<form:errors path="age" class="text-danger" />
				<form:input path="age" type="number" class="form-control" />
			</div>
			<br>
			<div class="form-row">
				<form:label path="weight">Weight (in lbs):</form:label>
				<form:errors path="weight" class="text-danger" />
				<form:input path="weight" type="number" class="form-control" />
			</div>
			<div class="form-row">
				<form:errors path="user" class="error" />
				<form:input type="hidden" path="user" value="${user.id}" class="form-control" />
			</div>
			<input type="submit" value="Submit" class="btn btn-success m-3" />
			<a href="/dashboard" class="btn btn-danger">Cancel</a>
		</form:form>
		
	</div>
			
		

		

	</div>

			<c:if test="${user==dog.user}">
			
				<td><a href="delete">delete</a></td>
				
			</c:if>


</div>

</body>
</html>