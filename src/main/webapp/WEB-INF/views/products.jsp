<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>
<%@include file="links.jsp"%>

<style type="text/css">
.product-img>img {
	height: 120px;
	width: 120px;
}
</style>

</head>

<body>

	<div class="grid-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

		<%@include file="header.jsp"%>
		
		<%@include file="searchmenu.jsp" %>



		<security:authorize access="hasRole('ROLE_USER')">

			<!--discount-->
			<div class="container discount-banner padd-40">
				<div class="col-md-12 discount">
					<img src="${img}/index/banner.png" class="img-responsive" alt="" />
				</div>
			</div>

		</security:authorize>

		<!--special-offer-->
		<div class="container padd-60 special-offer">

			<div class="col-md-9 grid-list">
				<c:if test="${fn:length(products) le 0}">
				    NO PRODUCTS AVAILABLE
				</c:if>
				<div class="clearfix"></div>
				<c:forEach items="${products}" var="prod">
					<div class="col-md-3 col-sm-3">
						<div class="product">

							<div class="product-img">
								<a href="${contextPath}/prod_details/${prod.id}" class="product-href"></a> <img
									src="${prodimgs}/${prod.id}.jpg" alt=""
									class="img-responsive img-overlay" /> <img
									src="${prodimgs}/${prod.id}.jpg" alt=""
									class="img-responsive" />

								<div class="sale-heart-hover">
									<a href="#"><i class="flaticon-heart"></i></a>
								</div>
							</div>
							<div class="product-body">
								<p>
									<a href="${contextPath}/prod_details/${prod.id}">${prod.productName}</a>
								</p>
								<h4>Rs.${prod.price}</h4>
								<div class="product-hover">
									<div class="add-cart-hover">
										<security:authorize access="!hasRole('ROLE_ADMIN')">
											<a href="${contextPath}/user/addtocart/${prod.id}"><h6>Add
													to cart</h6> <i class="flaticon-3-signs" aria-hidden="true"></i></a>
										</security:authorize>
										<security:authorize access="hasRole('ROLE_ADMIN')">
											<a href="${contextPath}/admin/editproduct/${prod.id}"><h6>Edit
													Product</h6> <i class="flaticon-3-signs" aria-hidden="true"></i></a>
										</security:authorize>
									</div>

								</div>
							</div>

						</div>
					</div>
				</c:forEach>

			</div>



			<div class="clearfix"></div>

		</div>

		<%@include file="footer.jsp"%>
	</div>
</body>


</html>