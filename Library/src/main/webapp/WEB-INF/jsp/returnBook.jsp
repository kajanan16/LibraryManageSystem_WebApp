<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
.lev
{
margin-top:10px;
}


</style>


</head>

<body>
	<header class="navbar navbar-static-top">
		<div class="container-fluid">
			<nav class="collapse navbar-collapse bs-navbar-collapse">
				<ul class="nav navbar-nav nav-pills">
					<li><a href="/">Home</a></li>
					<li><a href="/addbooks">Add books</a></li>
					<li><a href="/admin/addadmin">Add a administrator</a></li>
					<li><a href="/addUser">Add a Users</a></li>
					<li><a href="/querybooks"> Query books</a></li>
					<li><a href=/borrowed_book>Borrow Books</a></li>

				</ul>
			</nav>
		</div>
	</header>
	<main>
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Return Books</h1>
		</div>
	</div>
	</main>

	<div class="fog">

		<form class="form-signin" role="form" method="post">
			<h2 class="form-signin-heading alg">Please Add Detail</h2>
			<input type="number" class="form-control" placeholder="Book Id"
				name="b_id" required autofocus> <input type="text"
				class="form-control" placeholder="User Id" name="uid" required>

			<button class="btn btn-lg btn-primary btn-block wid " type="submit">Submit</button>
				
		</form>
	</div>
	



</body>
</html>