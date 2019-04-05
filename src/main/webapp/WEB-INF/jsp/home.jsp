<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css/hello.css"/>

<title>Home page</title>
</head>
<body>
	<div class="login">
		<h1> <spring:message code="myResume.text"/> </h1>
		<form:form method="post" modelAttribute="user">
			<form:input path="username" type="text" name="u" placeholder="Username" required="required" />

			<form:input path="password" type="password" name="p" placeholder="Password" required="required" />

			<button type="submit" class="btn btn-primary btn-block btn-large">
				<spring:message code="loginButton.text"/>
			</button>

			<br/><br/><br/><br/>
			<a class="btn btn-primary btn-block btn-large" href='<c:url value="/register.html" />' style="text-decoration: none">
				<spring:message code="signUpButton.text"/>
			</a>
		</form:form>
	</div>
</body>
</html>