<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/resources/images" var="z"></c:url>
<%@page isELIgnored="false" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>FOODCHOW</title>
<link rel="icon" href="${z}/mobile.ico" type="image/x-icon">
<style>
.carousel-inner>.item>img, body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
}

.margin {
	margin-bottom: 45px;
}

.bg-2 {
	background-color: #474e5d; /* Dark Blue */
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff; /* White */
	color: #555555;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 2px;
}

.bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
}

.unselectable {
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

h2 {
	letter-spacing: 3px;
	font-size: 40px;
	color: #111;
	font-family: Montserrat, sans-serif;
}

h3 {
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
	font-size:xx-large;
	color: #000;
}
h4{
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
	font-size:x-large;
	color: #000;
	}
p {
	font-family:monospace;
	color: #000;
}
</style>
</head>


<nav class="navbar navbar-default navbar-static-top">
<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#navbar" aria-expanded="false"
			aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/ShopCart/"><font color="black"><strong>FOODCHOW
					</strong></font></a>
	</div>

	<div id="navbar" class="navbar-collapse collapse">
		<ul class="nav navbar-nav">
			<li><a href="/ShopCart/" target="_self">Home</a></li>
			<li><a href="about" target="_self">About</a></li>
			<li class="active"><a href="contact" target="_self">Contact
					Us</a></li>
		</ul>

	</div>
</div>
</nav>
<div class="container">
	<h3>Project Owner / Developer:</h3>
	<p><font size="6"><strong>Manu Sharma</strong></font></p>
	<h4>&nbsp;Contact No:</h4>
	<p><strong>+91 9911245858</strong></p>
	<h4>&nbsp;E Mail:</h4>
	<p><strong>manusharma210495@gmail.com</strong></p>
	<h3>Address:</h3>
	<p><font size="6"><strong>
		FOODCHOW ShopCart,<br> Localhost &#128521;
    </strong></font></p>
	<h3>Runtime:</h3>
	<p><font size="6"><strong>Apache Tomcat v8</strong></font></p>
	<h3>Enviroment:</h3>
	<p><font size="6"><strong>Eclipse</strong></font></p>
	<h3>Framework:</h3>
	<p><font size="6"><strong>Spring MVC (Former Known As Interface 21)</strong></font></p>
<br>
<hr>
<footer align="right">
		<p>
			<font size="4" color="#555555">Email us at: admin@foodchow.com | Contact
				No.: 1800 3000 300 | &copy; foodchow 2016</font>
		</p>
	</footer>
</div>
</body>
</html>