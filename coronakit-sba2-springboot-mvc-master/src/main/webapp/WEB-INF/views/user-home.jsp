<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
</head>
<body>

<a href="${pageContext.request.contextPath}/user/show-kit">KIT DETAILS</a>

<a href="${pageContext.request.contextPath}/user/show-list">PRODUCT LIST</a>

</body>
</html>