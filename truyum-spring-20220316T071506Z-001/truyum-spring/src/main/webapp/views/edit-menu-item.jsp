<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Truyum</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
	</head>
	<body style = "background:lavender">
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Truyum</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Menu</a>
				<li><a href="#">Cart</a>
			</ul>
		</nav>
		<h2 class="">Edit Menu Item</h2>
		<form name="editMenuItemForm"  action="edit-menu-item-notification">
			<div class="form-group">
				<label>Menu Item ID</label>
				<input type="text" class="form-control" name="id" id="id" value="${id }"/>
			</div>
			<div class="form-group">
				<label>Menu Item NAME</label>
				<input type="text" class="form-control" name="name" id="name" value="aa"/>
			</div>
			<div class="form-group">
				<label>Menu Item Price</label>
				<input type="text" class="form-control" name="price" id="price" value="100"/>
			</div>	
			<div class="form-group">
				<label >Active</label>
				<input type="radio" name="active" id="active" value="Yes" checked>Yes
				<input type="radio" name="active" id="active" value="No">No
			</div>
			<div class="form-group">
				<label >Date of Launch</label>
				<input class="form-control" type="text" name="date" id="date" placeholder="dd/mm/yyyy" value="27/04/2022"></input>
			</div>
			<div class="form-group">
				<label >Category</label>
				<select class=" form-control" name="category" id="category">
					<option value="select">--Select--</option>
					<option value="Starters">Starters</option>
					<option value="Main Course" selected>Main Course</option>
					<option value="Desert">Desert</option>
					<option value="Drinks">Drinks</option>
				</select>
			</div>
			<div class="form-group">
					<label >Free Delivery
						<input type="checkbox" name="freeDelivery" id="freeDelivery" checked>Free Delivery
						<span class="form-checkbox"></span>
					</label>
			</div>
			<div >
					<input class="form-button" type="submit" name="submit" value="Save"></input>
			</div>
		</form>
	</body>
</html>