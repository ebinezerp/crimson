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
		<div class='border' style="padding: 15px">
			<%@include file="menu.jsp"%>
		</div>
		<%@include file="searchmenu.jsp"%>

		<div class="container mt-30">
			<div class="orders col-md-9">
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
							<th>Ordered Date</th>
							<th>Company Name</th>
							<th>Orderd Location</th>
							<th>Total Amount</th>
							<security:authorize
								access="hasRole('ROLE_USER')||hasRole('ROLE_OWNER')">
								<th>Dispatch Status</th>
								<th>Delivery Status</th>
								<th>Payment Status</th>
							</security:authorize>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${orders}" var="order">
							<tr>
								<td><a style="text-decoration: underline;"
									href="${contextPath}/order/${order.orderId}">${order.orderId}</a></td>
								<td>${order.orderedDate}</td>
								<td>${order.user.userDetails.companyName}</td>
								<td>${order.user.userDetails.address.city}</td>
								<td>${order.totalAmount}</td>
								<security:authorize
									access="hasRole('ROLE_OWNER')||hasRole('ROLE_USER')">
									<td><c:if test="${order.dispatchStatus==true}">
											<button class="btn btn-success">Dispatched</button>
										</c:if> <security:authorize access="hasRole('ROLE_USER')">
											<c:if test="${order.dispatchStatus==false}">
												<button class="btn btn-warning">Order Confirmed</button>
											</c:if>
										</security:authorize> <security:authorize access="hasRole('ROLE_OWNER')">
											<c:if test="${order.dispatchStatus==false}">
												<a href="${contextPath}/admin/dispatch/${order.orderId}"
													class="btn btn-warning">Dispatch</a>
											</c:if>
										</security:authorize></td>
									<td><c:if test="${order.deliveryStatus==true}">
											<button class="btn btn-success">Delivered</button>
										</c:if> <security:authorize access="hasRole('ROLE_USER')">
											<c:if test="${order.deliveryStatus==false}">
												<button class="btn btn-warning">Sent for Delivery</button>
											</c:if>

										</security:authorize> <security:authorize access="hasRole('ROLE_OWNER')">
											<c:if test="${order.deliveryStatus==false}">
												<a href="${contextPath}/admin/deliver/${order.orderId}"
													class="btn btn-warning">Deliver</a>
											</c:if>
										</security:authorize></td>
									<td><c:if test="${order.paymentStatus==true}">
											<button class="btn btn-success">Paid</button>
										</c:if> <security:authorize access="hasRole('ROLE_USER')">
											<c:if test="${order.paymentStatus==false}">
												<button class="btn btn-warning">Payment is pending</button>
											</c:if>

										</security:authorize> <security:authorize access="hasRole('ROLE_OWNER')">
											<c:if
												test="${order.deliveryStatus==true && order.paymentStatus == false}">
												<a
													href="${contextPath}/admin/paymentupdate/${order.orderId}"
													class="btn btn-warning">Update Payment</a>
											</c:if>
										</security:authorize></td>
								</security:authorize>
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