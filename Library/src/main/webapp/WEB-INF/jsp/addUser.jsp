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

.formalign {
	width: 600px;
	position: absolute;
	left: 30%;
}

.cen {
	position: absolute;
	float: right;
}
</style>


</head>

<body>
	<header class="navbar navbar-static-top">
		<div class="container-fluid">
			<nav class="collapse navbar-collapse bs-navbar-collapse">
				<ul class="nav navbar-nav nav-pills">

					<li><a href="/addbooks">Add books</a></li>
					<li><a href="/admin/addadmin">Add a administrator</a></li>
					<li><a href="/returnbook">Add a Users</a></li>
					<li><a href="/querybooks"> Query books</a></li>
					<li><a href="/borrowed_book">Borrowed Books</a></li>

				</ul>
			</nav>
		</div>
	</header>

	<main>
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Add User Details</h1>
		</div>
	</div>
	</main>
	<div class="formalign">

		<form:form method="post" modelAttribute="userObj">
			<div class="form-group">
				<form:label path="uid">Addmission Number</form:label>
				<form:input type="text" class="form-control" path="uid" />
			</div>

			<div class="form-group">
				<form:label path="ufname">First Name</form:label>
				<form:input type="text" class="form-control" path="ufname" />
			</div>
			<div class="form-group">
				<form:label path="ulname">Last Name</form:label>
				<form:input type="text" class="form-control" path="ulname" />
			</div>
			<div class="form-group">
				<form:label path="uage">Age</form:label>
				<form:input type="number" class="form-control" path="uage" />
			</div>
			<div class="form-group">
				<form:label path="uaddress">Address</form:label>
				<form:input type="text" class="form-control" path="uaddress" />
			</div>
			<div class="form-group">
				<form:label path="uphone">Phone Number</form:label>
				<form:input type="tel" class="form-control" path="uphone" />
			</div>
			<div class="form-group">
				<form:label path="uemail">Email</form:label>
				<form:input type="email" class="form-control" path="uemail" />
			</div>


			<div class="cen">
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		</form:form>

	</div>

</body>

</html>