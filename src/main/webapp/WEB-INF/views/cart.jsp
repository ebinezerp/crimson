<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cart | Crimson</title>
<%@include file="links.jsp"%>
</head>

<body>

	<div class="grid-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>
		<%@include file="menu.jsp"%>
		<%@include file="searchmenu.jsp"%>

		<!--Header-->
		<div class="container-fluid header-main">
			<div class="container text-center">

				<h2>Cart</h2>
				<div class="link-sec">
					<a href="#">Home</a> <i class="fa fa-angle-right"></i> <a href="#">Cart</a>
				</div>

			</div>
		</div>

     
		<!--top-->
		<div class="container padd-80">
			<div class="col-md-12 element-table">
				<div class="row">
					<table>
						<tr>
							<th>Product</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Total</th>
							<th></th>
						</tr>
						<c:forEach items="${cart.cartItems}" var="cartItem">
							<tr>
								<td class="width">
									<div class="image">
										<img src="${prodimgs}/${cartItem.product.id}.jpg" alt="" class="img-responsive" />
										<p>Cinnamon</p>

									</div>
								</td>
								<td class="cart-price">Rs. ${cartItem.unitPrice}</td>
								<td class="user">

									<div id=field1 class="quantity">
										<button type="button" id="sub" class=sub>
											<i class="fa fa-minus" aria-hidden="true"></i>
										</button>
										<input type="text" id="1" value="${cartItem.quantity}" class=field>
										<button type="button" id="add" class=add>
											<i class="fa fa-plus" aria-hidden="true"></i>
										</button>
									</div>

								</td>
								<td>Rs. ${cartItem.totalPrice}</td>
								<td><a href="#"><i class="fa fa-times-circle-o"
										aria-hidden="true"></i></a></td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="shp-cart-btn">
				<a href="#" class="cart-btn">Clear shopping cart</a>
			</div>
			<div class="pull-right">
				<a href="#" class="cart-btn upd-btn">Update cart</a> <a
					href="product.html" class="shp-btn">Continue shopping</a>
			</div>

		</div>

		<!--bottom-->
		<div class="container">

			<div class="col-md-6 shp-checkout checkout pay-faq">
				<h2>Shopping cart Total</h2>
				<div class="element-table">
					<table class="text-uppercase">
						<tr>
							<td><b>Subtotal</b></td>
							<td class="text-right">${cart.totalAmount}</td>
						</tr>

						<tr>
							<td><b>Shipping</b></td>
							<td class="shipping text-right text-capitalize">Free
								shipping</td>
						</tr>

						<tr>
							<td><b>Total</b></td>
							<td class="total text-right">${cart.totalAmount}</td>
						</tr>
					</table>
				</div>
				<a href="check-out.html" class="shp-btn pull-right">Process to
					checkout</a>
			</div>
		</div>

		<!--footer-->
		<div class="container-fluid footer-sec">
			<div class="container padd-30">
				<div class="col-md-12 footer-top-sec">
					<div class="col-md-4 col-sm-5 payment">
						<img src="img/footer/paypal.png" alt="" class="img-responsive" />
						<img src="img/footer/visa.png" alt="" class="img-responsive" /> <img
							src="img/footer/mastercard.png" alt="" class="img-responsive" />
					</div>
					<div class="col-md-4 col-sm-2 footer-logo">
						<img src="img/index/logo.png" alt="" class="img-responsive" />
					</div>
					<div class="col-md-4 col-sm-5 social-sec text-center">
						<div class="social">
							<div class="social-circle">
								<a href="#"><i class="fa fa-facebook-f" aria-hidden="true"></i></a>
							</div>
							<div class="social-circle">
								<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							</div>
							<div class="social-circle">
								<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
							</div>
							<div class="social-circle">
								<a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>

				<div class="col-md-12 call">
					<h3>CONTACT INFORMATION</h3>
					<div class="col-md-4 col-sm-4 email">
						<i class="flaticon-phone-call"></i>
						<h3>CALL</h3>
						<p>+91 98480 98480</p>
						<p>044 - 6655 6655</p>
					</div>
					<div class="col-md-4 col-sm-4 email">
						<i class="flaticon-placeholder-1"></i>
						<h3>FIND US</h3>
						<p>Anna Nagar</p>
						<p>Chennai</p>
					</div>
					<div class="col-md-4 col-sm-4 email">
						<i class="flaticon-e-mail-envelope"></i>
						<h3>EMAIL</h3>
						<p>info@crimsontrading.com</p>
						<p>contact@crimsontrading.com</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid copy-right">
			<div class="container">
				<div class="col-md-4 col-sm-3 copy-text">
					<p>
						© 2018 <a href="#">Crimson Trading</a>.
					</p>
				</div>
				<div class="col-md-8 col-xs-12 col-sm-9 terms-condition text-right">
					<ul>

						<li><a href="#">Legal information</a></li>

						<li><a href="#">Term of service</a></li>
						<li><a href="#">Privacy Policy</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!--js-->
		<script src="js/ajax.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<!--slider-->
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/theme.js"></script>
		<!--Range-validator-->
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/product-custom.js"></script>
		<!--index-->
		<script src="js/index.js"></script>
		<!--custom-->
		<script src="js/custom.js"></script>
</body>

</html>