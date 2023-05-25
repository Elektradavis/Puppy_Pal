<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">  
<title>View Dog</title>
</head>
<body>

	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
    		<h1 class="text-primary">Welcome, <c:out value="${user.userName}"/></h1>
    		<a href="/dashboard">Back to Dashboard</a>
    	</div>

            <h2 class="text-primary text-info">Information About <c:out value="${dog.name}"/></h2>
    
            <h4>Breed: <c:out value="${dog.breed}"/></h4>
            <h4>Color: <c:out value="${dog.color}"/></h4>
            <h4>Age: <c:out value="${dog.age}"/></h4>
            <h4>Weight: <c:out value="${dog.weight}"/></h4>
            <h4>Sex: <c:out value="${dog.sex}"/></h4> 
             
			<div class="row">
				<div class="col">
					<a href="/doggies/${dog.id}/edit" class="btn btn-primary">Edit Dog</a>
			    </div>
			    <div class="col">         
			             <form:form id="delete" method="POST" action="/doggies/${dog.id}/delete" modelAttribute="dog">
			             	<div class="form-group row">
			            		<div class="col-sm-2"></div>
			            		<div class="col-sm-10">
			                		<form:button class="btn btn-danger">Delete Dog</form:button>
			            		</div>
			        		</div>
			        	</form:form>
			    </div>   	
			</div>
	  </div>
</body>
</html>