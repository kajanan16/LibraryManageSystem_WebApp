<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script src="/js/jquery.form.js"></script>

</head>
<body>
	<header class="navbar navbar-static-top">
		<div class="container-fluid">
			<nav class="collapse navbar-collapse bs-navbar-collapse">
				<ul class="nav navbar-nav nav-pills">
					<li><a href="/">Home</a></li>
					<li><a href="/addbooks">Add books</a></li>
					<li><a href="/addUser">Add a Users</a></li>
					<li><a href="query"> Query books</a></li>
					<li><a href="borrowed_book">Borrowed Books</a></li>
					<li><a href="/admin/addadmin">Return Books</a></li>

				</ul>
			</nav>
		</div>
	</header>

	<main>
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Welcome to Library Management
				System!</h1>
		</div>
	</div>

	</main>

	<div>

		<table class="table  add">
			<thead class="thead-dark">
				<tr>
					<th>Serial No</th>
					<th>Book Name</th>
					<th>Author</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Category</th>

					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="lis">
					<tr>
						<td>${lis.b_id}</td>
						<td>${lis.b_name}</td>
						<td>${lis.b_author}</td>
						<td>${lis.b_quantity}</td>
						<td>${lis.b_price}</td>
						<td>${lis.b_category}</td>
						<td><a type="Button" class="btn btn-success"
							href="/update-book?id=${lis.b_id}">Update</a></td>
						<td><a type="Button" class="btn btn-warning"
							href="/deletebook?id=${lis.b_id}">Delete</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>

