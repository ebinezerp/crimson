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
					<a href="${contextPath}/">Home</a> <i class="fa fa-angle-right"></i> <a href="${contextPath}/products">Products</a>
				</div>

			</div>
		</div>

		<c:if test="${fn:length(cartItems) eq 0}">
			<center>
				<h3>No Products added to cart</h3>
			</center>
		</c:if>
		<c:if test="${fn:length(cartItems) gt 0}">
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
							

								<c:forEach items="${cartItems}" var="cartItem" varStatus="vs">
									<tr>
										<td class="width">
											<div class="image">
												<img src="${prodimgs}/${cartItem.product.id}.jpg" alt=""
													class="img-responsive" />
												<p>${cartItem.product.productName}</p>

											</div>
										</td>
										<td class="cart-price">Rs. ${cartItem.unitPrice}</td>
										<td class="user">

											<div id=field1 class="quantity">
												<button type="button" id="sub" class="sub">
													<i class="fa fa-minus" aria-hidden="true"></i>
												</button>
												<input type="text" id="${cartItem.cartItemId}"  value="${cartItem.quantity}" class="field" />
												<button type="button" id="add" class="add">
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
					<a href="${contextPath}/user/clearcart" class="cart-btn">Clear
						shopping cart</a>
				</div>
				<div class="pull-right">
					 <a href="${contextPath}/products" class="shp-btn">Continue
						shopping</a>
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
					<a href="${contextPath}/user/checkout" class="shp-btn pull-right">Process to
						checkout</a>
				</div>
			</div>
		</c:if>

		<%@include file="footer.jsp"%>
		<script type="text/javascript">
			function updatecart() {
				document.forms['updatecartform'].submit();
			}
			
			$(document).ready(function(){
				$('.add').click(function(){
					var value= $(this).parent().find('input').attr('id');
					$.get('/user/addcartitem/'+value,function(){
						location.reload(true);
					});
				})
				
				$('.sub').click(function(){
					var value= $(this).parent().find('input').attr('id');
					$.get('/user/subcartitem/'+value,function(){
						location.reload(true);
					});
					
				})
			})
			
		</script>
</body>

</html>