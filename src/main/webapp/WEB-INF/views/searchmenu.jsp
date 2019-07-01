<!--search-->
<div class="container logo-bar">
	<div class="col-md-5 logo-name text-center">
		<a href="index.html"><img src="${img}/index/logo.png" alt=""
			class="img-responsive" /></a>
	</div>
	<!--menu-->
	<div class="container menu">
		<nav class="navbar navbar-default">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav navbar-left">
					

					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li class="menuitem ${productsmenu}"><a
							href="${contextPath}/products">PRODUCTS</a></li>
						<li class='menuitem ${addproductform}'><a
							href="${contextPath}/admin/productform">ADD PRODUCT</a></li>
						<li class='menuitem ${ordersmenu}'><a
							href="${contextPath}/orders">ORDERS</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
						<li class='menuitem ${aboutusmenu}'><a
							href="${contextPath}/aboutus">About Us</a></li>
						<li class="menuitem ${productsmenu}"><a
							href="${contextPath}/products">PRODUCTS</a></li>
						<li class='menuitem ${cartmenu}'><a
							href="${contextPath}/user/cart">CART&nbsp&nbsp<span
								id="cart_count"
								style="background-color: #ef402b; color: white; padding: 4px;">${cart_count}</span></a></li>
					</security:authorize>


					<%-- 	<security:authorize access="hasRole('ROLE_USER')">
						<li class='menuitem ${contactmenu}'><a href="${contextPath}/contact">CONTACT</a></li>
					</security:authorize>
					<security:authorize access="isAnonymous()">
						<li class='menuitem ${contactmenu}'><a href="${contextPath}/contact">CONTACT</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li class='menuitem ${contactmenu}'><a href="${contextPath}/admin/contacts">CONTACT MESSAGES</a></li>
					</security:authorize> --%>


				</ul>


			</div>

		</nav>
	</div>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.menuitem').click(function() {
				console.log(this);
				console.log(this.siblings);
			})
		})
	</script>


	<div class="clearfix"></div>
</div>
