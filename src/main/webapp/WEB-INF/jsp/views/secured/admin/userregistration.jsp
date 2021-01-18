<%@ include file="../../../commontags.jsp"%>
<spring:url var="postUrl" value="/secured/admin/user/new" />

<div class="container">

	<form:form id="registrationForm" modelAttribute="registrationForm" action="${postUrl}" class="form">
		<div class="row">
			<div class="card card-custom col-md-12" data-card="true" data-card-tool="toggle">
			
				<div class="card-header">
					<div class="card-title">
						<span class="card-icon"> <i
							class="flaticon2-chat-1 text-primary"></i>
						</span>
						<h3 class="card-label">
							<spring:message code="title.usermanagement" />
						</h3>
					</div>
					<div class="card-toolbar">
						<a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1"
							data-card-tool="toggle"> <i class="ki ki-arrow-down icon-xs"></i>
						</a>
					</div>
				</div>
	
				<div class="card-body">
					<div class="form-group mb-5">
						<input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Fullname" name="fullname" />
					</div>
					<div class="form-group mb-5">
						<input class="form-control h-auto form-control-solid py-4 px-8" type="text" placeholder="Email" name="email" autocomplete="off" />
					</div>
					<div class="form-group mb-5">
						<input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Password" name="password" />
					</div>
					<div class="form-group mb-5">
						<input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Confirm Password" name="rpassword" />
					</div>
				</div>
	
				<div class="card-footer">
					<div class="form-group d-flex flex-wrap flex-center mt-10">
						<button id="kt_login_signup_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-2"><spring:message code="button.search"/></button>
						<button id="kt_login_signup_cancel" class="btn btn-light-primary font-weight-bold px-9 py-4 my-3 mx-2"><spring:message code="button.cancel"/></button>
					</div>
				</div>
				
			</div>
		</div>
	</form:form>
</div>

<script type="text/javascript">
	
</script>