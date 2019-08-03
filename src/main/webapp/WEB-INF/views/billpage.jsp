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

	<div class="border" style="padding:10px">
	<%@include file="menu.jsp"%>
	</div>
	<%@include file="searchmenu.jsp"%>
	<div class="container">

		<div class="row">
			<div id="bill_section" class="col-md-7 col-md-offset-2">

				<div class="bill_header" style="display: flex">
					<h3 style="flex: 2">Order No: ${order.orderId}</h3>
					<img alt="Logo" style="flex: 1" src="${img}/index/logo.png">
				</div>
				<div class="bill_body">
					<div class="order_reciever_address">
						<p>${order.user.username}</p>
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
				<button class="btn" style="background-color:#ef402b;color:white" onclick="printBill()">Print</button>
			</div>
		</div>
		<div class="col-md-offset-3 col-md-3 padd-5">
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