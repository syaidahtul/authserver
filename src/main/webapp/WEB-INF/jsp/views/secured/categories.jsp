<%@ include file="../../commontags.jsp"%>
<spring:url var="postUrl" value="/secured/setup/category" />

<div class="container">

	<form:form id="categoryForm" modelAttribute="categoryForm" action="${postUrl}">

		<form:errors element="div" cssClass="errorblock" path="*" />

		<div class="row">
			<div class="card card-custom gutter-b col-md-12" data-card="true" data-card-tool="toggle">
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
							<form:input path="searchCategory.code" id="categoryCode" class="form-control" />
						</div>
						<label class="col-md-2 col-form-label mandatory" for="categoryName"> 
							<spring:message code="label.name" />
						</label>
						<div class="col-md-5">
							<form:input path="searchCategory.name" id="categoryName" class="form-control" />
						</div>
					</div>
				</div>

				<div class="card-footer">
					<form:button id="searchCategoryBtn" name="action" value="search" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.search" /></form:button>
					<button type="button" class="btn btn-primary ripple-surface mb-0" data-toggle="modal" data-target="#newCategoryModal"><spring:message code="button.new" /></button>
					<form:button id="backCategoryBtn" name="action" value="back" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.back" /></form:button>
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
						<div class="form-group row">
							<label class="col-md-3 col-form-label mandatory" for="newCategoryCode"> 
								<spring:message code="label.code" />
							</label>
							<div class="col-md-8">
								<form:input path="category.code" id="newCategoryCode" class="form-control" />
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-3 col-form-label mandatory" for="newCategoryName"> 
								<spring:message code="label.name" />
							</label>
							<div class="col-md-8">
								<form:input path="category.name" id="newCategoryName" class="form-control" />
							</div>
						</div>
		            </div>
		            <div class="modal-footer">
		            	<form:button id="saveCategoryBtn" name="action" value="save" class="btn btn-primary font-weight-bold"><spring:message code="button.save" /></form:button>
		                <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal"><spring:message code="button.cancel" /></button>
					</div>
		        </div>
			</div>
      </div>

	</form:form>
	

	<!--begin::Card-->
	<div class="row">
	<div class="card card-custom col-md-12" data-card="true" data-card-tool="toggle">
		<div class="card-header">
			<div class="card-title">
				<span class="card-icon">
					<i class="flaticon2-delivery-package text-primary"></i>
				</span>
				<h3 class="card-label"><spring:message code="label.list"/><spring:message code="title.category" /></h3>
			</div>
			<div class="card-toolbar">
				<a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
					<i class="ki ki-arrow-down icon-xs"></i>
				</a>
				<!--begin::Dropdown-->
				<div class="dropdown dropdown-inline mr-2">
					<button type="button" class="btn btn-light-primary font-weight-bolder dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="flaticon2-download text-dark"></i>
						<spring:message code="label.export"/>
					</button>
					<!--begin::Dropdown Menu-->
					<div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
						<!--begin::Navigation-->
						<ul class="navi flex-column navi-hover py-2">
							<li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">Choose an option:</li>
							<li class="navi-item">
								<a href="#" class="navi-link">
									<span class="navi-icon">
										<i class="la la-file-pdf-o"></i>
									</span>
									<span class="navi-text">PDF</span>
								</a>
							</li>
						</ul>
						<!--end::Navigation-->
					</div>
					<!--end::Dropdown Menu-->
				</div>
				<!--end::Dropdown-->
			</div>
		</div>
		
		<div class="card-body">			
			<!--begin: Datatable-->
			<table class="table table-bordered table-hover table-checkable" id="categories_datatable">
				<thead>
					<tr>
						<th><spring:message code="label.code"/></th>
						<th><spring:message code="label.name"/></th>
					</tr>
				</thead>
				<tfoot>
					<tr>
					</tr>
				</tfoot>	
			</table>
			<!--end: Datatable-->
		</div>
		
	</div>
	<!--end::Card-->
	</div>
</div>
<!--end::Container-->

<script type="text/javascript">

	$(document).ready(function() {
		$('#categoryForm').on('keyup keypress', function(e) {
			var keyCode = e.keyCode || e.which;
			if (keyCode === 13) {
				e.preventDefault();
				return false;
			}
		});
		
		$('#categories_datatable').dataTable({
	        'sAjaxSource': '/secured/setup/categories',
			"sAjaxDataProp": "",
			"order": [[ 0, "asc" ]],
	        'bJQueryUI': true,
	        'searching': false,
	        'aoColumns': [
	            { 'mData': 'code' },
	            { 'mData': 'name' }
	        ]
	    }); 
	});
	
</script>