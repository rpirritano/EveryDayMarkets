<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
</head>
<%@ include file="fragments/header.jspf" %>
<%@ include file="fragments/headerinc.jspf" %>
<body>

	<div class="container">

    <h2>Product Details</h2>
        <div>
        
        <form:form class="form-horizontal" 
        	action="/product"  modelAttribute="product">
            <input type="hidden" value="${productId}" name="product"/>
       
                <div class="form-group">
                    <label class="col-sm-2 control-label">Product Id:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                        <c:out value="${product.productId}"/>
                        </p>
                        </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Name:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                        <c:out value="${product.name}"/>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Price:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                        <c:out value="${product.price}"/>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                   <div class="col-sm-10">
                   		<p class="form-control-static">
							<!-- <a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a> -->
						<img class="card-img-top" src="${product.ImageUrl}">
				  </div>
                </div>
                 <div class="row">
                 	<a href="/cart/${product.productId}">Add To Cart</a>  
            	</div>
            </form:form>
    </div>
</div>
<div>

</div>

</body>
</html>