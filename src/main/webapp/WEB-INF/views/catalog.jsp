<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EveryDay Markets</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/homepage.css" rel="stylesheet">
</head>

<body>
<jsp:useBean id="shoppingCart" class="com.app.domain.ShoppingCart" scope="session"/>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="<c:url value="/"/>">Everyday Shopping</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="<c:url value="/"/>">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<c:url value="/cart"/>">
                        Cart: <span class="badge">${shoppingCart.totalQuantity}</span><span class="badge">$${shoppingCart.totalPrice}</span>
                    </a>
                </li>
            </ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">EveryDay Markets</h1>
				<div class="list-group">
					<a href="#" class="list-group-item">Produce</a> <a href="#"
						class="list-group-item">Meat</a> <a href="#"
						class="list-group-item">Beverages</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid"
								src="https://thebutchers.club/images/news/fileName/221.jpeg"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid"
								src="https://seekvectorlogo.com/wp-content/uploads/2018/02/organically-grown-company-vector-logo-small.png"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid"
								src="https://ho8kv23j5d-flywheel.netdna-ssl.com/wp-content/uploads/2020/04/Locally-Grown-Body-Image-300x214.png"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

				<div class="row">
					<c:forEach var="product" items="${products}">
						<div class="col-lg-4 col-md-6 mb-4">

							<div class="card h-100">
							
								<a href="#"><img class="card-img-top"
									src="${product.productImage }"
									alt="image of product" /></a>


								<div class="card-body d-flex flex-column">
									<h4 class="card-title"></h4>
									<h5>${product.price}</h5>
									<p class="card-text">${product.name}</p>
								</div>
								<div class="card-footer">
									<div>

										<a type="button"
											class="align-self-end btn btn-lg btn-block btn-primary"
											style="margin-top: auto"
											href="<c:url value="/cart/addProduct/${product.productId}"/>">Add
											To Cart</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.col-lg-9 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; EveryDay
				Markets 2019</p>
		</div>
		<!-- /.container -->
	</footer>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="webjars/jquery/jquery.min.js"></script>
	<script src="webjars/bootstrap/js/bootstrap.min.js"></script>

	<script src="/js/postrequest.js"></script>
	<script src="/js/getrequest.js"></script>

</body>
</html>









