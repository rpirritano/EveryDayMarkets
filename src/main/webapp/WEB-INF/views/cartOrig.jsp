<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Cart</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/homepage.css" rel="stylesheet">
</head>

<body>
<div class="container">
    <h2 class="sub-header">Your Shopping Cart</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Category</th>
                <th>Genre</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Item Price</th>
                <th>Total</th>
                <th>#</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="cartItem" items="${shoppingCart.cartItems}">
                <tr>
                    <td>${cartItem.product.category.name}</td>
                    <td>${cartItem.product.genre}</td>
                    <td>${cartItem.product.name}</td>
                    <td>${cartItem.quantity}</td>
                    <td>$${cartItem.product.price}</td>
                    <td>$${cartItem.itemPrice}</td>
                    <td><a href="/cart/removeProduct/${cartItem.product.productId}">
                        <span class="glyphicon glyphicon-remove"></span></a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td></td>
                <td></td>
                <th><span class="pull-right">Grand Total:</span></th>
                <th>${shoppingCart.totalQuantity}</th>
                <td></td>
                <th>$${shoppingCart.totalPrice}</th>
                <td></td>
            </tr>
            </tbody>
        </table>
    </div>
    <div>
        <a class="btn btn-default pull-left" href="<c:url value="/catalog"/>">Continue shopping..</a>
        <a class="btn btn-danger pull-right" href="<c:url value="/cart/clear"/>">Clear Cart</a>
    </div>
</div>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="webjars/jquery/jquery.min.js"></script>
	<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
	
<script src="/js/postrequest.js"></script>
    <script src="/js/getrequest.js"></script> 
	
</body>
</html>
