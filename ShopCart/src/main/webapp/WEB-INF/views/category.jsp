<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<c:url value="/resources/images" var="z"></c:url>
<title>Category CRUD</title>
<link rel="icon" href="${z}/edit.png" type="image/x-icon">
<style>
.container-fluid{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}
body {
  padding-top: 50px;
}


/*
 * Global add-ons
 */

.sub-header {
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}

/*
 * Top navigation
 * Hide default border to remove 1px line.
 */
.navbar-fixed-top {
  border: 0;
}

/*
 * Sidebar
 */

/* Hide for mobile, show later */
.sidebar {
  display: none;
}
@media (min-width: 768px) {
  .sidebar {
    position: fixed;
    top: 51px;
    bottom: 0;
    left: 0;
    z-index: 1000;
    display: block;
    padding: 20px;
    overflow-x: hidden;
    overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
    background-color: #f5f5f5;
    border-right: 1px solid #eee;
  }
}

/* Sidebar navigation */
.nav-sidebar {
  margin-right: -21px; /* 20px padding + 1px border */
  margin-bottom: 20px;
  margin-left: -20px;
}
.nav-sidebar > li > a {
  padding-right: 20px;
  padding-left: 20px;
}
.nav-sidebar > .active > a,
.nav-sidebar > .active > a:hover,
.nav-sidebar > .active > a:focus {
  color: #fff;
  background-color: #428bca;
}


/*
 * Main content
 */

.main {
  padding: 20px;
}
@media (min-width: 768px) {
  .main {
    padding-right: 40px;
    padding-left: 40px;
  }
}
.main .page-header {
  margin-top: 0;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="text"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

/*
 * Placeholder dashboard ideas
 */

.placeholders {
  margin-bottom: 30px;
  text-align: center;
}
.placeholders h4 {
  margin-bottom: 0;
}
.placeholder {
  margin-bottom: 20px;
}
.placeholder img {
  display: inline-block;
  border-radius: 50%;
}



.navbar {
	padding-top: 7px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 2px;
}
</style>
</head>
<body>
 <nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/ShopCart/"><font color="black"><strong>MyCorp
						Inc.</strong></font></a>
		</div>
	</div>
</nav>
<div class="container-fluid">
 <div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<ul class="nav nav-sidebar">
				<li ><a href="adminPage">Admin Panel</a></li>
				<li></li>
				<li ><a href="product">Products</a></li>
				<li class="active"><a href="category">Category<span
						class="sr-only">(current)</span></a></li>
				<li><a href="supplier">Supplier</a></li>
				<li><a href="/ShopCart/">Site Home</a></li>
			</ul>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> 
		<div class="container">
   
	<h1>Add a Category</h1>
	<c:url var="addAction" value="/category/add"></c:url>
	<form:form class="form-signin" action="${addAction}" commandName="category">
		<table class="table">
			<tr>
			<div class="form-group">
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td class="form-group">
						<form:input path="id" disabled="true" readonly="true" class="form-control"
										style="width:250px !important;"/>
						</td>
					</c:when>
					<c:otherwise>
						<td><form:input path="id" pattern=".{4,7}" required="true"
								title="id should contain 6 ti 7 characters" class="form-control"
										style="width:250px !important;"/></td>
						<td><form:errors path="id" cssClass="error" /></td>
					</c:otherwise>
				</c:choose>
				</div>
			</tr>
			<tr>
			<div class="form-group">
				<form:input path="name" hidden="true" />
				<td><form:label path="name">
						<spring:message text="Name"></spring:message>
					</form:label></td>
				<td><form:input path="name" required="true" class="form-control"
										style="width:250px !important;"/>
				</td>
				<td><form:errors path="name" cssClass="error" /></td>
				</div>
			</tr>
			<tr>
			<div class="form-group">
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" class="form-control"
										style="width:250px !important;"/></td>
			<td><form:errors path="description" cssClass="error" /></td>
			</div>
			</tr>
			<tr>
			<div class="form-group">
				<td colspan="2"><c:if test="${!empty category.name}">
						<input type="submit"
							value="<spring:message text="Edit Category"/>" class="btn btn-default"
										style="width:250px !important;"/>
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" value="<spring:message text="Add Category"/>" class="btn btn-default"
										style="width:250px !important;"/>
					</c:if></td>
					</div>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">
			<div class="table-responsive ">
				<table  class="table table-striped">
				<thead>
					<tr>
						<th>Category ID</th>
						<th>Category Name</th>
						<th>Category Description</th>
						<th>Edit</th>
						<th>Delete</th>

					</tr>
					</thead>
					<c:forEach items="${categoryList}" var="category">
						<tbody>
						<tr>
							<td>${category.id}</td>
							<td>${category.name}</td>
							<td>${category.description}</td>
							<td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
							<td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
						</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</c:if>
	</div>
	</div>
	</div>
</body>
</html>