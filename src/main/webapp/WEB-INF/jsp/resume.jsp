<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Resume</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

<style> <%@ include file ="assets/css/main.css"%> </style>
<style> <%@ include file ="assets/css/noscript.css"%> </style>

</head>

<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a href='<c:url value="/profile.html" />' class="title">
			<spring:message code="myResume.text" />
		</a>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="content">
			<section id="main" class="wrapper">
				<div class="inner">
					<h1 class="major">${resume.name}</h1>

					<h3> <spring:message code="createResume.field.email.text"/> </h3>
					<p>${resume.email}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.aboutme.text"/> </h3>
					<p>${resume.aboutme}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.linkedin.text"/> </h3>
					<p>${resume.linkedin}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.github.text"/> </h3>
					<p>${resume.github}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.education.text"/> </h3>
					<p>${resume.education}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.workexperience.text"/> </h3>
					<p>${resume.workexperience}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.languages.text"/> </h3>
					<p>${resume.languages}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.interests.text"/> </h3>
					<p>${resume.interests}</p>
					<hr/>

					<h3> <spring:message code="createResume.field.other.text"/> </h3>
					<p>${resume.other}</p>
					<hr/>

				</div>
			</section>
		</div>

		<section class="wrraper" style="padding: 0px 0px 50px 200px">
			<div id="editor"></div>
			<button id="cmd" class="button primary icon fa-download"> <spring:message code="downloadAsPdfButton.text"/> </button>
		</section>
	</div>

	<!-- Footer -->
	<footer id="footer" class="wrapper style1-alt">
	<div class="inner">
		<ul class="menu">
			<li>&copy; <spring:message code="copyright.text"/> </li>
			<li> Oskar Vatic </li>
		</ul>
	</div>
	</footer>

	<!-- Scripts -->	
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.scrollex.min.js"></script>
	<script src="js/jquery.scrolly.min.js"></script>
	<script src="js/jspdf.min.js"></script>
	<script src="js/browser.min.js"></script>
	<script src="js/breakpoints.min.js"></script>
	<script src="js/util.js"></script>
	<script src="js/main.js"></script>

	<script src="js/myresume/resume.js"></script>

</body>
</html>