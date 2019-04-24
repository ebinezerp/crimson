<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Products | Crimson</title>
<%@include file="links.jsp"%>
</head>

<body>

	<div class="grid-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

		<!--header-->
		<%@include file="menu.jsp"%>

		<%@include file="searchmenu.jsp"%>



		<!--Header-->
		<div class="container-fluid header-main">
			<div class="container text-center">

				<h2>Poducts</h2>
				<div class="link-sec">
					<a href="#">Home</a> <i class="fa fa-angle-right"></i> <a href="#">Poducts</a>
				</div>

			</div>
		</div>

		<!--top-->
		<div class="container product-table padd-80">



			<div class="col-md-6">

				<springform:form action="${contextPath}/user/checkout" method="POST"
					name="checkoutform" modelAttribute="orderReciever">
					<div class="row checkout">
						<div class="col-md-12">
							<h2>Billing Details</h2>
						</div>
						<div class="col-md-6">
							<h3>First Name *</h3>
							<springform:input type="text" path="firstname" />
						</div>
						<div class="col-md-6">
							<h3>Last Name *</h3>
							<springform:input type="text" path="lastname" />
						</div>
						<div class="col-md-12">
							<h3>Company Name</h3>
							<springform:input type="text" path="companyName" />
						</div>
						<div class="col-md-6">
							<h3>Email Address *</h3>
							<springform:input type="email" path="email" />
						</div>
						<div class="col-md-6">
							<h3>Phone *</h3>
							<springform:input type="tel" path="mobile" />
						</div>
						<div class="col-md-12">
							<h3>Country *</h3>
							<springform:select class="form-control" path="address.country">
								<springform:option value="India">India</springform:option>
								<springform:option value="England">England</springform:option>
								<springform:option value="China">China</springform:option>
								<springform:option value="Sri lanka">Sri Lanka</springform:option>
							</springform:select>
						</div>
						<div class="col-md-12">
							<h3>Address *</h3>
							<springform:input path="address.street" type="text"
								placeholder="Street Address" />
						</div>
						<div class="col-md-12">
							<springform:input type="text" path="address.apartment"
								placeholder="Apartment, suite, unit etc. (optional)" />
						</div>
						<div class="col-md-12">
							<h3>Town / City *</h3>
							<springform:input type="text" path="address.city"
								placeholder="Street Address" />
						</div>
						<div class="col-md-6">
							<h3>Postcode *</h3>
							<springform:input type="text" path="address.code" />
						</div>


					</div>
				</springform:form>

			</div>

			<div class="col-md-6">

				<div class="col-md-12 checkout">
					<h2>Your order</h2>
				</div>

				<div class="col-md-12 element-table">
					<div class="row">
						<table>

							<tr>
								<th>Product</th>
								<th class="text-right">Total</th>
							</tr>

							<c:forEach items="${cart.cartItems}" var="cartItem">
								<tr>
									<td>${cartItem.product.productName}</td>
									<td class="text-right">Rs. ${cartItem.totalPrice}</td>
								</tr>
							</c:forEach>
							<!-- 
							<tr>
								<td>Cinnamon</td>
								<td class="text-right">Rs.200.00</td>
							</tr>

							<tr>
								<td>Cloves</td>
								<td class="text-right">Rs.200.00</td>
							</tr>

							<tr>
								<td>Nutmeg</td>
								<td class="text-right">Rs.100.00</td>
							</tr>

							<tr>
								<td>Mace</td>
								<td class="text-right">Rs.500.00</td>
							</tr>
-->
							<tr>
								<td class="text-uppercase"><b>Subtotal</b></td>
								<td class="text-right">Rs. ${cart.totalAmount}</td>
							</tr>


							<tr>
								<td class="text-uppercase"><b>Total</b></td>
								<td class="total text-right">Rs.${cart.totalAmount}</td>
							</tr>

						</table>
					</div>
				</div>

				<div class="col-md-12 pay-faq">

					<h2>Payment mathod</h2>

					<div class="accordion accordion-open check-faq mt-20" id="section4">
						<label>Direct bank transfer</label><span></span>
					</div>
					<div class="accordian-body">
						<div class="faq">
							<span class="payment-box"></span>
							<p>Please send a check to Store Name, Store Street, Store
								Town, Store State / County, Store Postcode.</p>
						</div>
					</div>

					<div class="accordion accordion-open check-faq" id="section5">
						<label>Cash on Delivery</label><span></span>
					</div>
					<div class="accordian-body">
						<div class="faq">
							<span class="payment-box"></span>
							<p>Please send a check to Store Name, Store Street, Store
								Town, Store State / County, Store Postcode.</p>
						</div>
					</div>



					<div class="clearfix"></div>
					<div class="col-md-12 text-center">
						<a href="#" class="coupon btn-bg">Place order</a>
					</div>
					<div class="clearfix"></div>

				</div>

			</div>

			<div class="clearfix"></div>

		</div>


		<!--footer-->
		<%@include file="footer.jsp"%>


		<!--checkout-->
		<script src="${js}/jquery.accordion.js"></script>
		<script>
			$(document).ready(function() {
				$('.accordion').accordion({
					defaultOpen : 'some_id'
				}); //some_id section1 in demo
			});
		</script>
</body>


</html>