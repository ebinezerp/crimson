<!doctype html>
<html lang="en">


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cart | Crimson</title>
<%@include file="links.jsp"%>
</head>

<body>

	<div class="detail-page grid-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

		<!--header-->
		<%@include file="header.jsp"%>

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



		<!--main-->
		<div class="container product-information padd-80">

			<span class='alert alert-success' style="display: none"
				id="update-alert">Cart is updated successfully.</span>

			<div class="col-md-5 col-lg-6 detail-left text-center">



				<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
					<li data-thumb="${img}/detail/small-1.jpg"><img
						src="${prodimgs}/${product.id}.jpg" class="img-responsive" alt="" /></li>


				</ul>
				<div class="clearfix"></div>



			</div>

			<div class="col-md-7 col-lg-6 detail-right">
				<div class="detail-top">
					<h1>${product.productName}</h1>
					<div class="rate">
						<h2>Rs. ${product.price}</h2>

						<span><i class="fa fa-check-circle"></i> In stock</span>
						<div class="clearfix"></div>
					</div>



				</div>
				<ul class="detail">
					<li class="sub-menu"><a class="main-a"
						href="javascript:void(0)">Description <i
							class="fa fa-angle-down"></i></a>

						<ul>
							<p>${product.productDescription}</p>
						</ul></li>
				</ul>
				<form action="${contextPath}/user/addtocart/${product.id}"
					name="cartform" method="get">
					<div class="detail-btm">
						<div class="detail-row quantity-box">
							<p class="text-uppercase">Quantity</p>
							<div class="clearfix"></div>
							<div class="input--filled" id="input--filled">
								<button type="button" class="sub" id="sub">
									<i class="fa fa-minus" aria-hidden="true"></i>
								</button>
								<input type="text" id="prod_quantity" name="prod_quantity"
									class="field">
								<button type="button" class="add" id="add">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</button>
								<div class="clearfix"></div>
							</div>
							<a class="coupon" href="#" id="addtocartbtn"
								onclick="cartsubmit()">Add to cart</a> <a class="coupon"
								style="display: none" id="updatecartbtn">Update Cart</a> <a
								class="coupon" href="${contextPath}/products">Continue
								Shopping</a>


							<div class="clearfix"></div>
						</div>


						<div class="detail-row">
							<p>
								<span>Share:</span>
							</p>
							<div class="soc-icon">
								<a href="#" data-toggle="tooltip" data-placement="top" title=""
									data-original-title="Facebook"><i class="fa fa-facebook-f"></i></a>
								<a href="#" data-toggle="tooltip" data-placement="top" title=""
									data-original-title="Instagram"><i class="fa fa-instagram"></i></a>
								<a href="#" data-toggle="tooltip" data-placement="top" title=""
									data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
								<a href="#" data-toggle="tooltip" data-placement="top" title=""
									data-original-title="Dribble"><i class="fa fa-dribbble"></i></a>
								<a href="#" data-toggle="tooltip" data-placement="top" title=""
									data-original-title="Pinterest"><i
									class="fa fa-pinterest-p"></i></a>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="clearfix"></div>

			<div class="product-tab">

				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation"><a href="#home" aria-controls="home"
						role="tab" data-toggle="tab">Product Info</a></li>
					<li role="presentation" class="active"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab">Delivery</a></li>
					<li role="presentation"><a href="#messages"
						aria-controls="messages" role="tab" data-toggle="tab">Returns</a></li>
					<li role="presentation"><a href="#settings"
						aria-controls="settings" role="tab" data-toggle="tab">Additional
							Information</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane fade" id="home">
						<p>
							<b>Standard Shipping:</b> Shipping within 6 business days, $4 -
							FREE (spend over $40) Orders under $40 may be shipped on an
							untracked service and may take longer to arrive
						</p>
						<p>
							<b>4-Day Shipping:</b> $6.00
						</p>
						<p>
							<b>2-Day Shipping:</b> $12.00 or FREE when you spend $140*
						</p>
						<p>
							<b>1-Day Shipping:</b> Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet, consectetur adium porttitor egestas orci,
							vitae ullamcor consectetur id. Vestib porttitor egestas orci,
							vitae ullamcorper risus dolor sit amet,
						</p>
						<p>
							<b>Dorem ipsum dolor sit: </b> Amet, consectetur adipiscing elit.
							Vestib porttitor egestas orci, vitae ullamcorper risus dolor sit
							amet, consectetur adium porttitor egestas orci, vitae ullamcor
							consectetur id. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet,
						</p>
					</div>
					<div role="tabpanel" class="tab-pane fade in active" id="profile">
						<p>
							<b>Standard Shipping:</b> Shipping within 6 business days, $4 -
							FREE (spend over $40) Orders under $40 may be shipped on an
							untracked service and may take longer to arrive
						</p>
						<p>
							<b>4-Day Shipping:</b> $6.00
						</p>
						<p>
							<b>2-Day Shipping:</b> $12.00 or FREE when you spend $140*
						</p>
						<p>
							<b>1-Day Shipping:</b> Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet, consectetur adium porttitor egestas orci,
							vitae ullamcor consectetur id. Vestib porttitor egestas orci,
							vitae ullamcorper risus dolor sit amet,
						</p>
						<p>
							<b>Dorem ipsum dolor sit: </b> Amet, consectetur adipiscing elit.
							Vestib porttitor egestas orci, vitae ullamcorper risus dolor sit
							amet, consectetur adium porttitor egestas orci, vitae ullamcor
							consectetur id. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet,
						</p>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="messages">
						<p>
							<b>Standard Shipping:</b> Shipping within 6 business days, $4 -
							FREE (spend over $40) Orders under $40 may be shipped on an
							untracked service and may take longer to arrive
						</p>
						<p>
							<b>4-Day Shipping:</b> $6.00
						</p>
						<p>
							<b>2-Day Shipping:</b> $12.00 or FREE when you spend $140*
						</p>
						<p>
							<b>1-Day Shipping:</b> Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet, consectetur adium porttitor egestas orci,
							vitae ullamcor consectetur id. Vestib porttitor egestas orci,
							vitae ullamcorper risus dolor sit amet,
						</p>
						<p>
							<b>Dorem ipsum dolor sit: </b> Amet, consectetur adipiscing elit.
							Vestib porttitor egestas orci, vitae ullamcorper risus dolor sit
							amet, consectetur adium porttitor egestas orci, vitae ullamcor
							consectetur id. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet,
						</p>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="settings">
						<p>
							<b>Standard Shipping:</b> Shipping within 6 business days, $4 -
							FREE (spend over $40) Orders under $40 may be shipped on an
							untracked service and may take longer to arrive
						</p>
						<p>
							<b>4-Day Shipping:</b> $6.00
						</p>
						<p>
							<b>2-Day Shipping:</b> $12.00 or FREE when you spend $140*
						</p>
						<p>
							<b>1-Day Shipping:</b> Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet, consectetur adium porttitor egestas orci,
							vitae ullamcor consectetur id. Vestib porttitor egestas orci,
							vitae ullamcorper risus dolor sit amet,
						</p>
						<p>
							<b>Dorem ipsum dolor sit: </b> Amet, consectetur adipiscing elit.
							Vestib porttitor egestas orci, vitae ullamcorper risus dolor sit
							amet, consectetur adium porttitor egestas orci, vitae ullamcor
							consectetur id. Vestib porttitor egestas orci, vitae ullamcorper
							risus dolor sit amet,
						</p>
					</div>
				</div>

				<div class="clearfix"></div>

			</div>

			<div class="slider-head">
				<h3>Related Products</h3>
			</div>

			<div class="container padd-60 special-offer">

				<div class="col-md-9 grid-list">

					<div class="clearfix"></div>

					<div class="col-md-3 col-sm-3">
						<div class="product">

							<div class="product-img">
								<a href="#" class="product-href"></a> <img
									src="img/product/cinnamon.png" alt=""
									class="img-responsive img-overlay" /> <img
									src="img/product/cinnamon.png" alt="" class="img-responsive" />

								<div class="sale-heart-hover">
									<a href="#"><i class="flaticon-heart"></i></a>
								</div>
							</div>
							<div class="product-body">
								<p>
									<a href="#">Cinnamon</a>
								</p>
								<h4>Rs.1500.00</h4>
								<div class="product-hover">
									<div class="add-cart-hover">
										<a href="#"><h6>Add to cart</h6> <i
											class="flaticon-3-signs" aria-hidden="true"></i></a>
									</div>

								</div>
							</div>

						</div>
					</div>

					<div class="col-md-3 col-sm-3 phone">
						<div class="product">

							<div class="product-img">
								<a href="#" class="product-href"></a> <img
									src="img/product/cloves.png" alt=""
									class="img-responsive img-overlay" /> <img
									src="img/product/cloves.png" alt="" class="img-responsive" />

							</div>
							<div class="product-body">
								<p>
									<a href="#">Cloves</a>
								</p>
								<h4>Rs.1500.00</h4>
								<div class="product-hover">
									<div class="add-cart-hover">
										<a href="#"><h6>Add to cart</h6> <i
											class="flaticon-3-signs" aria-hidden="true"></i></a>
									</div>

								</div>
							</div>

						</div>
					</div>

					<div class="col-md-3 col-sm-3 phone">
						<div class="product">

							<div class="product-img">
								<a href="#" class="product-href"></a> <img
									src="img/product/nutmeg.png" alt=""
									class="img-responsive img-overlay" /> <img
									src="img/product/nutmeg.png" alt="" class="img-responsive" />

							</div>
							<div class="product-body">
								<p>
									<a href="#">Nutmeg</a>
								</p>
								<h4>Rs.1500.00</h4>
								<div class="product-hover">
									<div class="add-cart-hover">
										<a href="#"><h6>Add to cart</h6> <i
											class="flaticon-3-signs" aria-hidden="true"></i></a>
									</div>

								</div>
							</div>

						</div>
					</div>

					<div class="col-md-3 col-sm-3">
						<div class="product">

							<div class="product-img">
								<a href="#" class="product-href"></a> <img
									src="img/product/mace.png" alt=""
									class="img-responsive img-overlay" /> <img
									src="img/product/mace.png" alt="" class="img-responsive" />

							</div>
							<div class="product-body">
								<p>
									<a href="#">Mace</a>
								</p>
								<h4>Rs.1500.00</h4>
								<div class="product-hover">
									<div class="add-cart-hover">
										<a href="#"><h6>Add to cart</h6> <i
											class="flaticon-3-signs" aria-hidden="true"></i></a>
									</div>

								</div>
							</div>

						</div>
					</div>










					<div class="clearfix"></div>



				</div>



				<div class="clearfix"></div>

			</div>


		</div>
	</div>


	<%@include file="footer.jsp"%>
	<!--Categories-menu-->
	<script>
		$('.product-information .sub-menu ul').hide();
		$(".product-information .sub-menu a").click(function() {
			$(this).parent(".sub-menu").children("ul").slideToggle("300");
			$(this).find("i.fa").toggleClass("fa-angle-up fa-angle-down");
		});

		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		})
	</script>



	<!--Light-slider-->
	<script src="${js}/lightslider.js"></script>
	<!--index-->
	<script src="${js}/index.js"></script>
	<!--custom-->
	<script src="${js}/custom.js"></script>

	<script type="text/javascript">
		document.getElementById('prod_quantity').value = 1;

		function cartsubmit() {
			document.forms['cartform'].submit();
		}
	</script>
	<security:authorize access="hasRole('ROLE_USER')">
		<script src="${js}/cartitem-availability.js"></script>
	</security:authorize>


</body>


</html>