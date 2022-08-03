<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="FacultyCSE.css">
</head>
<body>
<h1>COLLEGE MANAGEMENT SYSTEM</h1>
<div class="hamburger-menu">
    <input id="menu__toggle" type="checkbox" />
    <label class="menu__btn" for="menu__toggle">
      <span></span>
    </label>

    <ul class="menu__box">
      <li><a class="menu__item" href="FacultyHome.jsp">BACK</a></li>
      <li><a class="menu__item" href="StudentForm.jsp">ADD STUDENT</a></li>
      <li><a class="menu__item" href="StudentView.jsp">VIEW/EDIT STUDENT</a></li>
      <li><a class="menu__item" href="Employee_sView.jsp">VIEW FACULTY</a></li>
    </ul>
  </div>

</body>   
</html>