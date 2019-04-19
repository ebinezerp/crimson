<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<!--modal-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="col-sm-5 modal-img">
					<img src="${img}/index/modal2-bg.jpg" class="img-responsive" alt="" />
					<h2>Login</h2>
					<p>Sign up our Website and receive up to $100 coupon for first
						shopping</p>
					<div class="modal-img-text">
						<a href="#"><img src="${img}/index/login-logo.png" alt=""
							class="img-responsive" /></a>
					</div>
				</div>
				<div class="col-sm-7 modal-text">

					<div class="form-sec">
						<form action="${contextPath}/processlogin" method="POST" name="loginform">
							<div class="tab-content">

								<div class="input-row">
									<h5>email</h5>
									<input class="input-1" type="email" name="email"
										placeholder="Enter your Email ID" /> <span class="underline"></span>
								</div>
								<div class="input-row">
									<h5>password</h5>
									<input class="input-1" type="password" name="password"
										placeholder="Enter your password" /> <span class="underline"></span>
								</div>
								<div class="clearfix"></div>

								<div class="clearfix"></div>
								<div class="button">
									<a href="#" onclick="loginsubmit()">Get started</a>
								</div>
								<div class="modal-acc">
									<p>
										Already have an account? <a data-toggle="modal" id="log-m"
											data-target="#myModal" href="#">Sign In</a>
									</p>
								</div>
								<div class="swiss-right">
									<p>
										© 2018 <a href="#">Crimson Trading</a>. All Rights Reserved.
									</p>
								</div>
							</div>
						</form>
					</div>

				</div>

				<div class="clearfix"></div>

			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    function loginsubmit(){
    	var loginForm=document.forms['loginform'];
    	loginForm.submit();
    	
    }
</script>
