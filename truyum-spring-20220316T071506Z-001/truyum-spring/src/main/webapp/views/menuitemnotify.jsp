<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Items</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
	</head>
	<body style = "backgorund:lavender">
		<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Truyum</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">Menu</a>
			<li><a href="#">Cart</a>
		</ul>
	</nav>
</head>
<body>
			<p style="color:green;font-weight:bold;">Item added to Cart Successfully</p>
			<br>
			<table class="table table-striped">
				<tr>
					<th class="col-left">Name</th>
					<th>Free Delivery</th>
					<th class="col-right">Price</th>
					<th>Category</th>
					<th>Action</th>
				</tr>
				<c:forEach var="item" items="${menuitems}">
				<tr>
					<td class="col-left">${item.name}</td>
					<td>${item.freeDelivery}</td>
					<td class="col-right">Rs.${item.price }</td>
					<td>${item.category}</td>
					
				</tr>
			</c:forEach>
			</table>
</body>
</html>