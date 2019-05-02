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

		<div class="row">
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
						<center>
							<h4>
								<b>Product Details</b>
							</h4>
						</center>
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
						<p>
						<h3>Total Amount:</h3>${order.totalAmount}</p>
					</div>

				</div>
				<button class="btn btn-primary" onclick="printBill()">Print</button>
			</div>
		</div>
		<div>
			<a href="${contextPath}/products" class="shp-btn">Continue
				shopping</a>
		</div>

	</div>
	<hr>
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
		function printBill() {
			var mywindow = window.open('', 'PRINT', 'height=400,width=600');

			mywindow.document.write('<html><head><title>' + document.title
					+ '</title>');
			mywindow.document.write('</head><body >');
			mywindow.document.write('<h1>' + document.title + '</h1>');
			mywindow.document
					.write(document.getElementById('bill_section').innerHTML);
			mywindow.document.write('</body></html>');

			mywindow.document.close(); // necessary for IE >= 10
			mywindow.focus(); // necessary for IE >= 10*/

			mywindow.print();
			mywindow.close();

			return true;
		}
	</script>
</body>
</html>