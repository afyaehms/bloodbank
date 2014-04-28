<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="includes/nav.jsp" %>


<script type="text/javascript">
jQuery(document).ready(function() {
	
});
SEARCH={
	search : function() {
		var fromDate = jQuery('#fromDate').val();
		var toDate = jQuery('#toDate').val();
		var description = jQuery('#description').val();
		ACT.go("receiveBlood.form?fromDate="+fromDate+"&toDate="+toDate+"&description="+description);
	
	}
}
</script>
<input type="button" class="ui-button ui-widget ui-state-default ui-corner-all" value="<spring:message code='bloodbank.issueBlood'/>" onclick="ACT.go('showPatientSearchForm.form');"/>
<br></br>
<!-- 
<div id="searchDiv">
<spring:message code="bloodbank.description"/><input type="text" id="description"/>
<spring:message code="bloodbank.receiveBlood.fromDate"/>	<input type="text" id="fromDate" name="fromDate" class="date-pick left" readonly="readonly"  ondblclick="this.value='';"/>
<spring:message code="bloodbank.receiveBlood.toDate"/>	<input type="text" id="toDate" name="toDate" class="date-pick left" readonly="readonly"  ondblclick="this.value='';"/>
<input type="button" class="ui-button ui-widget ui-state-default ui-corner-all" value="<spring:message code="bloodbank.receiveBlood.search"/>" onclick="SEARCH.search();">

</div><br></br>

<div style="margin-left: 10px; ">
<b class="boxHeader">Receipt Slip</b> 
<table class="box"  cellpadding="0" cellspacing="5" >
	<tr>
	<th>#</th>
	<th><spring:message code="bloodbank.description"/></th>
	<th><spring:message code="bloodbank.createdon"/></th>
	<th><spring:message code="bloodbank.createdby"/></th>
	<th></th>
	</tr>
	<c:choose>
	<c:when test="${not empty receipts}">
	<c:forEach items="${receipts}" var="receipt" varStatus="varStatus">
	<tr class='${varStatus.index % 2 == 0 ? "oddRow" : "evenRow" } '>
		<td><c:out value="${(( pagingUtil.currentPage - 1  ) * pagingUtil.pageSize ) + varStatus.count }"/></td>
		<td>${receipt.description} </td>	
		<td><openmrs:formatDate date="${receipt.createdOn}" type="textbox"/></td>
		<td>${receipt.createdBy}</td>
		<td><a href="showDetailBloodStock.form?receiptId=${receipt.receiptId}"><spring:message code="bloodbank.details"/></a>
		</td>
		</tr>
	</c:forEach>
	
	</c:when>
	</c:choose>
</table>
</div>
-->
<%@ include file="/WEB-INF/template/footer.jsp"%>