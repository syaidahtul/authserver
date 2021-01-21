<%@ include file="../../../commontags.jsp"%>
<spring:url var="postUrl" value="/secured/bill" />

<div class="container">

	<form:form id="userRegistrationForm" modelAttribute="billForm" action="${postUrl}">

		<form:errors element="div" cssClass="errorblock" path="*" />

		<div class="row">
			<div class="card card-custom gutter-b col-md-12" data-card="true" data-card-tool="toggle">
				<div class="card-header">
					<div class="card-title">
						<span class="card-icon">
							<i class="flaticon2-chat-1 text-primary"></i>
						</span>
						<h3 class="card-label"><spring:message code="title.usermanagement" /></h3>
					</div>
					<div class="card-toolbar">
						<a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
							<i class="ki ki-arrow-down icon-xs"></i>
						</a>
					</div>
				</div>

				<div class="card-body">
				
					<div class="form-group row">
						<label class="col-md-2 col-form-label" for="categoryCode"> 
							<spring:message code="bill.category" />
						</label>
						<div class="col-md-5">
							<form:select path="bill.billCategory" id="categoryCode" class="form-control">
								<form:option value=""><spring:message code="label.select"/></form:option>
	      						<form:options items="${billForm.categories}" itemValue="code" itemLabel="name"/>
							</form:select>
						</div>
						<label class="col-md-2 col-form-label" for="billStatus"> 
							<spring:message code="bill.status" />
						</label>
						<div class="col-md-3">
							<form:select path="bill.billStatus" id="billStatus" class="form-control">
								<form:option value=""><spring:message code="label.select"/></form:option>
	      						<form:options items="${billForm.billStatus}" itemValue="code" itemLabel="name"/>
							</form:select>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label" for="receiver"> 
							<spring:message code="bill.receiver" />
						</label>
						<div class="col-md-10">
							<form:input path="bill.receiver" id="receiver" class="form-control" />
						</div>
					</div>
				</div>
				
				<div class="card-footer">
					<form:button id="searchBtn" name="action" value="search" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.search" /></form:button>
					<form:button id="newBtn" name="action" value="new" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.new" /></form:button>
					<form:button id="backBtn" name="action" value="back" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.back" /></form:button>
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
				<h3 class="card-label"><spring:message code="label.list"/> <spring:message code="title.bill"/></h3>
			</div>
			<div class="card-toolbar">
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
							<li class="navi-item">
								<a href="#" class="navi-link">
									<span class="navi-icon">
										<i class="la la-print"></i>
									</span>
									<span class="navi-text">Print</span>
								</a>
							</li>
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
				<a href="#" class="btn btn-icon btn-sm btn-light-primary mr-1" data-card-tool="toggle">
					<i class="ki ki-bold-double-arrow-down icon-xs"></i>
				</a>
			</div>
		</div>
		
		<div class="card-body">			
			<!--begin: Datatable-->
			<table class="table table-bordered table-hover table-checkable" id="bill_datatable">
				<thead>
					<tr>
						<th><spring:message code="bill.receiver"/></th>
						<th><spring:message code="bill.amount"/></th>
						<th><spring:message code="bill.reference"/></th>
						<th><spring:message code="bill.billDate"/></th>
						<th><spring:message code="bill.votCode"/></th>
						<th><spring:message code="bill.category"/></th>
						<th><spring:message code="bill.status"/></th> <!-- change to icon: tooltip category -->
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
	$('#billForm').on('keyup keypress', function(e) {
		var keyCode = e.keyCode || e.which;
		if (keyCode === 13) {
			e.preventDefault();
			return false;
		}
	});
	
	$('#bill_datatable').dataTable({
        'sAjaxSource': '/secured/bill/list',
        "processing": true,
        "serverSide": true,
		"sAjaxDataProp": "",
		"order": [[ 0, "asc" ]],
        'bJQueryUI': true,
        'searching': false,
        'aoColumns': [
            { 'mData': 'receiver' },
            { 'mData': 'amount' },
            { 'mData': 'reference' },
            { 'mData': 'billDate' },
            { 'mData': 'votCode' },
            { 'mData': 'category' },
            { 'mData': 'status' }
        ]
    });
});
	
</script>