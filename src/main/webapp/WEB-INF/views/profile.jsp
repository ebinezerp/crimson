<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<%@include file="menu.jsp"%>
		<%@include file="searchmenu.jsp"%>
		<div class="container">
			<div class="profile col-md-7 col-md-offset-2">
				<h1 class="text-center">Profile</h1>
				<springform:form class="form mt-20" method="POST"
					modelAttribute="user" name="updateform" id="updateform" action="${contextPath}/profile">
					<springform:input path="userId" type="hidden" />
					<springform:input path="password" type="hidden" />
					<springform:input path="role" type="hidden" />
					<springform:input path="isActive" type="hidden" />
					<div class="form-group">
						<label for="username">Username</label>
						<springform:input class="form-control" path="username"
							disabled="true" />
						<springform:errors path="username"></springform:errors>
						<span class="error_msg">${errorMessages.username_error}</span>
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<springform:input class="form-control" path="email"
							disabled="true" />
						<springform:errors path="email"></springform:errors>
						<span class="error_msg">${errorMessages.email_error}</span>
					</div>
					<div class="form-group">
						<label for="mobile">Mobile</label>
						<springform:input class="form-control" path="mobile"
							disabled="true" />
						<springform:errors path="mobile"></springform:errors>
						<span class="error_msg">${errorMessages.mobile_error}</span>
					</div>
					<div class="button">
						<a href="#" class="btn btn-primary" id="editbtn">Edit Details</a>
						<a href="#" class="btn btn-primary" id="updatebtn">Update
							Details</a>
					</div>
				</springform:form>
			</div>
		</div>
		<%@include file="footer.jsp"%>

		<script type="text/javascript">
			$(document).ready(function() {

				$('#updatebtn').hide();

				$('#editbtn').click(function() {
					$('#editbtn').hide();
					$('#updatebtn').show();
					$("#updateform").each(function() {
						console.log($(this).find(':input'));
						$(this).find(':input').removeAttr('disabled');
					});
				})
				
				
				$('#updatebtn').click(function(){
					document.forms['updateform'].submit();
				})
			})
		</script>

	</div>
</body>
</html>