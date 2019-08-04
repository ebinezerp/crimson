<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
<%@include file="links.jsp"%>
<style type="text/css">
@media screen , print {
	#bill_section {
		border: 1px solid black;
		margin: 0;
	}
	#bill_section>* {
		margin: 0;
	}
	#bill_header_section {
		border-bottom: 1px solid black;
	}
	#tax_heading {
		display: flex;
		justify-content: flex-end;
	}
	label {
		font-weight: bold;
	}
	div#invoice_address_details {
		display: flex;
		justify-content: space-around;
		border-bottom: 1px solid black;
	}
	div#invoice_details, div#address_details {
		padding: 1%;
		flex: 1;
		display: flex;
		justify-content: flex-start;
	}
	div#invoice_details>table {
		width: 80%;
	}
	div#invoice_details>table tr td {
		padding-right: 5%;
	}
	div#billto {
		display: flex;
		justify-content: flex-start;
		border-bottom: 1px black solid;
	}
	div#billto>table {
		width: 100%;
		border: 1px solid black;
		border-collapse: collapse;
	}
	div#billto>table tr td {
		padding-right: 5%;
		padding-left: 1%;
		border: 1px solid black;
		border-collapse: collapse;
		border: 1px solid black;
	}
	div#billto>table tr td p {
		font-size: x-large;
	}
	div#amount_words {
		border-right: 1px black solid;
		border-bottom: 1px black solid;
	}
	div#bill_footer {
		display: flex;
		margin: 0;
		padding: 0;
	}
	div#bill_footer>#payment_details {
		flex: 3
	}
	div#bill_footer>#subtotal_details {
		flex: 2;
		border-left: 1px black solid;
		border-bottom: 1px black solid;
		margin: 0;
		padding: 0;
	}
	div#total_payment {
		border-bottom: 1px black solid;
		padding-left: 5%;
	}
	div#total_payment>table tr td {
		padding-right: 20%;
		padding-bottom: 5%;
	}
	div#signature>#signature_box {
		height: 100px;
	}
	div#terms_conditions {
		padding-top: 15%;
		padding-left: 5%;
	}
}
</style>
</head>
<body>

	<div class="border" style="padding: 10px">
		<%@include file="menu.jsp"%>
	</div>
	<%@include file="searchmenu.jsp"%>
	<div class="container">
		<div class="row mt-30">
			<div id="bill_section" class="col-md-9 col-md-offset-1">
				<div id="bill_header_section">
					<div id="crimson_address">
						<h3>Crimson Trading Company</h3>
						G/A 83,Koyembedu Food Grains Market,<br> Koyembedu-Ph:
						8056166877,8072218195<br> Chennai Tamil Nadu 600112<br>
						India<br> GSTIN 33AALFC3136C1ZZ<br>
					</div>
					<div id="tax_heading">
						<h2>TAX INVOICE</h2>
					</div>
				</div>
				<div id="invoice_address_details">
					<div id="invoice_details">
						<table>
							<tr>
								<td><label>#</label></td>
								<td>: ${order.orderId}</td>
							</tr>
							<tr>
								<td><label>Invoice Date</label></td>
								<td>: ${order.orderedDate}</td>
							</tr>
							<tr>
								<td><label>Terms</label></td>
								<td>: Due On Reciept</td>
							</tr>
							<tr>
								<td><label>Due Date</label></td>
								<td>: ${order.deliveryDate}</td>
							</tr>
						</table>
					</div>
					<div id="address_details">
						<label>Place of Order</label>: ${order.orderAddress.city}
					</div>
				</div>

				<div id="billto">
					<table>
						<tr>
							<td colspan="10"><label>BILL TO</label></td>
						</tr>
						<tr>
							<td colspan="10"><p>:
									${order.user.userDetails.companyName}</p></td>
						</tr>
						<tr>
							<td colspan="5"></td>
							<td colspan="2"><label>CGST</label></td>
							<td colspan="2"><label>SGST</label></td>
							<td></td>
						</tr>
						<tr>
							<td><label>#</label></td>
							<td><label>Item & Description</label></td>
							<td><label>HSN/SAC</label></td>
							<td><label>Qty</label></td>
							<td><label>Rate</label></td>
							<td><label>%</label></td>
							<td><label>amt</label></td>
							<td><label>%</label></td>
							<td><label>amt</label></td>
							<td><label>Amount</label></td>
						</tr>
						<c:forEach items="${order.orderItems}" var="orderItem"
							varStatus="i">
							<tr>
								<td>${i.index+1}</td>
								<td>${orderItem.product.productName}</td>
								<td>${orderItem.product.category.categoryName}</td>
								<td>${orderItem.quantity}</td>
								<td>${orderItem.unitPrice}</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>${orderItem.totalPrice}</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div id="bill_footer">
					<div id="payment_details">
						<div id="amount_words">
							<p>Total In words</p>
							<p>
								<label></label>
							</p>
							<p>Thank you for your payment. You just made our day.</p>
						</div>
						<div id="terms_conditions">
							<ul style="list-style-type: none; margin: 0; padding: 0">
								<li>Terms & Conditions</li>
								<li>Crimson Trading Company</li>
								<li>Punjab National Bank</li>
								<li>Ac No: 7761002100001733</li>
								<li>IFSC: PUNB0776100</li>
							</ul>
						</div>
					</div>
					<div id="subtotal_details">
						<div id="total_payment">
							<table>
								<tr>
									<td>SubTotal
									<td>
									<td>${order.totalAmount}</td>
								</tr>
								<tr>
									<td>CGST(%)</td>
									<td></td>
								</tr>
								<tr>
									<td>SGST(%)</td>
									<td></td>
								</tr>
								<tr>
									<td>Adjustment</td>
									<td></td>
								</tr>
								<tr>
									<td>Total</td>
									<td></td>
								</tr>
								<tr>
									<td>Balance Due</td>
								</tr>
							</table>
						</div>
						<div id="signature">
							<p id="signature_box"></p>
							<p id="">Authorized Signature</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div align="center" style="margin: 2%;">
			<button class="shp-btn" onclick="printBill()">Print</button>
		</div>
		<div>
			<div class="col-md-offset-3 col-md-3 padd-5">
				<a href="${contextPath}/products" class="shp-btn">Continue
					shopping</a>
			</div>
		</div>

	</div>
	<hr>
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
		function printBill() {
			var mywindow = window.open('', 'PRINT', 'height=400,width=600');

			mywindow.document.write("<html>");
			mywindow.document
					.write(document.getElementsByTagName("head")[0].innerHTML);
			mywindow.document.write('<body >');
			mywindow.document.write('<h1>' + document.title + '</h1>');
			mywindow.document.write(document
					.getElementsByClassName("logo-name")[0].innerHTML);
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