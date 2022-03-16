<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body style ="background:lavender">
	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Truyum</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">Menu</a>
			<li><a href="#">Cart</a>
		</ul>
	</nav>
	<h2>Cart Items Available</h2>
	<table class="table table-hover" >
		<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Active</th>
			<th>Free Delivery</th>
			<th>Action</th>
		</tr>
		<c:forEach var="item" items="${cartitem}">
			<tr>
				<td>${item.name }</td>
				<td>Rs.${item.price }</td>
				<td>${item.active}</td>
				<td>${item.freeDelivery }</td>
				<td><a href="/cart-notification?id=${item.id}">Remove From Cart</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>