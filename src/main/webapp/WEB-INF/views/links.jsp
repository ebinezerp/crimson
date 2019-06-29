<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>



<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="springform"%>

<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>



<spring:url value="/resources/img" var="img"></spring:url>
<spring:url value="/resources/css" var="css"></spring:url>
<spring:url value="/resources/fonts" var="fonts"></spring:url>
<spring:url value="/resources/js" var="js"></spring:url>
<spring:url value="/images" var="prodimgs"></spring:url>



<link rel="icon" sizes="16x16" href="${img}/index/favicon.png">
<!--css-->
<link rel="stylesheet" type="text/css" href="${css}/style.css" />
<link rel="stylesheet" type="text/css" href="${css}/range-select.css">
<!--BOOTSTRAP-->
<link rel="stylesheet" type="text/css" href="${css}/bootstrap.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!--fonts-->
<link href="https://fonts.googleapis.com/css?family=Karla:400,700"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${fonts}/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${fonts}/font/flaticon.css">
<!--slider-->
<link rel="stylesheet" href="${css}/owl.carousel.min.css">
<link rel="stylesheet" type="text/css" href="${css}/testimonial.css">
<!--range-slider-->
<link href="${css}/range-slider.css" rel="stylesheet" type="text/css">
<!--slider-->
<link href="${css}/theme.css" rel="stylesheet">
<link rel="stylesheet" href="${css}/lightslider.css" />





<spring:url value="${pageContext.request.contextPath}" var="contextPath"></spring:url>

