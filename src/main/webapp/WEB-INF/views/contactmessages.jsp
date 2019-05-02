<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>
<%@include file="links.jsp"%>
</head>
<body>
	<div class="about-page">
		<%@include file="menu.jsp"%>
		<%@include file="searchmenu.jsp"%>
		<hr>
		<div class="container">
			<div class="col-md-7 col-md-offset-2">
				<table class="table">
					<thead>
						<tr>
							<th>Email</th>
							<th>Message Subject</th>
							<th>Message</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${contacts}" var="contactMessage">
							<tr>
								<td>${contactMessage.email}</td>
								<td><a
									href="${contextPath}/admin/${contactMessage.messageId}">${contactMessage.subject}</a></td>
								<td>${contactMessage.message}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<hr>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>