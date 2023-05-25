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
 <meta charset="ISO-8859-1">
 <title>Add Tracking</title>
 </head>
 <body>
 	<div class="container m-4">
		<div class="d-flex justify-content-between align-items-center">
    		<h1 class="text-primary">Welcome, <c:out value="${user.userName}"/></h1>
    		<a href="/dashboard">Back to Dashboard</a>
  		</div> 	
  		
 		<h3 class="mx-4 text-primary text-info">Add a New Event for <c:out value="${dog.name}"/>!</h3>
 		<form:form action="/trackings/${dogId}/newTracking" method="POST" modelAttribute="tracking" class="form h6 col-4 p-4">
 			<div class="form-row">
 				<form:label path="event">Event:</form:label>
 				<form:errors path="event" class="text-danger" />
 				<form:input path="event" type="text" class="form-control" />
 			</div>
 			<br>
 			<div class="form-row">
 				<form:label path="comments">Comments:</form:label>
 				<form:errors path="comments" class="text-danger" />
 				<form:textarea path="comments" row="4" cols="50" class="form-control" />
 			</div>
 			<br>
 			<div class="form-row">
 				<form:input type="hidden" path="dog" value="${dog.id}" class="form-control" />
 			</div>
 			<div class="form-row">
 				<form:input type="hidden" path="user" value="${user.id}" class="form-control" />
 			</div>
 			<input type="submit" value="Create Event" class="btn btn-primary" />
 		</form:form>

 	</div>
 </body>
 </html> 
