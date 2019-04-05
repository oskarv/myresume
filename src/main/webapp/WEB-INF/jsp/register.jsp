<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css/register.css"/>

<title>Register Account</title>
</head>
<body>

	<div id="progress"></div>

	<div class="center">
		<table>
			<tr>
				<td>
					<div id="register"> 
					    <i id="previousButton" class="ion-android-arrow-back"></i>
					    <i id="forwardButton" class="ion-android-arrow-forward"></i>
		
					    <div id="inputContainer">
					      <input id="inputField" required multiple />
					      <label id="inputLabel"></label>
					      <div id="inputProgress"></div>
					    </div>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<a href='<c:url value="/home.html" />'>
				  	  	<spring:message code="signUp.success.text"/>
				  	</a>
				</td>
			</tr>
		</table>
	</div>

	<!-- Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/myresume/register.js"></script>
</body>
</html>