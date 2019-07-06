<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script src="/js/jquery.form.js"></script>
</head>
<body>

	<main>
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Barrowed Book Details</h1>
		</div>
	</div>
	</main>
	<div>

		<table class="table  add">
			<thead class="thead-dark">
				<tr>
					<th>User_Id</th>
					<th>Book_Id</th>
					<th>Book_Name</th>
					<th>Book_BorrowDate</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="bbrw">
					<tr>
						<td>${bbrw.user_id}</td>
						<td>${bbrw.book_id}</td>
						<td>${bbrw.bookname}</td>
						<td>${bbrw.date}</td>

						<td><a type="Button" class="btn btn-success"
							href="/update-book?id=${bbrw.trasac_id}">Update</a></td>
						<td><a type="Button" class="btn btn-warning"
							href="/deletebook?id=${bbrw.trasac_id}">Delete</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>





</body>
</html>