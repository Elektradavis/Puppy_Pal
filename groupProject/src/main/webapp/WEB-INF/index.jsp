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
<title>Puppy Pal</title>
</head>
<body>

<div class="container container-light bg-light col-3 p-4">

	<h1 class="text-center">Puppy Pal!</h1>

	<h4 class="text-center">Registration</h4>

	<div class="container">
		<form:form action="/register" modelAttribute="newUser" class="form">

			<div class="form-row">
			 	<form:errors path="name" class="text-danger"/>
				<form:label path="name">User Name:</form:label>
				<form:input type="text" path="name" class="form-control"/>
			</div>

			<div class="form-row">
				<form:errors path="email" class="text-danger"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
			</div>

			<div class="form-row">
				<form:errors path="password" class="text-danger"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control"/>
			</div>

			<div class="form-row">
				<form:errors path="confirm" class="text-danger"/>
				<form:label for="" path="confirm">Confirm PW:</form:label>
				<form:input type="password" path="confirm" class="form-control"/>
			</div>

			<div class="btn-primary">
				<input type="submit" style="text-align:center" class="form-control" value="Register" class="btn-primary"/>
			</div>

		</form:form>
	</div>

	<h4 class="text-center">Log In</h4>

	<div class="container">
		<form:form action="/login" modelAttribute="newLogin" class="form">
			<div class="form-row">
				<form:errors path="email" class="text-danger"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
			</div>

			<div>
				<form:errors path="password" class="text-danger"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control"/>
			</div>

			<div class="form-row">
				<input type="submit" style="text-align:center" class="form-control" value="Login" class="btn-primary"/>
			</div>

		</form:form>
	</div>

</div>

</body>
</html>