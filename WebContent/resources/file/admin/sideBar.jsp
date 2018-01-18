	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main sidebar -->
			<div class="sidebar sidebar-main">
				<div class="sidebar-content">

					<!-- User menu -->
					<div class="sidebar-user">
						<div class="category-content">
							<div class="media">
								<a href="#" class="media-left"><img src="${pageContext.request.contextPath}/resources/assets/images/image.png" class="img-circle img-sm" alt=""></a>
								<div class="media-body">
									<span class="media-heading text-semibold">Victoria Baker</span>
									<div class="text-size-mini text-muted">
										<i class="icon-pin text-size-small"></i> &nbsp;Santa Ana, CA
									</div>
								</div>

								<div class="media-right media-middle">
									<ul class="icons-list">
										<li>
											<a href="#"><i class="icon-cog3"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- /user menu -->


					<!-- Main navigation -->
					<div class="sidebar-category sidebar-category-visible">
						<div class="category-content no-padding">
							<ul class="navigation navigation-main navigation-accordion">

								<!-- Main -->
								<li class="navigation-header"><span>Main</span> <i class="icon-menu" title="Main pages"></i></li>
								<li><a href="#/dashboard"><i class="icon-home4"></i> <span>Dashboard</span></a></li>
								<li><a href="#/orders"><i class="icon-table2"></i> <span>Orders</span></a></li>
								<li><a href="#"><i class="icon-coins"></i> <span>Account</span></a></li>
								<li><a href="#"><i class="icon-clipboard4"></i> <span>Advertisements</span></a></li>
								<li><a href="#"><i class="icon-users4"></i> <span>Referral</span></a></li>
								<li><a href="#"><i class="icon-comment-discussion"></i><span class="badge badge-warning pull-right">58</span>  <span>Messages</span></a></li>
								<hr/>
								<li><a href="#"><i class="icon-cogs"></i> <span>Settings</span></a></li>
								
								<!-- /main -->
							</ul>
						</div>
					</div>
					<!-- /main navigation -->

				</div>
			</div>
			<!-- /main sidebar -->


			<!-- Main content -->
			<div class="content-wrapper">

				<div ng-view></div>

			</div>
			<!-- /main content -->


			<!-- Opposite sidebar -->
			<div class="sidebar sidebar-opposite sidebar-default">
				<div class="sidebar-content">

					<!-- Sidebar search -->
					<div class="sidebar-category">
						<div class="category-title">
							<span>Search</span>
							<ul class="icons-list">
								<li><a href="#" data-action="collapse"></a></li>
							</ul>
						</div>

						<div class="category-content">
							<form action="#">
								<div class="has-feedback has-feedback-left">
									<input type="search" class="form-control" placeholder="Search">
									<div class="form-control-feedback">
										<i class="icon-search4 text-size-base text-muted"></i>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /sidebar search -->


					<!-- Sub navigation -->
					<div class="sidebar-category">
						<div class="category-title">
							<span>Navigation</span>
							<ul class="icons-list">
								<li><a href="#" data-action="collapse"></a></li>
							</ul>
						</div>

						<div class="category-content no-padding">
							<ul class="navigation navigation-alt navigation-accordion">
								<li class="navigation-header">Category title</li>
								<li><a href="#"><i class="icon-googleplus5"></i> Link</a></li>
								<li><a href="#"><i class="icon-googleplus5"></i> Another link</a></li>
								<li><a href="#"><i class="icon-portfolio"></i> Link with label <span class="label bg-success-400">Online</span></a></li>
								<li class="navigation-divider"></li>
								<li>
									<a href="#"><i class="icon-cog3"></i> Menu levels</a>
									<ul>
										<li><a href="#"><i class="icon-IE"></i> Second level</a></li>
										<li>
											<a href="#"><i class="icon-firefox"></i> Second level with child</a>
											<ul>
												<li><a href="#"><i class="icon-android"></i> Third level</a></li>
												<li>
													<a href="#"><i class="icon-apple2"></i> Third level with child</a>
													<ul>
														<li><a href="#"><i class="icon-html5"></i> Fourth level</a></li>
														<li><a href="#"><i class="icon-css3"></i> Fourth level</a></li>
													</ul>
												</li>
												<li><a href="#"><i class="icon-windows"></i> Third level</a></li>
											</ul>
										</li>
										<li><a href="#"><i class="icon-chrome"></i> Second level</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<!-- /sub navigation -->


					<!-- Form sample -->
					<div class="sidebar-category">
						<div class="category-title">
							<span>Form example</span>
							<ul class="icons-list">
								<li><a href="#" data-action="collapse"></a></li>
							</ul>
						</div>

						<form action="#" class="category-content">
							<div class="form-group">
								<label>Your name:</label>
								<input type="text" class="form-control" placeholder="Username">
							</div>

							<div class="form-group">
								<label>Your password:</label>
								<input type="password" class="form-control" placeholder="Password">
							</div>

							<div class="form-group">
								<label>Your message:</label>
								<textarea rows="3" cols="3" class="form-control" placeholder="Default textarea"></textarea>
 							</div>

							<div class="row">
								<div class="col-xs-6">
									<button type="reset" class="btn btn-danger btn-block">Reset</button>
								</div>
								<div class="col-xs-6">
									<button type="submit" class="btn btn-info btn-block">Submit</button>
								</div>
							</div>
						</form>
					</div>
					<!-- /form sample -->

				</div>
			</div>
			<!-- /opposite sidebar -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>
	    <!-- ============================================================== -->
    <!-- Angular Controls -->
    <!-- ============================================================== -->

    <script src="${pageContext.request.contextPath}/resources/assets/js/angular-1.4.8/angular.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/assets/js/angular-1.4.8/angular-resource.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/assets/js/angular-1.4.8/angular-route.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/assets/js/angular/app.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/assets/js/angular/controller.js"></script> 
</html>