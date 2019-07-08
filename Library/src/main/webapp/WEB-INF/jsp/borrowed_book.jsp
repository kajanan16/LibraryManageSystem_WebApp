<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>


<main>
<div class="jumbotron">
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Barrow book</h1>
		</div>
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
	<div class="lev">
		<a href="/det">
			<button class="btn btn-lg btn-primary btn-block wid " type="submit">Details</button>
		</a>
	</div>
</div>




</body>
</html>