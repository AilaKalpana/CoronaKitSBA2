<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>check out summary page</title>
</head>
<div align="left">
	<h3>Online Shop - Order Summary</h3>
</div>
<body>

	<table border="1">
			<tr>
				<th>Id</th>
				<th>Date</th>
				<th>Address</th>
				<th>Product Amount</th>
				
			</tr>
			<form:form
				action='${pageContext.request.contextPath}/user/checkout?amount="${totalAmount}+${kitDetail.amount} }'
				method="POST">
				<tr>
					<td><input type="text" id="pid" value=${coronaKit.id }>
					</td>
					<td><input type="text" value=${coronaKit.orderDate }>
					</td>
					<td><input type="text" value=${coronaKit.deliveryAddress }>
					</td>
					<td><input type="text"
						value='${coronaKit.totalAmount}'></td>
					
				</tr>


			</form:form>
		</table>
		
		<a href="${pageContext.request.contextPath}/user/show-list">SHOW ALL ITEMS</a>

</body>
</html>