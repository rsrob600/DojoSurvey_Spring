<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dojo Survey Index</title>
	<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>

	<div class='container'>
		<div class="formBorder">
		<h3>Submitted Info</h3>

			<ul class="form">
				    <li>
				        <div><label>Name:</label></div>
				        <div><c:out value="${name}"/></div>
				    </li>
				    <li>
				        <div><label>Dojo Location:</label></div>
				        <div><c:out value="${dojo}"/></div>
				    </li>
				    <li>
				        <div><label>Favorite Language:</label></div>
				        <div><c:out value="${language}"/></div>
				    </li>
				    <li>
				        <div><label>Comment:</label></div>
				        <div><c:out value="${comment}"/></div>
				    </li>
				</ul>
				<button class="button" type="button" onclick="location.href='/'">Go Back</button>
		</div>
	</div>

</body>
</html>