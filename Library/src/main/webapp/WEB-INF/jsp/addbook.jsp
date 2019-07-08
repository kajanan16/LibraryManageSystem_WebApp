<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>


<main>
<div class="jumbotron">
	<div class="main-header">
		<div class="container">
			<h1 class="lead text-center">Add Book Details</h1>
		</div>
	</div>
</div>
</main>
<div>
	<form:form method="post" modelAttribute="obj">
		<div class="form-row">
			<div class="form-group col-sm-6">
				<form:label path="b_id">Book Number</form:label>
				<form:input type="text" class="form-control" path="b_id"
					placeholder="SerialNo" />
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-sm-6">
				<form:label path="b_name">Book Name</form:label>
				<form:input type="text" class="form-control" id="bookname"
					placeholder="Book Name" path="b_name" />
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-sm-6">
				<form:label path="b_author">Author</form:label>
				<form:input type="text" class="form-control" id="author"
					placeholder="Author" path="b_author" />
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-sm-6">
				<form:label path="b_quantity">Quantity</form:label>
				<form:input type="text" class="form-control" id="quantity"
					placeholder="Quantity" path="b_quantity" />
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-sm-6">
				<form:label path="b_price">Price</form:label>
				<form:input type="text" class="form-control" path="b_price"
					placeholder="Price" />
			</div>
		</div>

		<%-- <div class="form-row">
				<div class="form-group col-sm-6">
					<form:label path="b_category">Category</form:label>
					<form:input type="text" class="form-control" path="b_category"
						placeholder="catagory" />
				</div>
			</div> --%>


		<div class="form-group col-sm-6">
			<form:label path="b_category">Category</form:label>
			<form:select path="b_category" class="form-control">
				<option selected>Science</option>
				<option selected>Mathematics</option>
				<option selected>Arts</option>
				<option selected>Business</option>
				<option selected>Political</option>
				<option selected>Story</option>
				<option selected>Others</option>
			</form:select>
		</div>



		<div class="alig">
			<button type="submit" class="btn btn-primary">Add</button>
		</div>
	</form:form>
</div>

</body>

</html>