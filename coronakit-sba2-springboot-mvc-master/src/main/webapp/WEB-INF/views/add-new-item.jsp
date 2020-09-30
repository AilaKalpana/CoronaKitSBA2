<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Item</title>
</head>
<script type="text/javascript">
function submitForm() {
	var cost = document.getElementById('cost').value;
	var productDescription = document.getElementById('productDescription').value;
	var productName = document.getElementById('productName').value;
	var context = document.getElementById('context').value;
	var url =  context+'/admin/product-save?cost='+cost+'&productDescription='+productDescription+'&productName='+productName;
	alert('alert ' + url);
	document.checkform.action=url;
	document.checkform.submit();
}
</script>
<div align="left">	
	<h3>Add New Item</h3>
</div>
<body>
	<jsp:include page="${pageContext.request.contextPath }/header" />

	<form:form name="checkform"
		action='javascript:submitForm();'
		method="POST">	
		<table border="1">
			<tr>
				
				<th>Cost</th>
				<th>Product Description</th>
				<th>Product Name</th>
			</tr>
		
					
					<td><input type="text" id="cost" value=""></td>
					<td><input type="text" id="productDescription" value=""></td>
					<td><input type="text" id="productName" value=""></td>
					<td><input type="hidden" id="context" value='${pageContext.request.contextPath}'></td>
		</table>
		
		<button>Save</button>
	</form:form>
	
	</body>
</html>