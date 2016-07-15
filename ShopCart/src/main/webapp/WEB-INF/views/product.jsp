<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<c:url value="/resources/images" var="z"></c:url>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Product CRUD</title>
<link rel="icon" href="${z}/edit.png" type="image/x-icon">
<style type="text/css">
body {
	padding-top: 50px;
}
.container-fluid {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto
}

.sub-header {
	padding-bottom: 10px;
	border-bottom: 1px solid #eee;
}

.navbar-fixed-top {
	border: 0;
}

.sidebar {
	display: none;
}

@media ( min-width : 768px) {
	.sidebar {
		position: fixed;
		top: 51px;
		bottom: 0;
		left: 0;
		z-index: 1000;
		display: block;
		padding: 20px;
		overflow-x: hidden;
		overflow-y: auto;
		/* Scrollable contents if viewport is shorter than content. */
		background-color: #f5f5f5;
		border-right: 1px solid #eee;
	}
}

.nav-sidebar {
	margin-right: -21px; /* 20px padding + 1px border */
	margin-bottom: 20px;
	margin-left: -20px;
}

.nav-sidebar>li>a {
	padding-right: 20px;
	padding-left: 20px;
}

.nav-sidebar>.active>a, .nav-sidebar>.active>a:hover, .nav-sidebar>.active>a:focus
	{
	color: #fff;
	background-color: #428bca;
}

.borderless td, .borderless th {
	border: none;
}

.main {
	padding: 20px;
}

@media ( min-width : 768px) {
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

.container-fluid {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto
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
					<li><a href="adminPage">Admin Panel</a></li>
					<li></li>
					<li class="active"><a href="product">Products<span
							class="sr-only">(current)</span></a></li>
					<li><a href="category">Category</a></li>
					<li><a href="supplier">Supplier</a></li>
					<li><a href="/ShopCart/">Site Home</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="container">

					<h1>Add a Product</h1>
					<c:url var="addAction" value="/product/add"></c:url>

					<form:form class="form-signin" action="${addAction}" commandName="product">
						<table class="table">
							<tr>
								<div class="form-group">
								<td><form:label path="id">
										<spring:message text="ID" />
									</form:label></td>
								<c:choose>
									<c:when test="${!empty product.id}">
										<td><form:input class="form-control"
												style="width:250px !important;" path="id" disabled="true"
												readonly="true" /></td>
									</c:when>
									<c:otherwise>
										<td><form:input class="form-control"
												style="width:250px !important;" path="id" patttern=".{6,7}"
												required="true" title="id should contains 6 to 7 characters" /></td>
												<td><form:errors path="id" cssClass="error" /></td>
									</c:otherwise>
								</c:choose>
								</div>
							</tr>
							<tr>
								<div class="form-group">
									<form:input path="id" hidden="true" />
								<td><form:label path="name">
										<spring:message text="Name" />
									</form:label></td>
								<td><form:input path="name" class="form-control"
										style="width:250px !important;" required="true" /></td>
										<td><form:errors path="name" cssClass="error" /></td>
										</div>
						
							</tr>
							
							<tr>
								<div class="form-group">
								<td><form:label path="price">
										<spring:message text="Price" />
									</form:label></td>
								<td><form:input path="price" class="form-control"
										style="width:250px !important;" required="true" /></td>
										<td><form:errors path="price" cssClass="error" /></td>
								</div>
							</tr>

							<tr>
								<div class="form-group">
								<td><form:label path="description">
										<spring:message text="Description" />
									</form:label></td>
								<td><form:input path="description" class="form-control"
										style="width:250px !important;" required="true" /></td>
										<td><form:errors path="description" cssClass="error" /></td>
								</div>
							</tr>

							<tr>
								<div class="form-group">
								<td><form:label path="supplier">
										<spring:message text="Supplier" />
									</form:label></td>
								<%-- <td><form:input path="supplier.name" required="true" /></td> --%>
								<td><form:select path="supplier.name" class="form-control"
										style="width:250px !important;" items="${supplierList}"
										itemValue="name" itemLabel="name" /></td>
								</div>
							</tr>
							<tr>
								<div class="form-group">
								<td><form:label path="category">
										<spring:message text="Category" />
									</form:label></td>
								<td><form:select path="category.name" class="form-control"
										style="width:250px !important;" items="${categoryList}"
										itemValue="name" itemLabel="name" /></td>
								</div>
							</tr>
							<tr>
								<td colspan="2"><c:if test="${!empty product.name}">
										<input type="submit" class="btn btn-default"
											value="<spring:message text="Edit Product"/>"
										style="width:250px !important;" />
									</c:if> <c:if test="${empty product.name}">
										<input class="btn btn-default" type="submit"
											value="<spring:message text="Add Product"/>" 
										style="width:250px !important;"/>
									</c:if></td>
							</tr>
						</table>
					</form:form>
					<br>
					<h3>Product List</h3>
					<c:if test="${!empty productList}">
						<div class="table-responsive"></div>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Product ID</th>
									<th>Product Name</th>
									<th>Product Description</th>
									<th>Price</th>
									<th>Product Category</th>
									<th>Product Supplier</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
							</thead>
							<c:forEach items="${productList}" var="product">
								<tbody>
									<tr>
										<td>${product.id}</td>
										<td>${product.name}</td>
										<td>${product.description}</td>
										<td>${product.price}</td>
										<td>${product.category.name}</td>
										<td>${product.supplier.name}</td>
										<td><a
											href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
										<td><a
											href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
									</tr>
							</c:forEach>
							</tbody>
						</table>
				</div>
				</c:if>
			</div>
		</div>
	</div>
	</div>
</body>
</html>