<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Categories</title>
<%@include file="links.jsp"%>
<style>
.team-detail {
	border-radius: 8px;
}

.team-detail>a>img {
	width: 100%;
	/* height: 250px; */
	border-radius: 8px;
}
</style>
</head>
<body>

	<div class="about-page">

		<%@include file="header.jsp"%>

		<%@include file="searchmenu.jsp"%>

		<div class='container-fluid' style='margin-top: 55px;'>

			<div class='categories-grid col-md-offset-1 col-md-10'>

				<c:forEach items="${categories}" var="category">
					<div class="team-detail col-md-3" style="padding-bottom: 20px;">
						<a href="${contextPath}/catproducts/${category.categoryId}"><img
							src="${catimages}/${category.categoryId}.jpg" alt=""
							class="img-responsive" /></a>
						<div class="team-info" style="border: none;">
							<a href="${contextPath}/catproducts/${category.categoryId}"><h4
									class='text-center'>${category.categoryName}</h4></a>
							<!--  <a href="contact.html" class="shop-btn">Enquire Now <i class="flaticon-3-right-arrow"></i></a> -->
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
		<div class='clearfix'></div>
		<div style='margin-top: 25px;'>
			<%@include file="footer.jsp"%>
		</div>

	</div>
</body>
</html>