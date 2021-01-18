<%@ include file="../../commontags.jsp"%>
<spring:url var="postUrl" value="/secured/setup/category" />

<div class="container">

	<form:form id="categoryForm" modelAttribute="categoryForm" action="${postUrl}">

		<form:errors element="div" cssClass="errorblock" path="*" />

		<div class="row">
			<div class="card card-custom col-md-12" data-card="true" data-card-tool="toggle">
				<div class="card-header">
					<div class="card-title">
						<span class="card-icon">
							<i class="flaticon2-chat-1 text-primary"></i>
						</span>
						<h3 class="card-label"><spring:message code="title.category" /></h3>
					</div>
					<div class="card-toolbar">
						<a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
							<i class="ki ki-arrow-down icon-xs"></i>
						</a>
					</div>
				</div>

				<div class="card-body">
					<div class="form-group row">
						<label class="col-md-2 col-form-label mandatory" for="categoryCode"> 
							<spring:message code="label.code" />
						</label>
						<div class="col-md-2">
							<form:input path="category.code" id="categoryCode" class="form-control" />
						</div>
						<label class="col-md-2 col-form-label mandatory" for="categoryName"> 
							<spring:message code="label.name" />
						</label>
						<div class="col-md-5">
							<form:input path="category.name" id="categoryName" class="form-control" />
						</div>
					</div>
				</div>

				<div class="card-footer">
					<form:button name="action" value="search" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.search" /></form:button>
					<button type="button" class="btn btn-primary ripple-surface mb-0" data-toggle="modal" data-target="#newCategoryModal"><spring:message code="button.new" /></button>
					<form:button name="action" value="back" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.back" /></form:button>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="newCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="exampleModalLabel"><spring:message code="label.create" arguments="Category"/></h5>
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                    <i aria-hidden="true" class="ki ki-close"></i>
		                </button>
		            </div>
		            <div class="modal-body">
		                ...
		            </div>
		            <div class="modal-footer">
		            	<form:button name="action" value="back" class="btn btn-primary font-weight-bold"><spring:message code="button.save" /></form:button>
		                <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal"><spring:message code="button.cancel" /></button>
					</div>
		        </div>
			</div>
      </div>

	</form:form>
</div>

<script type="text/javascript">

	$(document).ready(function() {
		$('#categoryForm').on('keyup keypress', function(e) {
			var keyCode = e.keyCode || e.which;
			if (keyCode === 13) {
				e.preventDefault();
				return false;
			}
		});
	});
	
</script>