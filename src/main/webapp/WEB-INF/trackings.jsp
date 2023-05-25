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
 <title>Event Tracking</title>
 </head>
 <body>
 
 	<div class="container">
	  	<div class="d-flex justify-content-between align-items-center">
	  	 	<h1 class="text-primary"><c:out value="${dog.name}"/>'s Daily Tracking</h1>
	 		<a href="/dashboard">Back to Dashboard</a>
	 	</div>
	
	 	<table class="table table-light bg-light" >
	
	 			<tr>
	 				<th>Event</th>
	 				<th>Comments</th>
	 				<th>Date</th>
	 				<th>Time</th>
	 			</tr>
	 			<c:forEach var="tracking" items="${tracking}">
	 					<tr>
	 						<td><c:out value="${tracking.event}"/></td>
	 						<td><c:out value="${tracking.comments}"/></td>
	 						<td><fmt:formatDate value="${tracking.createdAt}" pattern="MM/dd/yy" /></td>
	 						<td><fmt:formatDate value="${tracking.createdAt}" pattern="HH:mm" /></td>
	
	 					</tr>
	 			</c:forEach>	
	 			</table>
		<div class="text-center">
    		<a href="/trackings/${dogId}/newTracking" class="btn btn-primary">Add a New Event</a>
  		</div>	 				
 	</div>	
 </body>
 </html> 