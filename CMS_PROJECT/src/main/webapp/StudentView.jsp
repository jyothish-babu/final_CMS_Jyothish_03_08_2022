<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>view add delete</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
<script type="text/javascript">
	
</script>
<link rel="stylesheet" href="StudentView.css">
<script type="text/javascript" src="StudentView.js"></script>
</head>
<body>

<form action="StudentForm.jsp">
	<%@page import="studentHibernate.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<%
	List<Student> list = StudentDao.getAllRecords();
	request.setAttribute("list", list);
	%>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-8">
						<h2>
							Student <b>Details</b>
						</h2>
					</div>
					<div class="col-sm-4">
						<button type="submit" class="btn btn-info add-news">
							<i class="fa fa-plus"></i> Add New
						</button>
					</div>
				</div>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>StudentID</th>
						<th>Name</th>
						<th>Address</th>
						<th>Department</th>
						<th>Gender</th>
						<th>Phone.No</th>
						<th>Email</th>
						<th>Password</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${list}" var="std">
						<tr>
							<td>${std.getId()}</td>
							<td>${std.getStname()}</td>
							<td>${std.getStaddress()}</td>
							<td>${std.getStdepartment()}</td>
							<td>${std.getGender()}</td>
							<td>${std.getStphone()}</td>
							<td>${std.getStemail()}</td>
							<td>${std.getStpassword()}</td>
							<td><a class="add" title="Add" data-toggle="tooltip"><i
									class="material-icons">&#xE03B;</i></a> <a class="edits"
								title="Edit" data-toggle="tooltip" href="StudentEditForm.jsp?id=${std.getId()}"><i class="material-icons">&#xE254;</i></a>
								<a class="delete" title="Delete" data-toggle="tooltip" href="StudentDelete.jsp?id=${std.getId()}"><i
									class="material-icons">&#xE872;</i></a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
	</form>
</body>
</html>