<%@page import="java.util.List"%>
<%@page import="service.EmployeeService"%>
<%@page import="entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin Home</title>
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
<style>
.my-button {
	font-size: small;
	line-height: normal;
	background: white;
	justify-content: center;
}
#myID{
	padding: 20px;
}
</style>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	
	Employee emp = (Employee) session.getAttribute("employee");
	if (emp == null) {
		request.setAttribute("empty", "failed");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
		rd.include(request, response);
	}
	%>

	


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
				<a href="login.html" class="navbar-brand d-lg-none">
					<h1 class="fw-bold m-0">Employee Management System</h1>
				</a>
				<button type="button" class="navbar-toggler me-0"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav">
						<a href="adminHome.jsp" class="nav-item nav-link active">Admin
							Home</a> <a href="addEmp.jsp" class="nav-item nav-link">Add
							Employee</a>
					</div>
					<div class="ms-auto d-none d-lg-block">
						<a href="logout.jsp"
							class="btn btn-primary rounded-pill py-2 px-3">Logout</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->
	
	<%
	String updationSuccess = (String) request.getAttribute("updationSuccess");
	if (updationSuccess != null) {
	%>
	<div class="alert alert-success alert-dismissible show wow fadeIn mb-0"
		data-wow-delay="0.1s" role="alert">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Success!</strong>
		Employee Updated Successfully.
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<%
	}
	String updationFailed = (String) request.getAttribute("updationFailed");
	if (updationFailed != null) {
	%>
	<div class="alert alert-danger alert-dismissible show wow fadeIn mb-0"
		data-wow-delay="0.1s" role="alert">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Failed!</strong>
		Details Mismatch!! Please try again.
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<%
	}	
	String deleteSuccess = (String) request.getAttribute("deleteSuccess");
	if (deleteSuccess != null) {
	%>
	<div class="alert alert-success alert-dismissible show wow fadeIn mb-0"
		data-wow-delay="0.1s" role="alert">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Success!</strong>
		Employee Deleted Successfully.
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<%
	}
	String deleteFailed = (String) request.getAttribute("deleteFailed");
	if (deleteFailed != null) {
	%>
	<div class="alert alert-danger alert-dismissible show wow fadeIn mb-0"
		data-wow-delay="0.1s" role="alert">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Failed!</strong>
		Deletion Failed.
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<%
	}

	List<Employee> empList = EmployeeService.getList();
	%>

	<!-- Table Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center mx-auto mb-3 wow fadeInUp"
				data-wow-delay="0.1s" style="max-width: 600px;">
				<h3 class="section-title bg-white text-center text-primary px-3">Employee
					Data</h3>
				<!-- <h1 class="display-6 mb-4">Enter Username and Password</h1> -->
			</div>
			<div class="row g-0 justify-content-center">
				<div class="col-lg-10 wow fadeInUp" data-wow-delay="0.1s">
					<!-- <p class="text-center mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p> -->
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Username</th>
								<th scope="col">First Name</th>
								<th scope="col">Last Name</th>
								<th scope="col">Salary</th>
								<th scope="col">Is Admin</th>
								<th scope="col">Delete</th>
								<th scope="col">Update</th>
							</tr>
						</thead>
						<tbody>
							<%
							for (Employee e : empList) {
							%>
							<tr>
								<td><%=e.getId()%></td>
								<td><%=e.getUsername()%></td>
								<td><%=e.getFirstName()%></td>
								<td><%=e.getLastName()%></td>
								<td><%=e.getSalary()%></td>
								<td><%=e.isAdmin()%></td>
								<td>
									<%
										if(!e.isAdmin()){
									%>
										<form action="DeleteEmployee" method="post">
											<input type="hidden" name="eid"
												value="<%=e.getId()%>">
											<button class="btn btn-danger">
												Delete
											</button>
										</form>
									<%	
										}
										else {
									%>											
										<button class="btn btn-danger" disabled="disabled">
											Delete
										</button>
									<%
										}
									%>
									
								</td>
								<td><a href="#" class="btn btn-success"
									data-bs-toggle="modal" data-bs-target="#exampleModal<%=e.getId()%>">Update</a>
									
									<!-- Modal -->
							        <div class="modal fade" id="exampleModal<%=e.getId()%>" tabindex="-1"
							             aria-labelledby="exampleModalLabel<%=e.getId()%>" aria-hidden="true">
							            <div class="modal-dialog modal-dialog-centered">
							                <div class="modal-content">
							                    <div class="modal-header">
							                        <h5 class="modal-title" id="exampleModalLabel<%=e.getId()%>">Edit Employee Details
							                        </h5>
							                        <button type="button" class="btn-close" data-bs-dismiss="modal"
							                                aria-label="Close"></button>
							                    </div>
							                    <form action="UpdateEmployee" method="post">
													<div class="row g-3" id="myID">
													
														<input type="hidden" name="id" class="form-control" id="id"
															placeholder="ID" value="<%=e.getId()%>" required> 
													
														<div class="col-md-12">
															<div class="form-floating">
																<input type="text" name="username" class="form-control"
																	id="username" placeholder="Username" value="<%=e.getUsername()%>" required> <label
																	for="username">Username</label>
															</div>
														</div>
														<div class="col-md-12">
															<div class="form-floating">
																<input type="text" name="firstName" class="form-control"
																	id="first" placeholder="First Name" value="<%=e.getFirstName()%>" required> <label
																	for="first">First Name</label>
															</div>
														</div>
														<div class="col-md-12">
															<div class="form-floating">
																<input type="text" name="lastName" class="form-control"
																	id="last" placeholder="Last Name" value="<%=e.getLastName() %>" required> <label
																	for="last">Last Name</label>
															</div>
														</div>
														<%
															if(e.isAdmin()){
														%>
														<div class="col-12">
															<div class="form-floating">
																<select name="isAdmin" class="form-control" id="isAdmin">
																	<option value="true">Yes</option>
																</select> <label for="isAdmin">Is Admin</label>
															</div>
														</div>
														<%
															}
															else {
														%>
														<div class="col-12">
															<div class="form-floating">
																<select name="isAdmin" class="form-control" id="isAdmin">
																	<option value="false">No</option>
																	<option value="true">Yes</option>
																</select> <label for="isAdmin">Is Admin</label>
															</div>
														</div>
														<%															
															}
														%>
														<div class="col-md-12">
															<div class="form-floating">
																<input type="text" name="salary" class="form-control"
																	id="salary" placeholder="Salary" value="<%=e.getSalary()%>" required> <label
																	for="salary">Salary</label>
															</div>
														</div>
														
														<div class="col-12 text-center">
															<input type="submit"
																class="btn btn-primary rounded-pill py-3 px-5 mx-1"
																value="Update Details"> <input type="reset"
																class="btn btn-primary rounded-pill py-3 px-5 mx-1"
																value="Reset">
														</div>
													</div>
												</form>
							                </div>
							            </div>
							        </div>
							        <!--Modal-->
								</td>
							</tr>
							<%
								}
							%>


						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- Table -->


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
					<a class="btn btn-link" href="adminHome.jsp">Admin Home</a> <a
						class="btn btn-link" href="addEmp.jsp">Add Employee</a> 
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
	<script>
            function onlyNumberKey(evt) {
                var ASCIICode = (evt.which) ? evt.which : evt.keyCode
                if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
                    return false;
                return true;
            }
    </script>
</body>
</html>