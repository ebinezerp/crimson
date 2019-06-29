<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<div claess="container header-sec">

	<div class="col-md-4 header">
		<div class="header-left">
			<div class="top-bar-list phone">
				<i class="flaticon-phone-call"></i>
				<p>044-24790545</p>
			</div>
			<div class="top-bar-list">
				<i class="flaticon-e-mail-envelope"></i>
				<p>tradingcrimson@gmail.com</p>
			</div>
		</div>
	</div>

	<div class="col-md-7 col-sm-12 header">

		<div class="header-right">
			<div class="top-bar-list">
				<p>

					<security:authorize access="isAnonymous()">
						<i class="flaticon-login"></i>
						<b><a href="#" data-toggle="modal" id="signup"
							data-target="#myModal">Register</a></b>
						or <b><a href="#" data-toggle="modal" id="login"
							data-target="#myModal2">Sign in</a></b>
					</security:authorize>
				</p>
				<security:authorize access="isAuthenticated()">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							${reg_user.username} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/profile">Profile</a></li>
							<security:authorize access="hasRole('ROLE_USER')">
								<li><a href="${contextPath}/orders/${reg_user.userId}">Order
										History</a></li>
							</security:authorize>
							<li><a href="${contextPath}/logout">Logout</a></li>
						</ul>
					</div>
				</security:authorize>
			</div>
			<%-- <div class="top-bar-list">
				<i class="flaticon-login"></i>
				<p>
					<security:authorize access="isAnonymous()">
						<b><a href="#" data-toggle="modal" id="signup"
							data-target="#myModal">Register</a></b>
						or <b><a href="#" data-toggle="modal" id="login"
							data-target="#myModal2">Sign in</a></b>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
					<b><a href="${contextPath}/logout">Logout</a></b>
					</security:authorize>
				</p>
			</div> --%>
		</div>
	</div>
	<div class="clearfix"></div>

</div>