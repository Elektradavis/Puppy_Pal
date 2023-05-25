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
		<div class="d-flex justify-content-between align-items-center">
    		<h1 class="text-primary">Welcome, <c:out value="${user.userName}"/></h1>
    		<a href="/dashboard">Back to Dashboard</a>
    	</div>

		<h2 class="text-primary text-info">Edit Information About <c:out value="${dog.name}"/></h2>
	
			<form:form action="/doggies/${dog.id}/edit" modelAttribute="dog" class="form" method="POST">
			
				<div class="form-row">
					<form:label path="name">Name:</form:label>
					<form:errors path="name" class="text-danger" />
					<form:input path="name" type="text" class="form-control" />
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
				<input type="submit" value="Edit" class="btn btn-primary" />
			</form:form>
		
	</div>
</body>
</html>