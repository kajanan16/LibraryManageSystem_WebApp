<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<main>
<div class="jumbotron">
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Welcome to Library Management
				System!</h1>
		</div>
	</div>
</div>
</main>

<div>

	<table class="table  add">
		<thead class="thead-dark">
			<tr>
				<th>Serial No</th>
				<th>Book Name</th>
				<th>Author</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Category</th>

				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="lis">
				<tr>
					<td>${lis.b_id}</td>
					<td>${lis.b_name}</td>
					<td>${lis.b_author}</td>
					<td>${lis.b_quantity}</td>
					<td>${lis.b_price}</td>
					<td>${lis.b_category}</td>
					<td><a type="Button" class="btn btn-success"
						href="/update-book?id=${lis.b_id}">Update</a></td>
					<td><a type="Button" class="btn btn-warning"
						href="/deletebook?id=${lis.b_id}">Delete</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</div>

</body>
</html>

