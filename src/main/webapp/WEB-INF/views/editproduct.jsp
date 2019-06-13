<%@page isELIgnored="false" contentType="text/html; charset=ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>

<%@include file="links.jsp"%>
</head>

<body>

	<div class="grid-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

		<%@include file="menu.jsp"%>
		<hr>
		<%@include file="searchmenu.jsp"%>
		<hr>



		<!--special-offer-->
		<div class="container padd-60 special-offer">



			<!--main-->
			<div class="container contact-main padd-80">

				<div class="col-md-6 contact-left">

					<div class="contact-info">
						<h3>Edit Product Details</h3>
						<c:if test="${update_status == false}">
							<span class='error_msg'>Update is failed. Try again later.</span>
						</c:if>
					</div>
					<springform:form name="productform"
						action="${contextPath}/admin/updateproduct" method="post"
						modelAttribute="product" enctype="multipart/form-data">
						<springform:input path="id" type="hidden" />
						<div class="row">
							<div class="col-sm-6">
								<label>Product Name *</label>
								<springform:input path="productName" />
							</div>
							<div class="col-sm-6">
								<label>Product Price *</label>
								<springform:input path="price" />
							</div>
							<div class="col-sm-6">
								<label>Stock *</label>
								<springform:input path="stock" />
							</div>

							<div class="col-sm-6">
								<label>Change Image *</label>
								<springform:input path="productImage" type="file" />
							</div>
							<div class="col-sm-12">
								<label>Product Description *</label>
								<springform:textarea path="productDescription" />
							</div>
							<springform:input path="status" type="hidden" value="true" />
							<div class="clearfix"></div>
							<div class="col-sm-12 text-right">
								<a href="#" onclick="addproduct()" class="shp-btn">Add
									Product</a> 
									<a href="${contextPath}/admin/disable/${product.id}" class="shp-btn btn-danger">Disable</a>
							</div>
						</div>
					</springform:form>
				</div>

				<div class="col-md-6 contact-right">

					<img alt="Product Image" src="${prodimgs}/${product.id}.jpg">

				</div>

				<div class="clearfix"></div>

			</div>

			<div class="clearfix"></div>

		</div>

		<%@include file="footer.jsp"%>

		<script type="text/javascript">
			function addproduct() {
				document.forms['productform'].submit();
			}
		</script>

	</div>
</body>

</html>