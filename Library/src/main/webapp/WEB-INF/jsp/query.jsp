<%@ include file="common/header.jspf"%>


<%@ include file="common/navigation.jspf"%>
	<main>
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Query Book</h1>
		</div>
	</div>
	</main>

	<div class="fog">

		<form class="form-signin" role="form" method="post">
			<h2 class="form-signin-heading alg">Enter Book Id</h2>
			<input type="number" class="form-control" placeholder="Book Id"
				name="b_id" required autofocus/>

			<button class="btn btn-lg btn-primary btn-block wid " type="submit">Submit</button>

		</form>

	</div>




</body>
</html>