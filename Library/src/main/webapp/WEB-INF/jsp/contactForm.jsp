<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<%@ include file="common/header.jspf"%>
<link rel="stylesheet" type="text/css" href="css/contact.css">
</head>
<body>
	<%@ include file="common/unavigation.jspf"%>
	<main>
	<div class="jumbotron">
		<div class="main-header">
			<div class="container">
				<h1 class="lead text-center">Contact Us</h1>
			</div>
		</div>
	</div>
	</main>
	<div class="container">
		<form action="">

			<label for="fname">First Name</label> <input type="text" id="fname"
				name="firstname" placeholder="Your name.."> <label
				for="lname">Last Name</label> <input type="text" id="lname"
				name="lastname" placeholder="Your last name.."> <label
				for="country">Country</label> <select id="country" name="country">
				<option value="australia">Australia</option>
				<option value="canada">Canada</option>
				<option value="usa">USA</option>
			</select> <label for="subject">Subject</label>
			<textarea id="subject" name="subject" placeholder="Write something.."
				style="height: 200px"></textarea>

			<input type="submit" value="Submit">

		</form>
	</div>
</body>
</html>