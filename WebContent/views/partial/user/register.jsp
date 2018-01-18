<form id="">
	<div class="panel panel-body login-form">
		<div class="text-center">
			<div class="icon-object border-success text-success"><i class="icon-plus3"></i></div>
			<h5 class="content-group">Create account <small class="display-block">All fields are required</small></h5>
		</div>

		<div class="content-divider text-muted form-group"><span>Your credentials</span></div>

		<div class="form-group has-feedback has-feedback-left">
			<input type="text" class="form-control" placeholder="Eugene">
			<div class="form-control-feedback">
				<i class="icon-user-check text-muted"></i>
			</div>
			<!-- Error text
			<span class="help-block text-danger"><i class="icon-cancel-circle2 position-left"></i> This username is already taken</span>
			 -->
		</div>

		<div class="form-group has-feedback has-feedback-left">
			<input type="text" class="form-control" placeholder="Your email">
			<div class="form-control-feedback">
				<i class="icon-mention text-muted"></i>
			</div>
		</div>
		
		<div class="form-group has-feedback has-feedback-left">
			<input type="password" class="form-control" placeholder="Create password">
			<div class="form-control-feedback">
				<i class="icon-user-lock text-muted"></i>
			</div>
		</div>
		
		<div class="form-group has-feedback has-feedback-left">
			<input type="password" class="form-control" placeholder="Confirm password">
			<div class="form-control-feedback">
				<i class="icon-user-lock text-muted"></i>
			</div>
		</div>
		
		<div class="form-group">
			<div class="checkbox">
				<label>
					<input type="checkbox" class="styled">
					Accept <a href="#">terms of service</a>
				</label>
			</div>
		</div>

		<button type="submit" class="btn bg-teal btn-block btn-lg">Register <i class="icon-circle-right2 position-right"></i></button>
		<br>
		<div class="text-center">
			<a id="login-account"><b>Already have an account? Log in</b></a>
		</div>
	</div>
	
</form>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/functions/auth/login.js"> </script>