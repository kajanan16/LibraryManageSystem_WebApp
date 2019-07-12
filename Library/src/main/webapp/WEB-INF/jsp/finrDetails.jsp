<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="common/header.jspf"%>

<%@ include file="common/userPageNav.jsp"%>


<main>
<div class="jumbotron">
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Fine Details</h1>
		</div>
	</div>
</div>
</main>
<div>

	<table class="table  add">
		<thead class="thead-dark">
			<tr>
				<th>Book_Id</th>
				<th>Book_Name</th>
				<th>Book_BorrowDate</th>
				<th>Submission Date</th>
				<th>Fine</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="bbrw">
				<tr>
					<td>${bbrw.user_id}</td>
					<td>${bbrw.book_id}</td>
					<td>${bbrw.bookname}</td>
					<td>${bbrw.date}</td>
						<td></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</div>

</body>
</html>
</body>
</html>