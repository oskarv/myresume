<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title> <spring:message code="profileTitle.text"/> </title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

<style> <%@ include file ="assets/css/main.css"%> </style>
<style> <%@ include file ="assets/css/noscript.css"%> </style>

</head>

<body class="is-preload">
	<!-- Sidebar -->
	<section id="sidebar">
	<div class="inner">
		<nav>
		<ul>
			<li><a href="#intro"> <spring:message code="leftNav.welcome.text" /> </a></li>
			<li><a href="#one"> <spring:message code="leftNav.learnMore.text" /> </a></li>
			<li><a href="#two"> <spring:message code="leftNav.viewResumes.text" /> </a></li>
			<li><a href="#three"> <spring:message code="leftNav.createResume.text" /> </a></li>
		</ul>
		</nav>
	</div>
	</section>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Intro -->
		<section id="intro" class="wrapper style1 fullscreen fade-up">
		<div class="inner">
			<h1>${name}</h1>
			<p>
				<spring:message code="profileWelcomeMessage.text" />
			</p>
			<ul class="actions">
				<li> <a href="#one" class="button scrolly"> <spring:message code="leftNav.learnMore.text"/> </a> </li>
				<li> <a href='<c:url value="/home.html" />' class="button"> <spring:message code="logoutButton.text"/> </a> </li>
			</ul>
		</div>
		</section>

		<!-- One -->
		<section id="one" class="wrapper style2 spotlights"> 
			<section>
				<a href="#two" class="image"><img src="images/browse_files.png" alt="" data-position="center center" /></a>
				<div class="content">
					<div class="inner">
						<h2> <spring:message code="leftNav.viewResumes.text"/> </h2>
						<p> <spring:message code="viewResumes.learnMore.text"/> </p>
						<ul class="actions">
							<li><a href="#two" class="button"> <spring:message code="browseButton.text"/> </a></li>
						</ul>
					</div>
				</div>
			</section> 
			
			<section> 
				<a href="#three" class="image"><img src="images/create_file.png" alt="" data-position="top center" /></a>
				<div class="content">
					<div class="inner">
						<h2> <spring:message code="leftNav.createResume.text"/> </h2>
						<p> <spring:message code="createResume.learnMore.text"/> </p>
						<ul class="actions">
							<li> <a href="#three" class="button"> <spring:message code="createButton.text"/> </a> </li>
						</ul>
					</div>
				</div>
			</section> 
		</section>

		<!-- Two --> 
		<section id="two" class="wrapper style3 fade-up">
			<div class="inner">
				<h2> <spring:message code="leftNav.viewResumes.text"/> </h2>
				<p> <spring:message code="viewResumes.description.text"/> </p>

				<div class="features">
					<c:forEach items="${resumes}" var="resume" varStatus="loop">
						<section>
							<span class="icon major fa-code"></span>
							<h3> <a href='<c:url value="resume.html?id=${loop.index}" />' > ${resume.name} </a> </h3>
							<p>${resume.aboutme}</p>
						</section>
					</c:forEach>
				</div>
			</div>
		</section>

		<section id="three" class="wrapper style1 fade-up">
		<div class="inner">
			<h2> <spring:message code="createResume.headline.text"/> </h2>
			<p> <spring:message code="createResume.details.text"/> </p>
			<div class="split style1">
				<section>
					<form:form modelAttribute="resume" method="post">
						<div class="fields">
							<div class="field half">
								<label for="name"> <spring:message code="createResume.field.name.text"/> </label> 
								<form:input path="name" type="text" name="name" id="name"/>
							</div>
							<div class="field half">
								<label for="email"> <spring:message code="createResume.field.email.text"/> </label> 
								<form:input path="email" type="text" name="email" id="email"/>
							</div>
							<div class="field">
								<label for="email"> <spring:message code="createResume.field.aboutme.text"/> </label> 
								<form:input path="aboutme" type="text" name="aboutme" id="aboutme"/>
							</div>
							<div class="field half">
								<label for="name"> <spring:message code="createResume.field.linkedin.text"/> </label> 
								<form:input path="linkedin" type="text" name="linkedin" id="linkedin"/>
							</div>
							<div class="field half">
								<label for="email"> <spring:message code="createResume.field.github.text"/> </label> 
								<form:input path="github" type="text" name="github" id="github"/>
							</div>
							<div class="field">
								<label for="message"> <spring:message code="createResume.field.education.text"/> </label> 
								<form:textarea path="education" name="education" id="education" rows="5" />
							</div>
							<div class="field">
								<label for="message"> <spring:message code="createResume.field.workexperience.text"/> </label> 
								<form:textarea path="workexperience" name="workexperience" id="workexperience" rows="10" />
							</div>
							<div class="field">
								<label for="message"> <spring:message code="createResume.field.languages.text"/> </label> 
								<form:textarea path="languages" name="languages" id="languages" rows="2" />
							</div>
							<div class="field">
								<label for="message"> <spring:message code="createResume.field.interests.text"/> </label> 
								<form:textarea path="interests" name="interests" id="interests" rows="4" />
							</div>
							<div class="field">
								<label for="message"> <spring:message code="createResume.field.other.text"/> </label> 
								<form:textarea path="other" name="other" id="other" rows="3" />
							</div>
						</div>
						<ul class="actions">
							<li><input type="Submit" value="Create" class="button submit"/></li>
						</ul>
					</form:form>
				</section>

				<section>
					<ul class="contact">
						<li>
							<h3> <spring:message code="profileInfo.address.text"/> </h3> 
							<span>
								11000 Beograd <br /> 
								Srbija
							</span>
						</li>
						<li>
							<h3> <spring:message code="profileInfo.email.text"/> </h3> 
							<a href="#">mail@mail.rs</a>
						</li>
						<li>
							<h3> <spring:message code="profileInfo.phone.text"/> </h3> 
							<span>(000) 000-0000</span>
						</li>
						<li>
							<h3> <spring:message code="profileInfo.social.text"/> </h3>
							<ul class="icons">
								<li><a href="#" class="fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
						</li>
					</ul>
				</section>
			</div>
		</div>
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
	<script src="js/browser.min.js"></script>
	<script src="js/breakpoints.min.js"></script>
	<script src="js/util.js"></script>
	<script src="js/main.js"></script>

</body>
</html>