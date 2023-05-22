<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" >
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1><c:out value="${dog.dogName}"></c:out></h1>
	<a href="/newTracking">create tracking!</a>
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
		<a href="/dashboard">back</a>
</body>
</html>