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
					<li><a href="/query"> Query books</a></li>
					<li><a href="borrowed_book">Borrowed Books</a></li>

				</ul>
			</nav>
		</div>
	</header>

	<main>
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Add Book Details</h1>
		</div>
	</div>
	</main>
	<div>
		<form:form method="post" modelAttribute="obj">
			<div class="form-row">
				<div class="form-group col-sm-6">
					<form:label path="b_id">Book Number</form:label>
					<form:input type="text" class="form-control" path="b_id"
						placeholder="SerialNo" />
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-sm-6">
					<form:label path="b_name">Book Name</form:label>
					<form:input type="text" class="form-control" id="bookname"
						placeholder="Book Name" path="b_name" />
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-sm-6">
					<form:label path="b_author">Author</form:label>
					<form:input type="text" class="form-control" id="author"
						placeholder="Author" path="b_author" />
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-sm-6">
					<form:label path="b_quantity">Quantity</form:label>
					<form:input type="text" class="form-control" id="quantity"
						placeholder="Quantity" path="b_quantity" />
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-sm-6">
					<form:label path="b_price">Price</form:label>
					<form:input type="text" class="form-control" path="b_price"
						placeholder="Price" />
				</div>
			</div>

			<%-- <div class="form-row">
				<div class="form-group col-sm-6">
					<form:label path="b_category">Category</form:label>
					<form:input type="text" class="form-control" path="b_category"
						placeholder="catagory" />
				</div>
			</div> --%>


				<div class="form-group col-sm-6">
				<form:label path="b_category">Category</form:label>
				<form:select path="b_category" class="form-control">
					<option selected>Science</option>
					<option selected>Mathematics</option>
					<option selected>Arts</option>
					<option selected>Business</option>
					<option selected>Political</option>
					<option selected>Story</option>
					<option selected>Others</option>
				</form:select>
			</div>



			<div class="alig">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form:form>
	</div>

</body>

</html>