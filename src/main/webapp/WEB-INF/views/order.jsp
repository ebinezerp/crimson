<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Crimson</title>
<%@include file="links.jsp"%>
</head>
<body>
	<div class="about-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>
		<%@include file="menu.jsp"%>
		<%@include file="searchmenu.jsp"%>
		<hr>
		<div class="container-fluid">
			<div class="col-md-7 col-md-offset-2">
				<div class="bill_body">
					<div class="order_reciever_address">
						<p>${order.user.username }</p>
						<p>${order.user.userDetails.companyName}</p>
						<p>${order.user.email}</p>
						<P>${order.user.mobile}</P>
						<h4>
							<b>Delivery Address</b>
						</h4>
						<p>${order.orderAddress.doorNo}</p>
						<p>${order.orderAddress.street}</p>
						<p>${order.orderAddress.city}</p>
						<p>${order.orderAddress.country}</p>
						<p>${order.orderAddress.code}</p>
					</div>
					<br> <br>
					<div class="cart_details">
						<table class="table stripped">
							<tr>
								<th>Product Name</th>
								<th>Unit Price</th>
								<th>Quantity</th>
								<th>Total Price</th>
							</tr>
							<c:forEach items="${order.orderItems}" var="orderItem">
								<c:if test="${reg_user.adminDetails.category.categoryId== orderItem.product.category.categoryId}">
									<tr>
										<td>${orderItem.product.productName}</td>
										<td>${orderItem.unitPrice}</td>
										<td>${orderItem.quantity}</td>
										<td>${orderItem.totalPrice}</td>
									<tr>
								</c:if>
							</c:forEach>
						</table>
						<p>
						<h3>Total Amount:</h3>${order.totalAmount}</p>
					</div>
					<div>

						<c:if test="${order.dispatchStatus==true}">
							<button class="btn btn-success">Dispatched</button>
						</c:if>

						<security:authorize access="hasRole('ROLE_USER')">
							<c:if test="${order.dispatchStatus==false}">
								<button class="btn btn-warning">Order Confirmed</button>
							</c:if>
						</security:authorize>

						<security:authorize access="hasRole('ROLE_ADMIN')">
							<c:if test="${order.dispatchStatus==false}">
								<a href="${contextPath}/admin/dispatch/${order.orderId}"
									class="btn btn-warning">Dispatch</a>
							</c:if>
						</security:authorize>
						<c:if test="${order.deliveryStatus==true}">
							<button class="btn btn-success">Delivered</button>
						</c:if>

						<security:authorize access="hasRole('ROLE_USER')">
							<c:if test="${order.deliveryStatus==false}">
								<button class="btn btn-warning">Sent for Delivery</button>
							</c:if>

						</security:authorize>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<c:if test="${order.deliveryStatus==false}">
								<a href="${contextPath}/admin/deliver/${order.orderId}"
									class="btn btn-warning">Deliver</a>
							</c:if>
						</security:authorize>
					</div>
					<div align="center" class='mt-50'>
						<a class='shp-btn'
							href="${contextPath}/user/bill/${order.orderId}">Bill Preview</a>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>