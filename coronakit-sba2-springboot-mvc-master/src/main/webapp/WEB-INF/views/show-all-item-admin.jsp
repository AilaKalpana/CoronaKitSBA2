<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admins Item Form</title>
</head>
<div align="left" > <h3> Online Shop </h3></div>
<body>

	<jsp:include page="${pageContext.request.contextPath }/header" />
	
	<a href="${pageContext.request.contextPath}/admin/product-entry">ADD NEW PRODUCT</a>
	
	<c:if test="${productMasters == null}">
						<p><strong> ${msg} </strong>
	</c:if>
	<c:if test="${productMasters != null}">
						<p><strong> ${msg} </strong>
	</c:if>
	<!-- <h3>${isNew?"New Item":"Delete Item" }</h3>  -->
	
	<form:form action="product-delete/${productMaster.id }" method="POST" >
		
		<table border="1">
		<tr>
		<th>Id</th>
     	<th>productName</th>
		<th>cost</th>
     	<th>productDescription</th>
     	</tr>
     	<c:if test="${productMasters != null}">
		<c:forEach  var="productMaster" items="${productMasters}">
				<tr>
					<td><input type="label" value=${productMaster.id }> </td>
					<td><input type="label" value=${productMaster.productName }> </td>
					<td><input type="label" value=${productMaster.cost }> </td>
					<td><input type="label" value=${productMaster.productDescription }> </td>
					<td>
					<a href="product-delete/${productMaster.id}">DELETE</a> <span>|</span>
					
					</td>
					
				</tr>
		</c:forEach>
		</c:if>
		</table>		
		
 <!-- <button>SAVE</button>		 --> 
	</form:form>
</body>
</html>