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
			<form method="POST" action="/">
				<ul class="form">
				    <li>
				        <div><label>Name:</label></div>
				        <div><input type="text" name="name" /></div>
				    </li>
				    <li>
				        <div><label>Dojo Location:</label></div>
				        <div><select name="dojo" style="width:172px; overflow:hidden">
				        		<option value="San Jose">San Jose</option>
				        		<option value="Los Angeles">Los Angeles</option>
				        		<option value="Dallas">Dallas</option>
				        		<option value="Seattle">Seattle</option>
				        	</select>	
				        </div>
				    </li>
				    <li>
				        <div><label>Favorite Language:</label></div>
				        <div><select name="language" style="width:172px; overflow:hidden">
				        		<option value="Java">Java</option>
				        		<option value="Python">Python</option>
				        		<option value="Javascript">Javascript</option>
				        		<option value="C++">C++</option>
				        	</select>	
				        </div>
				    </li>
				</ul>
				<div><label>Comment(optional):</label></div>
				<textarea name="comment" rows="5" cols="41"></textarea><br>
				<input class="button" type="submit" value="Submit">
			</form>
		</div>
	</div>

</body>
</html>