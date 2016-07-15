<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
</head>
<body>

<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<ul class="nav nav-sidebar">
				<li ><a href="adminPage">Admin Panel</a></li>
				<li></li>
				<li ><a href="product">Products</a></li>
				<li><a href="category">Category</a></li>
				<li class="active"><a href="supplier">Supplier<span
						class="sr-only">(current)</span></a></li>
				<li><a href="/ShopCart/">Site Home</a></li>
			</ul>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> 
		<div class="container">
   
	<h1>Add a Supplier</h1>
	<div class="container">
		<c:url var="addAction" value="/supplier/add"></c:url>
		<form:form action="${addAction}" class="form-signin" commandName="supplier">
			<table class="table">
				<tr>
				<div class="form-group">
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<c:choose>
						<c:when test="${!empty supplier.id}">
							<td><form:input path="id" pattern=".{3,6}" disabled="true"
									readonly="true" title="id should contain 3 to 6 characters" class="form-control"
										style="width:250px !important;"/>
							</td>
							
						</c:when>
						<c:otherwise>
							<td><form:input path="id" pattern=".{3,6}" required="true"
									title="id should contain 3 to 6 characters" class="form-control"
										style="width:250px !important;"/></td>
									<td><form:errors path="id" cssClass="error" /></td>
						</c:otherwise>
					</c:choose>
					</div>
				</tr>
				<tr>
				<div class="form-group">
					<form:input path="id" hidden="true" />
					<td><form:label path="name">
							<spring:message text="Name">
							</spring:message>
						</form:label></td>
					<td><form:input path="name" required="true" class="form-control"
										style="width:250px !important;"/></td>
					<td><form:errors path="name" cssClass="error" /></td>
					</div>
				</tr>
				<tr>
				<div class="form-group">
					<td><form:label path="address">
							<spring:message text="Address">
							</spring:message>
						</form:label></td>
					<td><form:input path="address" required="true" class="form-control"
										style="width:250px !important;"/></td>
					<td><form:errors path="address" cssClass="error" /></td>
				</div>
				</tr>
				<tr>
				<div class="form-group">
					<td colspan="2"><c:if test="${!empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Edit Supplier"/>" class="btn btn-default"
										style="width:250px !important;"/>
						</c:if> <c:if test="${empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Add Supplier"/>" class="btn btn-default"
										style="width:250px !important;"/>
						</c:if></td>
						</div>
				</tr>
			</table>
		</form:form>
		<h3>Supplier List</h3>
		<c:if test="${!empty supplierList}">
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
					<tr>
						<th>Supplier ID</th>
						<th>Supplier Name</th>
						<th>Supplier Address</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					</thead>
					<c:forEach items="${supplierList}" var="supplier">
						<tbody>
						<tr>
							<td>${supplier.id}</td>
							<td>${supplier.name}</td>
							<td>${supplier.address}</td>
							<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
						</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
	</div>
	</c:if>
	</div>
</div></div>
</div>

</body>
</html>