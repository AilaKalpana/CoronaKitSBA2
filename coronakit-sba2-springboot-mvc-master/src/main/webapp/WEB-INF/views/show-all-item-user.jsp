<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Item Form</title>
</head>
<div align="left">
	<h3>Online Shop</h3>
</div>
<body>

	<jsp:include page="${pageContext.request.contextPath }/header" />

	<!-- <h3>${isNew?"New Item":"Delete Item" }</h3>  -->

	<c:forEach var="productMaster" items="${productMasters}">
		<table border="1">
			<tr>
				<th>Id</th>
				<th>Product Name</th>
				<th>Cost</th>
				<th>Product Description</th>
				<th>Select Item</th>
			</tr>
			<form:form
				action='${pageContext.request.contextPath}/user/add-to-cart/${productMaster.id }'
				method="POST">
				<tr>
					<td><input type="text" id="pid" value=${productMaster.id }>
					</td>
					<td><input type="text" value=${productMaster.productName }>
					</td>
					<td><input type="text" value=${productMaster.cost }>
					</td>
					<td><input type="text"
						value=${productMaster.productDescription }></td>
					<td><input type="submit" value="Add to Kit"></td>
				</tr>


			</form:form>
		</table>
	</c:forEach>
	<form:form
		action='${pageContext.request.contextPath}/user/show-kit'
		method="POST">
		<button>View Kit</button>
	</form:form>

</body>
</html>