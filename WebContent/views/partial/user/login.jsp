	<!-- Simple login form -->
	<div class="panel panel-body login-form">
		<div class="text-center">
			<div class="icon-object border-slate-300 text-slate-300"><i class="icon-reading"></i></div>
			<h5 class="content-group">Login to your account <small class="display-block">Enter your credentials below</small></h5>
		</div>

		<div class="form-group has-feedback has-feedback-left">
			<input type="text" class="form-control"  placeholder="Username" id="login_username">
			<div class="form-control-feedback">
				<i class="icon-user text-muted"></i>
			</div>
		</div>

		<div class="form-group has-feedback has-feedback-left">
			<input type="password" class="form-control" placeholder="Password" id="login_password">
			<div class="form-control-feedback">
				<i class="icon-lock2 text-muted"></i>
			</div>
		</div>

		<div class="form-group">
			<button type="submit" id="submitButton" class="btn btn-primary btn-block">Sign in <i class="icon-circle-right2 position-right"></i></button>
		</div>

		<div class="text-center">
			<a href="#">Forgot password?</a>
		</div>
		<div class="text-center">
			<a id="new-account"><b>Don't have an account? Get one now</b></a>
		</div>
	</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/functions/auth/login.js"> </script>