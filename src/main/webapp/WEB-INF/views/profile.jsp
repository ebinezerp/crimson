<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>
<%@include file="links.jsp"%>
<style>
.menu-btn {
	background-color: #ef402b;
	color: white;
}

.form-control {
	background-color: Gainsboro;
}

#Address {
	padding-bottom: 30px;
	padding-top: 30px;
}
</style>


</head>
<body>
	<div class="about-page">

		<%@include file="menu.jsp"%>
		<%@include file="searchmenu.jsp"%>


		<div class="clearfix"></div>

		<div class="container">
			<div class="profile col-md-7 col-md-offset-2">
				<h1 class="text-center">Profile</h1>
				<springform:form id="updateform" name="updateform"
					class="form mt-20" action="/profile" method="POST"
					modelAttribute="user">
					<c:if test="${redirect==true}">
						<input type="hidden" name="redirect" value="${redirect}">
					</c:if>
					<springform:input path="userId" id="userId" name="userId"
						type="hidden" value="" disabled="disabled" />
					<springform:input path="password" id="password" name="password"
						type="hidden" value="" disabled="disabled" />
					<springform:input path="role" id="role" name="role" type="hidden"
						value="ROLE_USER" disabled="disabled" />
					<springform:input path="isActive" id="isActive" name="isActive"
						type="hidden" value="true" />
					<springform:input path="userDetails.id" id="userDetailsId" name="userDetails"
						type="hidden" value="" />
					<springform:input path="userDetails.address.id" id="addressId" name="userDetails"
						type="hidden" value="" />
					<%-- <div class="form-group col-md-6">
						<label for="First Name">First Name *</label>
						<springform:input path="firstname" id="First Name"
							name="First Name" class="form-control" type="text" value="" />
						<span class="error_msg"></span>
					</div>
					<div class="form-group col-md-6">
						<label for="Last Name ">Last Name *</label>
						<springform:input path="lastname" id="Last Name "
							name="Last Name " class="form-control" type="text" value="" />
						<span class="error_msg"></span>
					</div> --%>
					<div class="form-group col-md-12">
						<label for="Company name">Company name</label>
						<springform:input path="userDetails.companyName" id="Company name"
							name="Company name" class="form-control" type="text" value=""
							disabled="true" />
						<span class="error_msg"></span>
					</div>
					<div class="form-group col-md-12">
						<label for="username">Username *</label>
						<springform:input path="username" id="username" name="username"
							class="form-control" type="text" value="" disabled="true" />
						<span class="error_msg">${errorMessages.username_error}</span>
					</div>
					<div class="form-group col-md-6">
						<label for="email">Email *</label>
						<springform:input path="email" id="email" name="email"
							class="form-control" type="text" value="" disabled="true" />
						<span class="error_msg">${errorMessages.email_error}</span>
					</div>
					<div class="form-group col-md-6">
						<label for="Phone">Phone</label>
						<springform:input path="mobile" id="Phone" name="Phone"
							class="form-control" type="tel" value="" disabled="true" />
						<span class="error_msg">${errorMessages.mobile_error}</span>
					</div>



					<div class="form-group col-md-12 ">
						<label for="doorNo">Door No</label>
						<springform:input path="userDetails.address.doorNo" id="doorNo"
							name="doorNo" class="form-control " type="text" value=""
							disabled="true" />
						<span class="error_msg"></span>
					</div>

					<div class="form-group col-md-12 ">
						<label for="street">Street</label>
						<springform:input path="userDetails.address.street" id="street"
							name="street" class="form-control " type="text" value=""
							disabled="true" />
						<span class="error_msg"></span>
					</div>
					<div class="form-group col-md-12">
						<label for="Town / City ">Town / City *</label>
						<springform:input path="userDetails.address.city"
							id="Town / City " name="Town / City " class="form-control"
							type="text" value="" disabled="true" />
						<span class="error_msg"></span>
					</div>
					<div class="col-md-12">
						<label for="Country">Country *</label>
						<springform:input name="Country"
							path="userDetails.address.country" class="form-control"
							disabled="true"></springform:input>

					</div>

					<div class="form-group col-md-12">
						<label for="code">PIN CODE</label>
						<springform:input path="userDetails.address.code" id="code"
							name="code" class="form-control" type="text" value=""
							disabled="true" />
						<span class="error_msg"></span>
					</div>

					<div class="col-md-6";>

						<label for="categories">Categories:</label>
						<springform:select   path="userDetails.userCategory"
							name="Items" class="form-control" id="categorySelect" items="${userCategories}"
								itemLabel="categoryName" itemValue="id" selected=''>
							<%-- <springform:options  /> --%>
						</springform:select>
						<input disabled="true" value="${user.userDetails.userCategory.categoryName}" class="form-control" id="categoryInput"/>
					</div>
					<br>

					<div class="form-group col-md-6 ">
						<label for="GST">GST</label>
						<springform:input path="userDetails.GST" id="GST" name="GST"
							class="form-control" type="number" value="" disabled="true" />
						<span class="error_msg"></span>
					</div>
					<div class="button col-md-12">
						<a href="#" class="btn btn-primary" id="editbtn">Edit Details</a>
						<a href="#" class="btn btn-primary" id="updatebtn">Update
							Details</a>
					</div>
				</springform:form>
			</div>
		</div>

	</div>

	<%@include file="footer.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {

			$('#updatebtn').hide();
			$("#categorySelect").hide();

			$('#editbtn').click(function() {
				$('#editbtn').hide();
				$('#updatebtn').show();
				$('#categoryInput').hide();
				$('#categorySelect').show();
				$("#updateform").each(function() {
					console.log($(this).find(':input'));
					$(this).find(':input').removeAttr('disabled');
					$(this).find(':select').removeAttr('disabled');
				});
			})

			$('#updatebtn').click(function() {
				alert("clicked");
				document.forms['updateform'].submit();
			})
		})
	</script>

	</div>
</body>
</html>