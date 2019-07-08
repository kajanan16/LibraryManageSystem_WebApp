<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>


	<main>
	  <div class="jumbotron">
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Add User Details</h1>
		</div>
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

	

</body>

</html>