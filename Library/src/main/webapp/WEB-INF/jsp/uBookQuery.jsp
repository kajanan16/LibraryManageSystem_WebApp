
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/userPageNav.jsp"%>
	<main>
	<div class="jumbotron">
		<div class="main-header">
			<div class="container">
				<h1 class="lead text-center">Query Book</h1>
			</div>
		</div>
	</div>
	</main>

	<div class="fog">

		<form class="form-signin" role="form" method="post">
			<h2 class="form-signin-heading alg">Enter Book Name</h2>
			<input type="text" class="form-control" placeholder="Name"
				name="bkname" required autofocus />

			<button class="btn btn-lg btn-primary btn-block wid " type="submit">Submit</button>

		</form>

	</div>




</body>
</html>