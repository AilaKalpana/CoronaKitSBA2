<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Kit Details Form</title>
<script type="text/javascript">
function submitForm() {
	var address = document.getElementById('address').value;
	var totalAmt = document.getElementById('totAmt').value;
	var context = document.getElementById('context').value;
	var url =  context+'/user/checkout?address='+address+'&amount='+totalAmt;
	alert('alert ' + url);
	document.checkform.action=url;
	document.getElementById('checkform').submit();
}
</script>
</head>
<div align="left">
	<h3>Online Shop - View Cart</h3>
</div>
<body>
	<jsp:include page="${pageContext.request.contextPath }/header" />

	<c:if test="${msg != null}">
						<p><strong>${msg }</strong>
	</c:if>
					
	<!-- <h3>${isNew?"New Item":"Delete Item" }</h3>  -->
	<form:form
		name="checkform"
		action='javascript:submitForm();'
		method="POST">
		<table border="1">
			<tr>
				<th>Id</th>
				<th>Product Name</th>
				<th>Quantity</th>
				<th>Product Amount</th>

			</tr>
			<c:forEach var="kitDetail" items="${kitDetails}">
				<c:set var="totalAmount" value='${totalAmount +kitDetail.amount}'></c:set>

				<tr>
					<td><input type="text" id="pid" value=${kitDetail.id }>
					</td>
					<td><input type="text" value=${kitDetail.productId }>
					</td>
					<td><input type="text" value=${kitDetail.quantity }></td>
					<td><input type="text" value='${kitDetail.amount}'></td>
					
					<td>
					<a href="delete/${kitDetail.productId }">DELETE</a> <span>|</span>
					
					</td>
				</tr>

			</c:forEach>
		</table>

		<table>
			<tr>
				<td>Address:</td>
				<td><input type="text" id="address" value=""></td>
				<td><input type="text" id="totAmt" value='${totalAmount}'></td>
				<td><input type="hidden" id="context" value='${pageContext.request.contextPath}'></td>
			</tr>
		</table>

		<button >Check Out</button>
	</form:form>
</body>
</html>