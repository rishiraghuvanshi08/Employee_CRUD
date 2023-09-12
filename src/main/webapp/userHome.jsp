<%@page import="entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
	<%
		String username = (String) session.getAttribute("username");
		if (username == null || username.trim().equals("")) {
			response.sendRedirect("login.jsp");
		}
	%>
	
	<h1>Welcome <%= username %></h1>
	
	<%
		Employee e = (Employee)request.getAttribute("emp");
	%>
	
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Username</th>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Salary</th>
			</tr>
		</thead>
		<tbody>
			
			<tr>
				<td><%= e.getId() %></td>
				<td><%= e.getUsername() %></td>
				<td><%= e.getFirstName() %></td>
				<td><%= e.getLastName() %></td>
				<td><%= e.getSalary() %></td>
			</tr>	
			
		</tbody>
	</table>
</body>
</html>