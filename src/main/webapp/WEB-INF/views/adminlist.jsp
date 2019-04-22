<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="links.jsp"%>


<link
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"
	rel="stylesheet">
<!-- <link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"
	rel="stylesheet"> -->


</head>
<body>

	<div class="about-page">
		<%@include file="menu.jsp"%>

		<!--search-->
		<div class="container logo-bar">
			<div class="col-md-8 logo-name text-center">
				<a href="index.html"><img src="${img}/index/logo.png" alt=""
					class="img-responsive" /></a>
			</div>
			<!--menu-->
			<div class="container menu">
				<nav class="navbar navbar-default">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">

						<ul class="nav navbar-nav navbar-left">
							<li class="active"><a href="${contextPath}/owner/">Register
									Admins</a></li>

							<li><a href="${contextPath}/owner/admins">Admins List</a></li>

						</ul>

					</div>

				</nav>
			</div>

			<div class="clearfix"></div>
		</div>
		<hr>
		<div class="container" style="margin-top: 20px;">

			<table id="adminsListTable"
				class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Username</th>
						<th>Email</th>
						<th>Mobile</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<c:forEach items="${admins}" var="admin">
					<tbody>
						<tr>
							<td>${admin.username}</td>
							<td>${admin.email}</td>
							<td>${admin.mobile}</td>
							<c:if test="${admin.isActive==true}">
								<td><a
									href="${contextPath}/owner/editadmin/${admin.userId}"
									class="btn btn-warning">Edit</a></td>
								<td><a
									href="${contextPath}/owner/disableadmin/${admin.userId}"
									class="btn btn-danger">Disable</a></td>
							</c:if>
							<c:if test="${admin.isActive==false}">
								<p>Admin is disabled</p>
							</c:if>
						</tr>
					</tbody>
				</c:forEach>
			</table>


		</div>



		<%@include file="footer.jsp"%>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#adminsListTable').DataTable();
		});
	</script>


	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

</body>
</html>