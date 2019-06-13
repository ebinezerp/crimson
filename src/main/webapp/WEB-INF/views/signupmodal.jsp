<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="springform"%>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-body">

				<c:if test="${signup_error==true}">
					<span class='error_msg'>Error Occured During Registration.
						Try again later</span>
				</c:if>

				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="col-sm-5 modal-img">
					<img src="${img}/index/modal-bg.jpg" class="img-responsive" alt="" />
					<h2>Register</h2>
					<p>Sign up our Website and receive up to $100 coupon for first
						shopping</p>
					<div class="modal-img-text">
						<a href="#"><img src="${img}/index/login-logo.png" alt=""
							class="img-responsive" /></a>
					</div>
				</div>
				<div class="col-sm-7 modal-text">

					<div class="form-sec">
						<springform:form action="${contextPath}/register" method="POST"
							modelAttribute="user" name="regform">
							<div class="tab-content">

								<div class="input-row">
									<h5>username</h5>
									<springform:input class="input-1" path="username"
										placeholder="Enter username" />
									<span class="error_msg"> <springform:errors path="username" />
									<span class="error_msg">${error_messages.username_error}</span>
									</span><span class="underline"></span>
									
								</div>
								<div class="input-row">
									<h5>email</h5>
									<springform:input class="input-1" type="email" path="email"
										placeholder="Enter your Email ID" />
										<span class="error_msg"><springform:errors path="email"/></span>
										<span class="error_msg">${error_messages.email_error}</span>
									<span class="underline"></span>
								</div>
								<div class="input-row">
									<h5>mobile</h5>
									<springform:input class="input-1" type="tel" path="mobile"
										placeholder="Enter your Mobile Number" />
										<span class="error_msg"><springform:errors path="mobile"/></span>
										<span class="error_msg">${error_messages.mobile_error}</span>
									<span class="underline"></span>
								</div>
								<div class="input-row">
									<h5>password</h5>
									<springform:password class="input-1" path="password"
										placeholder="Enter your password" />
										<span class="error_msg"><springform:errors path="password"/></span>
										<span class="error_msg">${error_messages.password_error}</span>
									<span class="underline"></span>
								</div>
								<div class="input-row">
									<h5>Re-enter your password</h5>
									<springform:password class="input-1" path="confirmPassword"
										placeholder="Re-Enter your Password" />
										<span class="error_msg">${error_messages.cpassword_error}</span>
									<span class="underline"></span>
								</div>
								<springform:input path="role" type="hidden" value="ROLE_USER"/>
								<springform:input path="isActive" type="hidden" value="true"/>
								<div class="clearfix"></div>

								<div class="clearfix"></div>
								<div class="button">
									<a href="#" onclick="submit()">Get started</a>
								</div>
								<div class="modal-acc">
									<p>
										Already have an account? <a data-toggle="modal" id="reg-m"
											data-target="#myModal2" href="#">Log In</a>
									</p>
								</div>

							</div>
						</springform:form>
					</div>

				</div>

				<div class="clearfix"></div>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	function submit() {
		var regForm = document.forms['regform'];
		regForm.submit();
	}
</script>