<%@page import="java.util.List"%>
<%@page import="service.EmployeeService"%>
<%@page import="entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	String username = (String) session.getAttribute("username");
	if (username == null || username.trim().equals("")) {
		response.sendRedirect("login.jsp");
	}
	%>

	<h1>Welcome <%= username %></h1>
	
	<% 
		EmployeeService emplist = new EmployeeService();
		Employee e = (Employee)request.getAttribute("emp");
		
		List<Employee> listToDisplay = emplist.getList();
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
			<%
				for(int i = 0; i < listToDisplay.size(); i++){
						
			%>
					<tr>
						<td><%= listToDisplay.get(i).getId() %></td>
						<td><%= listToDisplay.get(i).getUsername() %></td>
						<td><%= listToDisplay.get(i).getFirstName() %></td>
						<td><%= listToDisplay.get(i).getLastName() %></td>
						<td><%= listToDisplay.get(i).getSalary() %></td>
					</tr>
			<%
						
				}
			%>
			
			
		</tbody>
	</table>
</body>
</html>