<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Your Cart</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>


<!-- Custom styles for this template -->
<link href="css/cart.css" rel="stylesheet">
</head>
<body>

	<!-- Item Body -->
	<div class="container">
		<div class="row">
			<div class="col-xs-8">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">
							<div class="row">
								<div class="col-xs-6">
									<h5>
										<span class="glyphicon glyphicon-shopping-cart"></span>  Your EveryDay Cart
									</h5>
								</div>
								<div class="col-xs-6">
									<a class="btn btn-primary btn-sm btn-block" href="<c:url value="/catalog"/>">
										<span class="glyphicon glyphicon-share-alt"></span> Continue shopping
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<c:forEach var="cartItem" items="${shoppingCart.cartItems}">
						<div class="row">
							<div class="col-xs-2"><img class="img-responsive" src="${cartItem.product.productImage }" alt="">
							</div>
							<div class="col-xs-4">
								<h4 class="product-name"><strong>${cartItem.product.name}</strong></h4><h4>
								<small>${cartItem.product.category.name}</small></h4>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-6 text-right">
									<h6><strong>${cartItem.product.price}<span class="text-muted">x</span></strong></h6>
								</div>
								<div class="col-xs-4">
									<input type="text" class="form-control input-sm" value="${cartItem.quantity}">
								</div>
								<div class="col-xs-2">
									<a href="/cart/removeProduct/${cartItem.product.productId}" type="button" class="btn btn-link btn-xs">
										<span class="glyphicon glyphicon-trash"> </span>
									</a>
								</div>
							</div>
						</div>
						<hr>
						</c:forEach>
						<div class="row">
							<div class="text-center">
								<div class="col-xs-9">
									<h6 class="text-right">Added items?</h6>
								</div>
								<div class="col-xs-3">
									<button type="button" class="btn btn-default btn-sm btn-block">
										Update cart</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Footer -->
					<div class="panel-footer">
						<div class="row text-center">
							<div class="col-xs-9">
								<h4 class="text-right">Total <strong>${shoppingCart.totalPrice}</strong></h4>
							</div>
							<div class="col-xs-3">
								<button type="button" class="btn btn-success btn-block">
									Checkout
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
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







