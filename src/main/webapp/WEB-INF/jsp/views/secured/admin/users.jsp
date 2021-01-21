<%@ include file="../../../commontags.jsp"%>
<spring:url var="postUrl" value="/secured/admin/users" />

<div class="container">
	<form:form id="userSearchForm" modelAttribute="userSearchForm" action="${postUrl}">
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
			</div>

			<div class="card-body">
			
				<div class="form-group row">
					<label class="col-md-2 col-form-label" for="fullName"> 
						<spring:message code="usermanagement.fullName" />
					</label>
					<div class="col-md-10">
						<form:input path="fullName" id="fullName" class="form-control" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-md-2 col-form-label" for="idType"> 
						<spring:message code="usermanagement.idType" />
					</label>
					<div class="col-md-2">
						<form:input path="idType" id="idType" class="form-control" />
					</div>
					<label class="col-md-3 col-form-label" for="idNo"> 
						<spring:message code="usermanagement.idNo" />
					</label>
					<div class="col-md-5">
						<form:input path="idNo" id="idNo" class="form-control" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-md-2 col-form-label" for="userType"> 
						<spring:message code="usermanagement.userType" />
					</label>
					<div class="col-md-2">
						<form:input path="idType" id="userType" class="form-control" />
					</div>
					<label class="col-md-3 col-form-label" for="email"> 
						<spring:message code="usermanagement.email" />
					</label>
					<div class="col-md-5">
						<form:input path="idNo" id="email" class="form-control" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-md-2 col-form-label" for="userType"> 
						<spring:message code="usermanagement.userType" />
					</label>
					<div class="col-md-2">
						<form:input path="idType" id="userType" class="form-control" />
					</div>
					<label class="col-md-3 col-form-label" for="email"> 
						<spring:message code="usermanagement.email" />
					</label>
					<div class="col-md-5">
						<form:input path="idNo" id="email" class="form-control" />
					</div>
				</div>
				
			</div>

			<div class="card-footer">
				<div class="d-flex flex-wrap flex-left">
					<button id="kt_login_signup_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-2"><spring:message code="button.search"/></button>
					<button id="kt_login_signup_submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-2"><spring:message code="button.new"/></button>
					<button id="kt_login_signup_cancel" class="btn btn-light-primary font-weight-bold px-9 py-4 my-3 mx-2"><spring:message code="button.back"/></button>
				</div>
			</div>
		</div>
	</div>
	</form:form>
	
	<form:form id="usersResultForm" modelAttribute="usersResultForm" action="${postUrl}">
		<div class="row">
			<div class="card card-custom col-md-12" data-card="true" data-card-tool="toggle">
			
			</div>
		</div>
	</form:form>
</div>

<script type="text/javascript">

</script>