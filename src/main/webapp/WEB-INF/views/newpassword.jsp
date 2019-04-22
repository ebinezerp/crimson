<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>
<%@include file="links.jsp"%>
</head>

<body>

	<div class="about-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

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
							<li class="active"><a href="home.html">HOME</a></li>

							<li><a href="contact.html">CONTACT</a></li>

						</ul>

					</div>

				</nav>
			</div>

			<div class="clearfix"></div>
		</div>
		<div class="container-fluid"></div>

		<div class="container-fluid">
			<div class="clearfix"></div>
			<div class="col-md-4 col-md-offset-4">
				<center>
					<h3>
						<strong>Reset your Password</strong>
					</h3>
				</center>
				<form class="form" action="${contextPath}/newpassword"
					method="post">
					<input type="hidden" name="email" value="${email}"/>
					<div class="form-group">
						<p>Enter New password</p>
						<input type="password" name="password" class="form-control">
					</div>
					<div class="form-group">
						<p>Confirm password</p>
						<input type="password" name="confirmPassword" class="form-control">
					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="Submit">
				</form>
			</div>
		</div>

	</div>

	<!--footer-->
	<%@include file="footer.jsp"%>

	<script type="text/javascript">
		if ('${status}' === 'input_errors') {
			document.getElementById('signup').click();
		}

		var query = window.location.search;
		if (query.includes('?login')) {
			document.getElementById('login').click();
		}
	</script>

</body>

</html>