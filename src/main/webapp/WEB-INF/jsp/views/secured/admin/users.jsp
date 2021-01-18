<%@ include file="../../../commontags.jsp"%>
<spring:url var="postUrl" value="/secured/admin/user" />

<div class="container">
	<form:form id="billForm" modelAttribute="billForm" action="${postUrl}">
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
				<p>Hello!</p>
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
</div>

<script type="text/javascript">

</script>