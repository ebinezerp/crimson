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

	<div class="about-page">
		<!--page wrap-->

		<div style="padding: 15px;">
			<a href="javascript:" id="return-to-top"><i
				class="fa fa-angle-up"></i></a>
			<div class='border'>
				<%@include file="menu.jsp"%>
			</div>
			<%@include file="searchmenu.jsp"%>
		</div>


		<!--special-offer-->
		<div class="container padd-60 special-offer">



			<!--main-->
			<div class="container contact-main padd-80">
				<c:if test="${status==true}">
					<span class="alert alert-success">Product Added
						Successfully.</span>
				</c:if>

				<c:if test="${status=='exists'}">
					<span class="alert alert-warning">Product Added
						Successfully.</span>
				</c:if>





				<c:if test="${product_save_status==false}">
					<span class="alert alert-danger">Error Occurred. Try Again
						later</span>
				</c:if>

				<div class="col-md-6 contact-left">

					<div class="contact-info">
						<h3>Add Product</h3>
					</div>
					<springform:form name="productform"
						action="${contextPath}/admin/addproduct" method="post"
						modelAttribute="product" enctype="multipart/form-data">
						<springform:input path="id" type="hidden" />
						<div class="row">
							<div class="col-sm-6">
								<label>Product Name *</label>
								<springform:input path="productName" />
								<springform:errors class="error_msg" path="productName"></springform:errors>
								<span class='error_msg'>${error_messages.productName_error}</span>
							</div>
							<div class="col-sm-6">
								<label>Product Price *</label>
								<springform:input path="price" />
								<springform:errors class="error_msg" path="price"></springform:errors>
							</div>

							<div class="col-sm-12" id="productDescriptions">
								<label>Product Description *</label>
								<c:forEach items="${product.productDescriptions}" var="descriptionLine"
									varStatus="line">
									<springform:input
										path="productDescriptions[${line.index}].description" />
									<springform:errors class="error_msg"
										path="productDescriptions[${line.index}].description"></springform:errors>
								</c:forEach>
								<input type='button' id="addDescLineBtn" class='btn' style='margin-top:20px;background-color:#ef402b;color:white' value='Add Description Line'>
							</div>
							
							
							
							
							<div class="col-sm-12" id="productFeatures">
								<label>Product Features *</label>
								<c:forEach items="${product.productFeatures}" var="productFeaturesLine"
									varStatus="line">
									<springform:input
										path="productFeatures[${line.index}].feature" />
									<springform:errors class="error_msg"
										path="productFeatures[${line.index}].feature"></springform:errors>
								</c:forEach>
								<input type='button' id="addFeatureLineBtn" class='btn' style='margin-top:20px;background-color:#ef402b;color:white' value='Add Product Feature'>
							</div>
							
							<div class="col-sm-12" id="productApplications">
								<label>Product Applications *</label>
								<c:forEach items="${product.productApplications}" var="productApplicationLine"
									varStatus="line">
									<springform:input
										path="productApplications[${line.index}].application" />
									<springform:errors class="error_msg"
										path="productApplications[${line.index}].application"></springform:errors>
								</c:forEach>
								<input type='button' id="addApplicationLineBtn" class='btn' style='margin-top:20px;background-color:#ef402b;color:white' value='Add Another Application'>
							</div>
							
							<div class="col-sm-12" id="packagings">
								<label>Product Packagings *</label>
								<c:forEach items="${product.packagings}" var="packagingLine"
									varStatus="line">
									<springform:input
										path="packagings[${line.index}].packaging" />
									<springform:errors class="error_msg"
										path="packagings[${line.index}].packaging"></springform:errors>
								</c:forEach>
								<input type='button' id="addPackagingLineBtn" class='btn' style='margin-top:20px;background-color:#ef402b;color:white' value='Add Another Package'>
							</div>
							
							<div class="col-sm-12" id="productSpecifications">
								<label>Product Specifications *</label>
								<c:forEach items="${product.productSpecifications}" var="productSpecificationLine"
									varStatus="line">
									<springform:input
										path="productSpecifications[${line.index}].specification" />
									<springform:errors class="error_msg"
										path="productSpecifications[${line.index}].specification"></springform:errors>
								</c:forEach>
								<input type='button' id="addSpecificationLineBtn" class='btn' style='margin-top:20px;background-color:#ef402b;color:white' value='Add Another Specification'>
							</div>

							<div class="col-sm-12">
								<label>Storage *</label>
								<springform:input path="storage" />
								<springform:errors class="error_msg" path="storage"></springform:errors>
							</div>
							<div class="col-sm-12">
								<label>Shelf Life *</label>
								<springform:input path="shelfLife" />
								<springform:errors class="error_msg" path="shelfLife"></springform:errors>
							</div>
							
							<div class="col-sm-6">
							<label>Category *</label>
							<security:authorize access="hasRole('ROLE_OWNER')">
								<springform:select path="category">
									<springform:options items="${categories}"
										itemLabel="categoryName" itemValue="categoryId" />
								</springform:select>
								<springform:errors class="error_msg" path="category"></springform:errors>
							</security:authorize>
								
							<security:authorize access="hasRole('ROLE_ADMIN')">
							<springform:input path="category.categoryName" readonly="true"/>
							</security:authorize>
							</div>
							<div class="col-sm-6">
								<label>Stock(Tons) *</label>
								<springform:input path="stock" />
								<springform:errors class="error_msg" path="stock"></springform:errors>
							</div>

							<div class="col-sm-12">
								<label>Upload Image *</label>
								<springform:input path="productImage" type="file" />
								<springform:errors class="error_msg" path="productImage"></springform:errors>
								<span class="error_msg">${image_error}</span>
							</div>
							<%-- <div class="col-sm-12">
								<label>Product Description *</label>
								<springform:textarea path="productDescription" />
								<springform:errors class="error_msg" path="productDescription"></springform:errors>
							</div> --%>
							<springform:input path="status" type="hidden" value="true" />
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
			
			
			$(function(){
				var index = ${fn:length(product.productDescriptions)};
				
				$('#productDescriptions').on("click",'.productDescriptions-remove',function(){
					var index2remove = $(this).data("index");
		            $("#productDescriptions" + index2remove + "\\.wrapper").hide();
		            $("#productDescriptions" + index2remove + "\\.remove").val("1");
		            return false;
				});
				
				$('#addDescLineBtn').click(function(){
					$(this).before(function(){
						 var html = '<div id="productDescriptions' + index + '.wrapper">';                    
			                html += '<input type="text" id="productDescriptions' + index + '.description" style="margin-top:10px;" name="productDescriptions[' + index + '].description" />';
			                html += '<input type="hidden" id="productDescriptions' + index + '.remove" name="productDescriptions[' + index + '].remove" value="0" />';
			                html += '<a style="margin-top:20px;text-decoration:underline;cursor:pointer" class="productDescriptions-remove" data-index="' + index + '">Remove above line</a>';                    
			                html += "</div>";
			                return html;
					})
					
					$("#productDescriptions" + index + "\\.wrapper").show();
		            index++;
		            return false;
				});
				
				
			});
			
			
			$(function(){
				var index = ${fn:length(product.productFeatures)};
				
				$('#productFeatures').on("click",'.productFeatures-remove',function(){
					var index2remove = $(this).data("index");
		            $("#productFeatures" + index2remove + "\\.wrapper").hide();
		            $("#productFeatures" + index2remove + "\\.remove").val("1");
		            return false;
				});
				
				$('#addFeatureLineBtn').click(function(){
					$(this).before(function(){
						 var html = '<div id="productFeatures' + index + '.wrapper">';                    
			                html += '<input type="text" id="productFeatures' + index + '.feature" style="margin-top:10px;" name="productFeatures[' + index + '].feature" />';
			                html += '<input type="hidden" id="productFeatures' + index + '.remove" name="productFeatures[' + index + '].remove" value="0" />';
			                html += '<a style="margin-top:20px;text-decoration:underline;cursor:pointer" class="productFeatures-remove" data-index="' + index + '">Remove above line</a>';                    
			                html += "</div>";
			                return html;
					})
					
					$("#productFeatures" + index + "\\.wrapper").show();
		            index++;
		            return false;
				});
				
				
			});
			
			
			$(function(){
				var index = ${fn:length(product.productApplications)};
				
				$('#productApplications').on("click",'.productApplications-remove',function(){
					var index2remove = $(this).data("index");
		            $("#productApplications" + index2remove + "\\.wrapper").hide();
		            $("#productApplications" + index2remove + "\\.remove").val("1");
		            return false;
				});
				
				$('#addApplicationLineBtn').click(function(){
					$(this).before(function(){
						 var html = '<div id="productApplications' + index + '.wrapper">';                    
			                html += '<input type="text" id="productApplications' + index + '.application" style="margin-top:10px;" name="productApplications[' + index + '].application" />';
			                html += '<input type="hidden" id="productApplications' + index + '.remove" name="productApplications[' + index + '].remove" value="0" />';
			                html += '<a style="margin-top:20px;text-decoration:underline;cursor:pointer" class="productApplications-remove" data-index="' + index + '">Remove above line</a>';                    
			                html += "</div>";
			                return html;
					})
					
					$("#productApplications" + index + "\\.wrapper").show();
		            index++;
		            return false;
				});
				
				
			});
			
			$(function(){
				var index = ${fn:length(product.packagings)};
				
				$('#packagings').on("click",'.packagings-remove',function(){
					var index2remove = $(this).data("index");
		            $("#packagings" + index2remove + "\\.wrapper").hide();
		            $("#packagings" + index2remove + "\\.remove").val("1");
		            return false;
				});
				
				$('#addPackagingLineBtn').click(function(){
					$(this).before(function(){
						 var html = '<div id="packagings' + index + '.wrapper">';                    
			                html += '<input type="text" id="packagings' + index + '.application" style="margin-top:10px;" name="packagings[' + index + '].packaging" />';
			                html += '<input type="hidden" id="packagings' + index + '.remove" name="packagings[' + index + '].remove" value="0" />';
			                html += '<a style="margin-top:20px;text-decoration:underline;cursor:pointer" class="packagings-remove" data-index="' + index + '">Remove above line</a>';                    
			                html += "</div>";
			                return html;
					})
					
					$("#packagings" + index + "\\.wrapper").show();
		            index++;
		            return false;
				});
				
				
			});
			
			$(function(){
				var index = ${fn:length(product.productSpecifications)};
				
				$('#productSpecifications').on("click",'.productSpecifications-remove',function(){
					var index2remove = $(this).data("index");
		            $("#productSpecifications" + index2remove + "\\.wrapper").hide();
		            $("#productSpecifications" + index2remove + "\\.remove").val("1");
		            return false;
				});
				
				$('#addSpecificationLineBtn').click(function(){
					$(this).before(function(){
						 var html = '<div id="productSpecifications' + index + '.wrapper">';                    
			                html += '<input type="text" id="productSpecifications' + index + '.application" style="margin-top:10px;" name="productSpecifications[' + index + '].specification" />';
			                html += '<input type="hidden" id="productSpecifications' + index + '.remove" name="productSpecifications[' + index + '].remove" value="0" />';
			                html += '<a style="margin-top:20px;text-decoration:underline;cursor:pointer" class="productSpecifications-remove" data-index="' + index + '">Remove above line</a>';                    
			                html += "</div>";
			                return html;
					})
					
					$("#productSpecifications" + index + "\\.wrapper").show();
		            index++;
		            return false;
				});
				
				
			});
			
		</script>

	</div>
</body>

</html>