<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>
<%@include file="links.jsp"%>
<link
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="about-page">
		<%@include file="menu.jsp"%>
		<%@include file="searchmenu.jsp"%>
		<hr>
		<div class="container-fluid">
			<div class="orders col-md-7 col-md-offset-2">
				<c:if test="${deliveryStatus!=null}">
					<c:if test="${dispatchStatus==false}">
						<h4 class="alert alert-danger">Dispatch is not yet done</h4>
					</c:if>
					<c:if test="${deliveryStatus==true}">
						<h4 class="alert alert-success">Delivery status is updated</h4>
					</c:if>
				</c:if>
				<table class="table stripped" id="orders">
					<thead>
						<tr>
							<th>Order Id</th>
							<th>Total Amount</th>
							<th>Dispatch Status</th>
							<th>Delivery Status</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${orders}" var="order">
							<tr>
								<td><a style="text-decoration: underline;"
									href="${contextPath}/admin/order/${order.orderId}">${order.orderId}</a></td>
								<td>${order.totalAmount}</td>
								<td><c:if test="${order.dispatchStatus==true}">
										<button class="btn btn-success">Dispatched</button>
									</c:if> <c:if test="${order.dispatchStatus==false}">
										<a href="${contextPath}/admin/dispatch/${order.orderId}"
											class="btn btn-warning">Dispatch</a>
									</c:if></td>
								<td><c:if test="${order.deliveryStatus==true}">
										<button class="btn btn-success">Delivered</button>
									</c:if> <c:if test="${order.deliveryStatus==false}">
										<a href="${contextPath}/admin/deliver/${order.orderId}"
											class="btn btn-warning">Deliver</a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<hr>
		<%@include file="footer.jsp"%>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#orders').DataTable();
		});
	</script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
</body>
</html>