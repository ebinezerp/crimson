<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="links.jsp"%>
</head>
<body>
	<%@include file="menu.jsp"%>
	<%@include file="searchmenu.jsp"%>
	<hr>
	<div class="container">
		<div id="bill_section" class="col-md-7 col-md-offset-2">
			<div class="bill_header" style="display: flex">
				<h3 style="flex: 2">Order No: ${order.orderId}</h3>
				<img alt="Logo" style="flex: 1" src="${img}/index/logo.png">
			</div>
			<div class="bill_body">
				<div class="order_reciever_address">
					<p>${order.orderReciever.firstname}
						${order.orderReciever.lastname}</p>
					<p>${order.orderReciever.companyName}</p>
					<p>${order.orderReciever.email}</p>
					<P>${order.orderReciever.mobile}</P>
					<h4>
						<b>Delivery Address</b>
					</h4>
					<p>${order.orderReciever.address.apartment}</p>
					<p>${order.orderReciever.address.street}</p>
					<p>${order.orderReciever.address.city}</p>
					<p>${order.orderReciever.address.country}</p>
					<p>${order.orderReciever.address.code}</p>
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
							<tr>
								<td>${orderItem.product.productName}</td>
								<td>${orderItem.unitPrice}</td>
								<td>${orderItem.quantity}</td>
								<td>${orderItem.totalPrice}</td>
							<tr>
						</c:forEach>
					</table>
					<p><h3>Total Amount: </h3>${order.totalAmount}</p>
				</div>
				<div>
				 <a href="${contextPath}/products" class="shp-btn">Continue
						shopping</a>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<%@include file="footer.jsp"%>
</body>
</html>