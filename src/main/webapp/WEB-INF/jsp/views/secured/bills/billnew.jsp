<%@ include file="../../../commontags.jsp"%>
<spring:url var="postUrl" value="/secured/bill/new" />

<div class="container">

	<form:form id="billForm" modelAttribute="billForm" action="${postUrl}">

		<form:errors element="div" cssClass="alert alert-custom alert-danger fade show mb-5" path="">
			<div class="alert-icon"><i class="flaticon-warning"></i> </div>
		</form:errors>

		<div class="row">
			<div class="card card-custom gutter-b col-md-12" data-card="true" data-card-tool="toggle">
				<div class="card-header">
					<div class="card-title">
						<span class="card-icon">
							<i class="flaticon2-chat-1 text-primary"></i>
						</span>
						<h3 class="card-label"><spring:message code="title.bill" /></h3>
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
							<spring:message code="bill.category" />
						</label>
						<spring:bind path="bill.billCategory">
							<div class="col-md-2">
								<form:select path="bill.billCategory" id="categoryCode" class="form-control ${status.error ? 'is-invalid' : ''}">
									<form:option value=""><spring:message code="label.select"/></form:option>
		      						<form:options items="${billForm.categories}" itemValue="code" itemLabel="name"/>
								</form:select>										
								<div class="fv-plugins-message-container">
									<div data-field="receiver" data-validator="receiver" class="fv-help-block">
	        							<form:errors path="bill.billCategory" class="fv-help-block"/>
									</div>
								</div>
							</div>
						</spring:bind>
					</div>
													
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label mandatory" for="receiver"> 
							<spring:message code="bill.receiver" />
						</label>
						<spring:bind path="bill.receiver">
							<div class="col-md-8">
								<form:input path="bill.receiver" id="receiver" class="form-control  ${status.error ? 'is-invalid' : ''}" />												
								<div class="fv-plugins-message-container">
									<div data-field="receiver" data-validator="receiver" class="fv-help-block">
	        							<form:errors path="bill.receiver" class="fv-help-block"/>
									</div>
								</div>
							</div>
						</spring:bind>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label mandatory" for="amount"> 
							<spring:message code="bill.amount" />
						</label>
						<spring:bind path="bill.amount">
							<div class="col-md-3">
								<form:input path="bill.amount" id="amount" name="amount" class="form-control  ${status.error ? 'is-invalid' : ''}" />												
								<div class="fv-plugins-message-container">
									<div data-field="amount" data-validator="amount" class="fv-help-block">
	        							<form:errors path="bill.amount" class="fv-help-block"/>
									</div>
								</div>
							</div>
						</spring:bind>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label mandatory" for="receiveDate"> 
							<spring:message code="bill.receivedDate" />
						</label>
						<spring:bind path="bill.billReceivedDate">
							<div class="col-md-3">
								<div class="input-group date">
									<form:input path="bill.billReceivedDate" id="billReceivedDate" class="form-control ${status.error ? 'is-invalid' : ''}" autocomplete="off"/>
									<div class="input-group-append">
										<span class="input-group-text">
											<i class="flaticon2-calendar-1"></i>
										</span>
									</div>
								</div>
								<div class="fv-plugins-message-container">
									<div data-field="billReceivedDate" data-validator="billReceivedDate" class="fv-help-block">
	        							<form:errors path="bill.billReceivedDate" class="fv-help-block"/>
									</div>
								</div>
							</div>
						</spring:bind>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label mandatory" for="reference"> 
							<spring:message code="bill.reference" />
						</label>
						<spring:bind path="bill.reference">
							<div class="col-md-8">
								<form:input path="bill.reference" id="reference" class="form-control  ${status.error ? 'is-invalid' : ''}" />												
								<div class="fv-plugins-message-container">
									<div data-field="reference" data-validator="reference" class="fv-help-block">
	        							<form:errors path="bill.reference" class="fv-help-block"/>
									</div>
								</div>
							</div>
						</spring:bind>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label mandatory" for="billDate"> 
							<spring:message code="bill.billDate" />
						</label>
						<spring:bind path="bill.billDate">
							<div class="col-md-3">
								<div class="input-group date">
									<form:input path="bill.billDate" id="billDate" class="form-control ${status.error ? 'is-invalid' : ''}" autocomplete="off"/>
									<div class="input-group-append">
										<span class="input-group-text">
											<i class="flaticon2-calendar-1"></i>
										</span>
									</div>
								</div>
								<div class="fv-plugins-message-container">
									<div data-field="reference" data-validator="reference" class="fv-help-block">
	        							<form:errors path="bill.billDate" class="fv-help-block"/>
									</div>
								</div>
							</div>
						</spring:bind>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label mandatory" for="votCode"> 
							<spring:message code="bill.votCode" />
						</label>
						<div class="col-lg-4 col-md-9 col-sm-12">
							<select class="form-control select2" id="votCode" name="bill.votCode">
								<option label="Label"></option>
							</select>
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label" for="contractNo"> 
							<spring:message code="bill.contractNo" />
						</label>
						<spring:bind path="bill.contractNo">
							<div class="col-md-8">
								<form:input path="bill.contractNo" id="contractNo" class="form-control  ${status.error ? 'is-invalid' : ''}" />												
								<div class="fv-plugins-message-container">
									<div data-field="reference" data-validator="reference" class="fv-help-block">
	        							<form:errors path="bill.contractNo" class="fv-help-block"/>
									</div>
								</div>
							</div>
						</spring:bind>
					</div>
					
					<div class="form-group row">
						<label class="col-md-2 col-form-label" for="remarks"> 
							<spring:message code="bill.remarks" />
						</label>
						<div class="col-md-8">
							<form:textarea path="bill.remarks" id="remarks" class="form-control  ${status.error ? 'is-invalid' : ''}"  />
						</div>
					</div>
				</div>

				<div class="card-footer">
					<form:button id="clearBtn" name="action" value="clear" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.clear" /></form:button>
					<form:button id="saveBtn" name="action" value="save" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.save" /></form:button>
					<form:button id="backBtn" name="action" value="back" class="btn btn-primary ripple-surface mb-0"><spring:message code="button.back" /></form:button>
				</div>
			</div>
		</div>

	</form:form>
</div>
<!--end::Container-->

<script type="text/javascript">

	$(document).ready(function() {
		var arrows;
	    if (KTUtil.isRTL()) {
	        arrows = {
	            leftArrow: '<i class="la la-angle-right"></i>',
	            rightArrow: '<i class="la la-angle-left"></i>'
	        }
	    } else {
	        arrows = {
	            leftArrow: '<i class="la la-angle-left"></i>',
	            rightArrow: '<i class="la la-angle-right"></i>'
	        }
	    }
	    
		$('#billForm').on('keyup keypress', function(e) {
			var keyCode = e.keyCode || e.which;
			if (keyCode === 13) {
				e.preventDefault();
				return false;
			}
		});
		
		$("#amount").inputmask({
			groupSeparator: ".",
            alias: "numeric",
            placeholder: "0",
            autoGroup: !0,
            digits: 2,
            digitsOptional: false,
            clearMaskOnLostFocus: true,
        });
		
		$(".date").datepicker({
            rtl: KTUtil.isRTL(),
            format: 'dd/mm/yyyy',
            weekStart: 1,
            orientation: "bottom left",
            todayHighlight: true,
            todayBtn: "linked",
            templates: arrows
        });
	
        $("#votCode").select2({
            placeholder: "Search for VOT",
            allowClear: true,
            ajax: {
            	type: "GET",
	            dataType: 'json',
	            url: "https://s3p.sabah.gov.my/api_eresit/vot",
	            timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
				},
				done : function(e) {
					console.log("DONE");
				}
            }
        });
	});
	
</script>