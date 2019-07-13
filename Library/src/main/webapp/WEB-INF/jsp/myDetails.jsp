<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<style>
.alig {
	margin-left: 45%;
}

.formalign {
	width: 600px;
	position: absolute;
	left: 30%;
}

.cen {
	position: absolute;
	float: right;
}

.alg {
	text-align: center;
}

.fog {
	width: 60%;
	position: absolute;
	left: 20%;
	padding: 20px;
}

.form-control {
	margin: 20px;
}

.wid {
	width: 100px;
}

.lev {
	margin-top: 10px;
}

.dis {
	float: right;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>


</head>
<body>
	<%@ include file="common/userPageNav.jsp"%>
	<main>
	<div class="jumbotron">
		<div class="main-header">
			<div class="container">
				<h1 class="lead text-center">My Details</h1>
			</div>
		</div>
	</div>
	</main>

	<table>
		<thead>
			<table>
				<tr>
					<th>Id:</th>
					<td>${id}</td>
				</tr>


				<tr>
					<th>Name:</th>
					<td>${name}</td>
				</tr>
				<tr>
					<th>Age:</th>
					<td>${age}</td>
				</tr>
				<tr>
					<th>Telephone:</th>
					<td>${tel}</td>
				</tr>
				<tr>
					<th>Email:</th>
					<td>${email}</td>
				</tr>
				<tr>
					<th>Address:</th>
					<td>${address}</td>
				</tr>
			</table>



		</thead>



	</table>

</body>
</html>

