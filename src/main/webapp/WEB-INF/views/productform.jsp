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
			<c:if test="${status==true}">
				<span class="alert alert-success">Product Added Successfully.</span>
			</c:if>
				<div class="col-md-6 contact-left">

					<div class="contact-info">
						<h3>Add Product</h3>
					</div>
					<springform:form name="productform"
						action="${contextPath}/admin/addproduct" method="post"
						modelAttribute="product" enctype="multipart/form-data">
						<springform:input path="id" type="hidden"/>
						<div class="row">
							<div class="col-sm-6">
								<label>Product Name *</label>
								<springform:input path="productName" />
								<springform:errors class="error_msg" path="productName"></springform:errors>
							</div>
							<div class="col-sm-6">
								<label>Product Price *</label>
								<springform:input path="price" />
								<springform:errors class="error_msg" path="price"></springform:errors>
							</div>
							<div class="col-sm-6">
								<label>Stock(Tons) *</label>
								<springform:input path="stock" />
								<springform:errors class="error_msg" path="stock"></springform:errors>
							</div>

							<div class="col-sm-6">
								<label>Upload Image *</label>
								<springform:input path="productImage" type="file" />
								<springform:errors class="error_msg" path="productImage"></springform:errors>
								<span class="error_msg">${image_error}</span>
							</div>
							<div class="col-sm-12">
								<label>Product Description *</label>
								<springform:textarea path="productDescription" />
								<springform:errors class="error_msg" path="productDescription"></springform:errors>
							</div>
							<springform:input path="status" type="hidden" value="true"/>
							<div class="clearfix"></div>
							<div class="col-sm-12 text-right">
								<a href="#" onclick="addproduct()" class="shp-btn">Add
									Product</a>
							</div>
						</div>
					</springform:form>
				</div>

				<div class="col-md-6 contact-right"></div>

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