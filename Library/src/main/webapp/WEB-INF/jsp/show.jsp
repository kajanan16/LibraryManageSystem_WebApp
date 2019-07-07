<%@ include file="common/header.jspf"%>

<%@ include file="common/navigation.jspf"%>


	<main>
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Barrowed Book Details</h1>
		</div>
	</div>
	</main>
	<div>

		<table class="table  add">
			<thead class="thead-dark">
				<tr>
					<th>User_Id</th>
					<th>Book_Id</th>
					<th>Book_Name</th>
					<th>Book_BorrowDate</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="bbrw">
					<tr>
						<td>${bbrw.user_id}</td>
						<td>${bbrw.book_id}</td>
						<td>${bbrw.bookname}</td>
						<td>${bbrw.date}</td>

						<td><a type="Button" class="btn btn-success"
							href="/update-book?id=${bbrw.trasac_id}">Update</a></td>
						<td><a type="Button" class="btn btn-warning"
							href="/deletebook?id=${bbrw.trasac_id}">Delete</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>





</body>
</html>