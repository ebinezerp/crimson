<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>
<%@include file="links.jsp"%>
<style>
ul>li {
	font-size: 14px;
}

div.image-gallery-row {
	width: 90%;
}

div.our-prod-images {
	padding: 15px;
}

div.our-prod-images> img {
	width: 100%;
	height: 180px;
	border-radius: 8px;
}
</style>
</head>

<body>

	<div class="about-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

		<%-- <%@include file="header.jsp"%>
		
		
		
		<div class="container logo-name">
			<div class="col-md-5 logo-name text-center">
		<a href="index.html"><img src="${img}/index/logo.png" alt=""
			class="img-responsive" /></a>
	</div> --%>

		<%@include file="header.jsp"%>
		<div class="container logo-name">

			<%@include file="searchmenu.jsp"%>


		</div>

		<div class="container-fluid" style='margin-bottom: 15px'>
			<!-- 	<div class="alert alert-warning alert-dismissible fade show"
				role="alert">
				<strong></strong> You should check in on some of
				those fields below.
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div> -->
		</div>

		<!--top-sec-->
		<div class="container-fluid mission-sec sign-up">
			<div class="col-md-6 newsletter passsion-info text-center">
				<div class="passion-to-work">
					<p>We do your work with</p>
					<h4>passion</h4>
					<p class="best-result">To get the best result</p>

				</div>
			</div>
			<div class="col-md-offset-4 col-md-8 passion-body col-sm-12 padd-80"></div>
			<div class="clearfix"></div>
		</div>

		<!--welcome-sec-->
		<div class="container welcome-sec padd-80">
			<div class="col-md-12 about-heading">
				<h3>
					Welcome To <span>Crimson Trading</span>
				</h3>
				<h5>Quickly Repurpose Innovation Business Before Global The
					Communities.</h5>

			</div>
			<div class="clearfix"></div>

			<div class="col-md-4 col-sm-4 mt-50 welcome-content padd-40">
				<i class="flaticon-3-medal"></i>
				<h3>WHAT WE ARE</h3>
				<h5>BEST TRADERS</h5>
				<p>Crimson is an aggregator of all food retail
					outlets-Bakeries,Restaurants and Canteens in India. We want to
					build the largest network across 100 cities in India</p>
			</div>

			<div class="col-md-4 col-sm-4 mt-50 welcome-content padd-40">
				<i class="flaticon-3-like"></i>
				<h3>WHAT WE DO</h3>
				<h5>BEST SPICES OF THE WORLD</h5>
				<p>We offer our network to companies at a fraction of the cost
					of setting up their own distribution network, thereby giving food
					retail outlets even at remote locations access to quality products</p>
			</div>

			<div class="col-md-4 col-sm-4 mt-50 welcome-content padd-40">
				<i class="flaticon-3-check"></i>
				<h3>Our Promise</h3>
				<h5>Trusted</h5>
				<p></p>
				<ul>
					<li>High choice of All Products</li>
					<li>Competitive Pricing</li>
					<li>On Time of Delivery</li>
				</ul>

			</div>
			<div class="clearfix"></div>

		</div>

		<!--mission-sec-->
		<div class="container-fluid our-mission-sec mission-sec sign-up">
			<div class="col-md-6 newsletter text-center"></div>
			<div
				class="col-md-offset-6 col-md-6 mission-detail col-sm-12 padd-80">
				<h4>
					Our <span>Mission</span>
				</h4>
				<h6>Our mission are always tested by users so you can be sure
					you always purchase fully valuable products.</h6>
				<p>To give all food processors and producers access to the
					largest network of food retail outlets in India</p>
				<p>Use Technology as a bridge to establish the network and to
					provide quality raw materials to the organised and unorganised food
					retail outlets</p>
				<a href="#" class="work-btn">Our work</a>
			</div>
			<div class="clearfix"></div>
		</div>

		<!--team-slider-->
		<div class="container padd-80 team-sec">
			<div class="col-md-12 about-heading">
				<h3>
					Our <span>Products</span>
				</h3>
				<h5>Quickly Repurpose Innovation Business Before Global The
					Communities.</h5>
			</div>
			<div class="clearfix"></div>
			<div class="clearfix"></div>
			<div class="tranding mt-40 col-md-offset-2">
				<div class='row'>
					<div class='col-md-3 our-prod-images'>
						<img src="${img}/index/Bakeryshortening.jpg">
					</div>
					<div class='col-md-3 our-prod-images'>
						<img src="${img}/index/cocoapowder.jpg">
					</div>
					<div class='col-md-3 our-prod-images'>
						<img src="${img}/index/essance.jpg">
					</div>
				</div>
				<div class='row'>
					<div class='col-md-3 our-prod-images'>
						<img src="${img}/index/flour.jpg">
					</div>
					<div class='col-md-3 our-prod-images'>
						<img src="${img}/index/sugar.jpg">
					</div>
					<div class='col-md-3 our-prod-images'>
						<img src="${img}/index/yeast.jpg">
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>

		<!--testimonial-->
		<div class="container-fluid testi-bg">
			<div class="col-md-4 testi">
				<div class="col-md-11 col-md-offset-1 testi-text">
					<h4>Customer story</h4>
				</div>
			</div>
			<div class="col-md-offset-4 col-md-8 testimonial-slider">
				<div class="container padd-50">
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12">
							<div id="testimonial-slider" class="owl-carousel">
								<div class="col-sm-12">
									<div class="testimonial-2">
										<div class="pic-2">
											<img src="${img}/index-3/testimonial-img-1.png"
												class="img-responsive" alt="">
										</div>
										<div class="testimonial-review">
											<h3 class="">Lucius Cashmere</h3>
											<h4>Position</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Vestibulum porttitor egestas orci, vitae ullamco rper
												risus consectetur id. Donec at velit vest ulum, rutrum quis.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="testimonial-2">
										<div class="pic-2">
											<img src="${img}/index-3/testimonial-img-2.png"
												class="img-responsive" alt="">
										</div>
										<div class="testimonial-review">
											<h3 class="">Xena Wobbles</h3>
											<h4>Position</h4>
											<p>Dolor sit amet, consectetur adipiscing elit.
												Vestibulum porttitor egestas orci, vitae ullamco rper risus.
												Donec at velit vest ulum, rutrum massa quis, porttitor
												lorem.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="testimonial-2">
										<div class="pic-2">
											<img src="${img}/index-3/testimonial-img-3.png"
												class="img-responsive" alt="">
										</div>
										<div class="testimonial-review">
											<h3 class="">Flip Jupiter</h3>
											<h4>Position</h4>
											<p>Ipsum dolor sit amet, consectetur adipiscing elit.
												Vestibulum porttitor egestas orci, vitae ullamco rper risus
												consectetur id. Donec at velit vest ulumm massa quis.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="testimonial-2">
										<div class="pic-2">
											<img src="${img}/index-3/testimonial-img-1.png"
												class="img-responsive" alt="">
										</div>
										<div class="testimonial-review">
											<h3 class="">Lucius Cashmere</h3>
											<h4>Position</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Vestibulum porttitor egestas orci, vitae ullamco rper
												risus consectetur id. Donec at velit vest ulum massa quis.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="testimonial-2">
										<div class="pic-2">
											<img src="${img}/index-3/testimonial-img-2.png"
												class="img-responsive" alt="">
										</div>
										<div class="testimonial-review">
											<h3 class="">Xena Wobbles</h3>
											<h4>Position</h4>
											<p>Dolor sit amet, consectetur adipiscing elit.
												Vestibulum porttitor egestas orci, vitae ullamco rper risus.
												Donec at velit vest ulum, rutrum massa quis, porttitor
												lorem.</p>
										</div>
									</div>
								</div>


							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>

		</div>
	</div>





	<!--footer-->
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
		if ('${signup_status}' === 'input_errors') {
			document.getElementById('signup').click();
		}

		var query = window.location.search;

		if (query.includes('?login')) {
			document.getElementById('login').click();
		}
	</script>


</body>

</html>