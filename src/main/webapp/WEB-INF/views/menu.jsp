<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<div class="container header-sec">

	<div class="col-md-5 header">
		<div class="header-left">
			<div class="top-bar-list phone">
				<i class="flaticon-phone-call"></i>
				<p>+91 98480 98480</p>
			</div>
			<div class="top-bar-list">
				<i class="flaticon-e-mail-envelope"></i>
				<p>Info@crimsontrading.com</p>
			</div>
		</div>
	</div>

	<div class="col-md-7 col-sm-12 header">

		<div class="header-right">

			<div class="top-bar-list">
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
			</div>
		</div>
	</div>
	<div class="clearfix"></div>

</div>