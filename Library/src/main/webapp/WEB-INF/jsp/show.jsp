<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<main>
<div class="jumbotron">
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Barrowed Book Details</h1>
		</div>
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
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="bbrw">
				<tr>
					<td>${bbrw.userid}</td>
					<td>${bbrw.book_id}</td>
					<td>${bbrw.bookname}</td>
					<td>${bbrw.date}</td>


				</tr>
			</c:forEach>

		</tbody>
	</table>

</div>

</body>
</html>