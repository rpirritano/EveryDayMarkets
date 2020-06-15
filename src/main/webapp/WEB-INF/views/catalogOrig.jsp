<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EveryDay Markets</title>
</head>


<%@ include file="fragments/header.jspf"%>
<%@ include file="fragments/headerinc.jspf"%>


<body>
	<div class="container">

		<h2 class="header">Catalog</h2>
		<br>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Category</th>
						<th>Genre</th>
						<th>Name</th>
						<th>Price</th>
						<th>View</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="product" items="${products}">
						<tr>
							<td>${product.category.name}</td>
							<td>${product.genre}</td>
							<td>${product.name}</td>
							<td>$ ${product.price}</td>
							<td><a href="/product/${product.productId}">ViewTODO</a></td>
							<td><a href="/product/edit/${product.productId}">EditTODO</a></td>
							<td><a href="/product/delete/${product.productId}">DeleteTODO</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
</body>