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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table class="table  add">
		<thead class="thead-dark">
			<tr>
				<th>Serial No</th>
				<th>Book Name</th>
				<th>Author</th>
				<th>Quantity</th>
				<th>Price</th>
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
					<td>${lis.b_quantity}</td>
					<td>${lis.b_price}</td>
					<td>${lis.b_category}</td>
					<td>${avail}</td>
				
				</tr>
			</c:forEach>
			<table />
</body>
</html>