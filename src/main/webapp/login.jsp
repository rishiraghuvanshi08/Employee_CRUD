<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
#div-form {
	display: flex;
	justify-content: center;
	margin-top: 30px;
}
</style>
<body>
	<%
	String c = (String) request.getAttribute("loginfailed");
	if (c != null) {
	%>
	<div class="alert alert-danger alert-dismissible show wow fadeIn mb-0"
		data-wow-delay="0.1s" role="alert">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Login
			Failed!</strong> Please enter correct Username and Password.
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<%
	}
	%>
	<div id="div-form">
		<form action="LoginChecker" method="Post">
			<div class="mb-3 div-form">
				<label for="exampleInputEmail1" class="form-label">Username</label>
				<input type="user" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="username">
			</div>
			<div class="mb-3 div-form">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" class="form-control"
					id="exampleInputPassword1" name="password">
			</div>
			<div id="div-form">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>

</body>
</html>