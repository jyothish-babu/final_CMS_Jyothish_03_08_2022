<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" href="AdminHome.css">
</head>
<body>
<h1>COLLEGE MANAGEMENT SYSTEM</h1>
<nav>

<a class="links" href="#">ADD NOTIFICATIONS</a>
<a class="links" href="AddDept.jsp">ADD DEPARTMENT</a>
<a class="links" href="EmployeeView.jsp">EMPLOYEES</a>
<a class="links" href="StudentView.jsp">STUDENTS</a>
<a class="logoutLblPos" type="submit" href="Login.jsp">Logout</a>
<div class="dropdown-menu">
<button class="menu-btn">ADD</button>
<div class="menu-content">
<a class="links-hidden" href="EmployeeForm.jsp">ADD_EMPLOYEE</a>
<a class="links-hidden" href="StudentForm.jsp">ADD_STUDENTS</a>

</div>
</div>

</nav>

</body>
</html>