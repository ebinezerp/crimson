<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="links.jsp"%>
</head>
<body>

	<div class="about-page">
		<%@include file="header.jsp"%>

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


		<div class="container">
			<div class="col-md-4 col-md-offset-4">
				<h3>Register Admin</h3>
				<springform:form method="POST"
					action="${contextPath}/owner/update" modelAttribute="user">
					<springform:input path="userId" type="hidden"/>
					<div class="form-group">
						<label for="username">Username</label>
						<springform:input path="username" class="form-control" />
						<springform:errors path="username" class="error_msg"></springform:errors>
						<span class="error_msg">${error_messages.username_error}</span>
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<springform:input path="email" class="form-control" />
						<springform:errors path="email" class="error_msg"></springform:errors>
						<span class="error_msg">${error_messages.email_error}</span>
					</div>
					<div class="form-group">
						<label for="mobile">Mobile</label>
						<springform:input path="mobile" class="form-control" />
						<springform:errors path="mobile" class="error_msg"></springform:errors>
						<span class="error_msg">${error_messages.mobile_error}</span>
					</div>
					<springform:input path="role" type="hidden"/>
					<springform:input path="isActive" type="hidden" />
					<springform:input path="password" type="hidden"/>
					<input type="submit" class="form-control btn btn-primary">
				</springform:form>

			</div>

		</div>

		<%@include file="footer.jsp"%>

	</div>



</body>
</html>