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
section .sec_img {
	height: 550px;
	background-image: url("images/1.jpg");
}
</style>


</head>

<body>
	<%@ include file="common/unavigation.jspf"%>
	<main>
	<div class="jumbotron">
		<div class="main-header">
			<div class="container">
				<h1 class="lead text-center">Welcome To Library</h1>
			</div>
		</div>
	</div>
	</main>
	<section>
		<div class="sec_img">
			<br> <br> <br>
			<div class="box">
				<br> <br> <br> <br>
				<h1 style="text-align: center; font-size: 35px;">Welcome to
					library</h1>
				<br> <br>
				<h1 style="text-align: center; font-size: 25px;">Opens at:
					09:00</h1>
				<br>
				<h1 style="text-align: center; font-size: 25px;">Closes at:
					15:00</h1>
				<br>
			</div>
		</div>
	</section>
</body>

</html>