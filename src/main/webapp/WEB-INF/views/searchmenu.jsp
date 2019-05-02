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
					<li><a href="${contextPath}/aboutus">About Us</a></li>


					<li class="active "><a href="${contextPath}/products">PRODUCTS</a></li>

					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="${contextPath}/admin/productform">ADD
								PRODUCT</a></li>
						<li><a href="${contextPath}/orders">ORDERS</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="${contextPath}/user/cart">CART&nbsp&nbsp<span id="cart_count"
								style="background-color: #ef402b; color: white; padding: 4px;">${cart_count}</span></a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="${contextPath}/contact">CONTACT</a></li>
					</security:authorize>
					<security:authorize access="isAnonymous()">
						<li><a href="${contextPath}/contact">CONTACT</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="${contextPath}/admin/contacts">CONTACT MESSAGES</a></li>
					</security:authorize>


				</ul>


			</div>

		</nav>
	</div>


	<div class="clearfix"></div>
</div>
