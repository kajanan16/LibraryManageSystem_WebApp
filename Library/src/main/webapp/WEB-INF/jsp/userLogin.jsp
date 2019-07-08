<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>User Login</title>

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
				<h1 class="lead text-center">User Login</h1>
			</div>
		</div>
	</div>
	</main>
	<div class="container">

		<form class="form-signin" role="form">

			<input type="email" class="form-control" placeholder="Email address"
				required autofocus> <input type="password"
				class="form-control" placeholder="Password" required>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
		</form>

	</div>



</body>
</html>