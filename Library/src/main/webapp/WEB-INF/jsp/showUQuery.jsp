<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Book Details</title>

<link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/signin.css" rel="stylesheet">
<script src="assets/js/ie-emulation-modes-warning.js"></script>
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
</head>

<body>
		<%@ include file="common/userPageNav.jsp"%>


	<main>
	<div class="jumbotron">
		<div class="main-header">
			<div class="container">
				<h1 class="lead text-center">Avalabile Books</h1>
			</div>
		</div>
	</div>
	</main>

	<table class="table  add">
		<thead class="thead-dark">
			<tr>
				<th>Serial No</th>
				<th>Book Name</th>
				<th>Author</th>
				<th>Category</th>
				<th>Available</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="lis">
				<tr>
					<td>${lis.b_id}</td>
					<td>${lis.b_name}</td>
					<td>${lis.b_author}</td>
					<td>${lis.b_category}</td>
					<td>${avail}</td>

				</tr>
			</c:forEach>
			<table />
</body>
</html>
</body>
</html>