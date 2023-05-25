<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
 <%@ page isErrorPage="true" %>

 <!DOCTYPE html>
 <html>
 <head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <link rel="stylesheet" href="/css/create.css" />
 <meta charset="ISO-8859-1">
 <title>Add Dog</title>
 </head>
 <body>
 
 	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
    		<h1 class="text-primary">Welcome, <c:out value="${user.userName}"/></h1>
    		<a href="/dashboard">Back to Dashboard</a>
  		</div>
	 	<div class="container m-4">
	 		<h1 class="mx-4 text-primary text-info">Add your dog!</h1>
	 		<form:form action="/newDog" method="POST" modelAttribute="dog" class="form h6 col-4 p-4">
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
	 			<input type="submit" value="Add Dog" class="btn btn-primary" />
	 		</form:form>
	
			</div>
	</div>
 </body>
 </html> 