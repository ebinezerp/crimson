<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category</title>
<%@include file="links.jsp"%>
<style>
  .catimage{
     height:100px;
     width:100px;
  }
</style>
</head>
<body>
	<div class="about-page">
		<div class="border" style="padding: 10px">
			<%@include file="menu.jsp"%>
		</div>
		<%@include file="searchmenu.jsp"%>

		<div class='container' style='margin-top: 45px;'>
			<div class='categoryaddform col-md-4 col-md-offset-4'>
				<center>
					<h1>Add Category</h1>
				</center>
				<springform:form modelAttribute="category" method='post' enctype="multipart/form-data"
					action='${contextPath}/category'>
					<springform:input path="categoryId" type='hidden' />
					<div class='form-group'>
						<label for='category_name'>Category Name</label>
						<springform:input path="categoryName" class='form-control' />
						<springform:errors path='categoryName'></springform:errors>
					</div>
					<div class='form-group'>
						<label for='category_image'>Category Image</label>
						<springform:input path="catImage" type='file' class='form-control'/>
						<springform:errors path="catImage"/>
					</div>
					<div>
						<input class='form-control btn' style='background-color: #ef402b'
							type='submit' value='Submit'>
					</div>
				</springform:form>
			</div>

			<div class='clearfix'></div>



			<div class='categories-list col-md-8 col-md-offset-2'
				style='margin-top: 45px;'>
				<table id='categories-list'
					class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Category Name</th>
							<th>Category Image</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${categories}" var="category">
							<tr>
								<th>${category.categoryName}</th>
								<th><img class='catimage' src="${catimages}/${category.categoryId}.jpg"></th>
								<th><a
									href='${contextPath}/category?id=${category.categoryId}'
									class='btn btn-primary'>Edit</a></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>


		<%@include file="footer.jsp"%>
	</div>






	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#categories-list').DataTable();
		});
	</script>
</body>
</html>