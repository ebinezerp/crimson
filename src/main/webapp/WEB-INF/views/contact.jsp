<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Contact | Crimson</title>
<%@include file="links.jsp"%>
</head>

<body>

	<div class="about-page">
		<!--page wrap-->

		<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>

		<%@include file="header.jsp"%>

		<%@include file="searchmenu.jsp"%>


		<!--Header-->
		<div class="container-fluid header-main">
			<div class="container text-center">

				<h2>Contact Us</h2>
				<div class="link-sec">
					<a href="#">Home</a> <i class="fa fa-angle-right"></i> <a href="#">Cart</a>
				</div>

			</div>
		</div>




		<!--main-->
		<div class="container contact-main padd-80">

			<div class="col-md-6 contact-left">

				<div class="contact-info">
					<h3>
						Get in touch with Us <i class="flaticon-1-send pull-right"></i>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum porttitor egestas orci, vitae ullamcorper risus
						consectetur id.</p>
				</div>
				<c:if test="${messageSentStatus==true}">
					<div class="alert alert-success">Message is sent successful</div>
				</c:if>
				<c:if test="${messageSentStatus==false}">
					<div class="alert alert-warning">Message sent failed</div>
				</c:if>
				<div class="row">
					<springform:form action="${contextPath}/send" method="POST"
						modelAttribute="contactMessage" name="contactMessage">
						<div class="col-sm-6">
							<label>Full Name *</label>
							<springform:input type="text" path="fullname" />
							<springform:errors class="error_msg" path="fullname"></springform:errors>
						</div>
						<div class="col-sm-6">
							<label>Your Email *</label>
							<springform:input type="email" path="email" />
							<springform:errors class="error_msg" path="email"></springform:errors>
						</div>
						<div class="col-sm-6">
							<label>Phone Number *</label>
							<springform:input type="text" path="mobile" />
							<springform:errors class="error_msg" path="mobile"></springform:errors>
						</div>
						<div class="col-sm-6">
							<label>Subject *</label>
							<springform:input type="text" path="subject" />
							<springform:errors class="error_msg" path="subject"></springform:errors>
						</div>
						<div class="col-sm-12">
							<label>Your Message</label>
							<springform:textarea path="message"></springform:textarea>
							<springform:errors class="error_msg" path="message"></springform:errors>
						</div>
						<div class="clearfix"></div>
						<div class="col-sm-12 text-right">
							<a href="#" onclick="sendMessage()" class="shp-btn">Send a Message<i
								class="flaticon-paper-plane"></i></a>
						</div>
					</springform:form>
				</div>

			</div>

			<div class="col-md-6 contact-right">

				<div class="contact-info">

					<h3>Contact Informations</h3>
					<div class="contact">
						<i class="flaticon-placeholder-1"></i>
						<p>Anna Nagar, Chennai</p>
					</div>
					<div class="clearfix"></div>
					<div class="contact">
						<i class="flaticon-headphones"></i>
						<p class="phone-no">044-24790545</p>
					</div>
					<div class="clearfix"></div>
					<div class="contact">
						<i class="flaticon-message"></i>
						<p>tradingcrimson@gmail.com</p>
					</div>
					<div class="clearfix"></div>
					<div class="contact">
						<i class="fa fa-clock-o"></i>
						<p>
							Monday - Friday 9am to 5pm <br> Saturday - 9am to 2pm <br>
							Sunday - Closed
						</p>
					</div>
					<div class="clearfix"></div>
					<div class="follow-us">
						<h2>Follow us</h2>
						<div class="follow">
							<a href="#"><i class="fa fa-facebook-f" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
						</div>
					</div>

				</div>

			</div>

			<div class="clearfix"></div>

		</div>

		<%@include file="footer.jsp"%>
		<script type="text/javascript">
		
		function sendMessage(){
			document.forms['contactMessage'].submit();
		}
		
		</script>
</body>

</html>