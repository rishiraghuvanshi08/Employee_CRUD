<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home Page</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" role="status"
			style="width: 3rem; height: 3rem;"></div>
	</div>
	<!-- Spinner End -->


	<!-- Topbar Start -->
	<div class="container-fluid bg-primary text-white d-none d-lg-flex">
		<div class="container py-3">
			<div class="d-flex align-items-center">
				<a href="index.html">
					<h2 class="text-white fw-bold m-0">Employee Management System</h2>
				</a>
				<div class="ms-auto d-flex align-items-center">
					<small class="ms-4"><i class="fa fa-map-marker-alt me-3"></i>123
						Street, New York, USA</small> <small class="ms-4"><i
						class="fa fa-envelope me-3"></i>info@example.com</small> <small
						class="ms-4"><i class="fa fa-phone-alt me-3"></i>+012 345
						67890</small>
					<div class="ms-3 d-flex">
						<a
							class="btn btn-sm-square btn-light text-primary rounded-circle ms-2"
							href=""><i class="fab fa-facebook-f"></i></a> <a
							class="btn btn-sm-square btn-light text-primary rounded-circle ms-2"
							href=""><i class="fab fa-twitter"></i></a> <a
							class="btn btn-sm-square btn-light text-primary rounded-circle ms-2"
							href=""><i class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid bg-white sticky-top">
		<div class="container">
			<nav class="navbar navbar-expand-lg bg-white navbar-light p-lg-0">
				<a href="index.html" class="navbar-brand d-lg-none">
					<h1 class="fw-bold m-0">EMS</h1>
				</a>
				<button type="button" class="navbar-toggler me-0"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav">
						<a href="home.jsp" class="nav-item nav-link active">Home</a> 
						
					</div>
					<div class="ms-auto d-none d-lg-block">
						<a href="login.jsp"
							class="btn btn-primary rounded-pill py-2 px-3">Login</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->


	<!-- Carousel Start -->
	<div class="container-fluid px-0 mb-5">
		<div id="header-carousel" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100" src="img/emp.png" alt="Image">
					<div class="carousel-caption">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-lg-7 text-start">
									<p class="fs-4 text-white animated slideInRight">
										<strong>Welcome to</strong>
									</p>
									<h2 class="display-1 text-white mb-4 animated slideInRight">Employee Management System</h2>
									<a href="login.jsp"
										class="btn btn-primary rounded-pill py-3 px-5 animated slideInRight">Explore
										More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>
	<!-- Carousel End -->


	<!-- Features Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-0 feature-row">
				<div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.1s">
					<div class="feature-item border h-100 p-5">
						<div class="btn-square bg-light rounded-circle mb-4"
							style="width: 64px; height: 64px;">
							<img class="img-fluid" src="img/icon/c.jpg" alt="Icon">
						</div>
						<h5 class="mb-3">Create Operation</h5>
						<p class="mb-0">Inserting new data records into the database to add fresh information.</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.3s">
					<div class="feature-item border h-100 p-5">
						<div class="btn-square bg-light rounded-circle mb-4"
							style="width: 64px; height: 64px;">
							<img class="img-fluid" src="img/icon/r.jpg" alt="Icon">
						</div>
						<h5 class="mb-3">Read Operation</h5>
						<p class="mb-0">Fetching and retrieving existing data from the database for viewing or analysis.</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.5s">
					<div class="feature-item border h-100 p-5">
						<div class="btn-square bg-light rounded-circle mb-4"
							style="width: 64px; height: 64px;">
							<img class="img-fluid" src="img/icon/u.jpg" alt="Icon">
						</div>
						<h5 class="mb-3">Update Operation</h5>
						<p class="mb-0">Modifying and altering existing data in the database to reflect changes or corrections.</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s">
					<div class="feature-item border h-100 p-5">
						<div class="btn-square bg-light rounded-circle mb-4"
							style="width: 64px; height: 64px;">
							<img class="img-fluid" src="img/icon/d.jpg" alt="Icon">
						</div>
						<h5 class="mb-3">Delete Operation</h5>
						<p class="mb-0">Removing data entries from the database to eliminate specific records or information.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Features End -->


	<!-- Footer Start -->
	<div class="container-fluid bg-dark footer mt-5 py-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<h4 class="text-white mb-4">Our Office</h4>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt me-3"></i>+012 345 67890
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope me-3"></i>info@example.com
					</p>
					<div class="d-flex pt-3">
						<a class="btn btn-square btn-light rounded-circle me-2" href=""><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-square btn-light rounded-circle me-2" href=""><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-square btn-light rounded-circle me-2" href=""><i
							class="fab fa-youtube"></i></a> <a
							class="btn btn-square btn-light rounded-circle me-2" href=""><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-white mb-4">Quick Links</h4>
					<a class="btn btn-link" href="home.jsp">Home</a> <a
						class="btn btn-link" href="login.jsp">Login</a> 
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-white mb-4">Business Hours</h4>
					<p class="mb-1">Monday - Friday</p>
					<h6 class="text-light">09:00 am - 07:00 pm</h6>
					<p class="mb-1">Saturday</p>
					<h6 class="text-light">09:00 am - 12:00 pm</h6>
					<p class="mb-1">Sunday</p>
					<h6 class="text-light">Closed</h6>
				</div>
				
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Copyright Start -->
	<div class="container-fluid copyright py-4">
		<div class="container">
			<div class="row">
				<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
					&copy; <a class="fw-medium text-light" href="#">Employee Management</a>,
					All Right Reserved.
				</div>
				
			</div>
		</div>
	</div>
	<!-- Copyright End -->


	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
		class="bi bi-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/lightbox/js/lightbox.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>
</html>