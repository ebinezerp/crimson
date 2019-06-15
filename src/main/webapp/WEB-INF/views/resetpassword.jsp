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

		<%@include file="searchmenu.jsp"%>
		<div class="container-fluid"></div>

		<div class="container-fluid">
			<div class="clearfix"></div>
			<div class="col-md-4 col-md-offset-4">
				<center>
					<h3>
						<strong>Reset your Password</strong>
					</h3>
					<c:if test="${pwdstatus==false}">
						<span class="error_msg">Reset Password is wrong</span>
					</c:if>

					<c:if test="${email_exists==false}">
						<span class="error_msg">Email is not Existed. <a
							href='${contextPath}/register'>Register Here </a></span>
					</c:if>
					
					<c:if test="${pass_update_error==false}">
						<span class="error_msg">Error Occurred. Try again.</a></span>
					</c:if>


				</center>
				<form class="form" action="${contextPath}/resetpassword"
					method="post">
					<input type="hidden" name="email" value="${email}" />
					<div class="form-group">
						<p>Enter reset password here</p>
						<input type="password" name="password" class="form-control">
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