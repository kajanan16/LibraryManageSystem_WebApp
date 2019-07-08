<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Table V04</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Serial No</th>
									<th class="cell100 column2">Book Name</th>
									<th class="cell100 column3">Author</th>
									<th class="cell100 column4">Quantity</th>
									<th class="cell100 column5">Price</th>
									<th class="cell100 column6">Category</th>
									<th class="cell100 column7">Update</th>
									<th class="cell100 column8">Delete</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<c:forEach items="${list}" var="lis">

					
								<tr class="row100 body">
									<td class="cell100 column1">${lis.b_id}</td>
									<td class="cell100 column2">${lis.b_name}</td>
									<td class="cell100 column3">${lis.b_author}</td>
									<td class="cell100 column4">${lis.b_quantity}</td>
									<td class="cell100 column5">${lis.b_price}</td>
									<td class="cell100 column6">${lis.b_category}</td>
									<td class="cell100 column7"><a type="Button" class="btn btn-success"
							href="/update-book?id=${lis.b_id}">Update</a></td>
									<td class="cell100 column8"><a type="Button" class="btn btn-warning"
							href="/deletebook?id=${lis.b_id}">Delete</a></td>
								</tr>
				</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>
				
				


<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
</body>
</html>