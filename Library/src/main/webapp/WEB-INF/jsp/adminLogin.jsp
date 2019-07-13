<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Admin Login</title>

<link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="assets/css/signin.css" rel="stylesheet">

<script src="assets/js/ie-emulation-modes-warning.js"></script>

<script src="assets/js/ie10-viewport-bug-workaround.js"></script>

</head>

<body>
	<%@ include file="common/unavigation.jspf"%>
	<main>
	<div class="jumbotron">
		<div class="main-header">
			<div class="container">
				<h1 class="lead text-center">Admin Login</h1>
			</div>
		</div>
	</div>
	</main>
	<div class="container">

		<form class="form-signin" method="post">

			<input type="number" class="form-control" placeholder="Admin Id"
				required autofocus name="aid"> <input type="password"
				class="form-control" placeholder="Password" name="apwd" required>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
		</form>

	</div>



</body>
</html>