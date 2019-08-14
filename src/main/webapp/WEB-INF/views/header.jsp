<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!--header-->
<header class="border">
	<%@include file="menu.jsp"%>
	<security:authorize access="!isAuthenticated()">
		<%@include file="signupmodal.jsp"%>
		<%@include file="loginmodal.jsp"%>
	</security:authorize>
</header>