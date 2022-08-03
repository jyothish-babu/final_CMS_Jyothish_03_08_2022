<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="EmployeeForm.css">
<script type="text/javascript" src="EmployeeForm.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
</style>
</head>
<body>

<%@page import="employeeJSPCrud.EmployeeDao,employeeJSPCrud.Employee"%>  
  
<%  

String id=request.getParameter("id");
/* String id=request.getParameter("id");  */
Employee emp=EmployeeDao.getRecordById(Integer.parseInt(id));   
%>

<!--   <a class="submit_back" href="AdminCS.jsp">Back</a> -->
	<form action="EmployeeEdit.jsp" method="post">
		<div class="form">
			<div class="title">COLLEGE MANAGEMENT SYSTEM</div>
			<div class="subtitle">
				<H5>Employee Edit Form</H5>
			</div>
			
			<input type="hidden" name="emid" value="<%= emp.getEmid() %>"/>

			<div class="input-container ic1">
				<input id="emname" name="emname" class="input" type="text"
					placeholder=" " value="<%= emp.getEmname() %>" required="required" />
				<div class="cut"></div>
				<label for="emname" class="placeholder">Enter Name</label>
			</div>
			<div class="input-container ic2">
				<textarea id="emaddress" name="emaddress" class="input"
					placeholder=" " value="<%= emp.getEmaddress() %>" required="required"></textarea>
				<div class="cut"></div>
				<label for="emaddress" class="placeholder">enter address</label>
			</div>

			<div class="input-container ic2">
				<label> Designation : </label> <select id="emdesignation"
					name="emdesignation">
					<option value="Principal">Principal</option>
					<option value="HOD">HOD</option>
					<option value="Professor">Professor</option>
					<option value="Asst.Professor">Asst.Professor</option>
					<option value="Non_Faculty">Non_Faculty</option>
				</select>
			</div>
			<div class="input-container ic2">
				<label> Department : </label> <select id="emdepartment"
					name="emdepartment">
					<option value="CSE">CSE</option>
					<option value="CE">CE</option>
					<option value="EEE">EEE</option>
					<option value="ECE">ECE</option>
				</select>
			</div>
			<div class="input-container ic2">
				<label> Gender : </label><br> <input type="radio" value="Male"
					name="gender" checked><label> Male</label> <input
					type="radio" value="Female" name="gender"> <label>Female</label>
				<input type="radio" value="Other" name="gender"><label>Other</label>
			</div>
			<div class="input-container ic2">
				<input id="emphone" name="emphone" class="input" type="tel"
					placeholder=" " value="<%= emp.getEmphone() %>" required="required" />
				<div class="cut"></div>
				<label for="emphone" class="placeholder">phone number</label>
			</div>

			<div class="input-container ic2">
				<input id="ememail" name="ememail" class="input" type="email"
					placeholder=" " value="<%= emp.getEmemail() %>" required="required" />
				<div class="cut"></div>
				<label for="ememail" class="placeholder">Enter Email</label>
			</div>
			<div class="input-container ic2">
				<input id="empassword" name="empassword" class="input"
					type="password" placeholder=" " value="<%= emp.getEmpassword() %>" required="required" />
				<div class="cut"></div>
				<label for="empassword" class="placeholder">Enter Password</label> <span
					id="message1" style="color: red"> </span>
			</div>
			<div class="input-container ic2">
				<input id="empassword_repeat" name="empassword_repeat" class="input"
					type="password" placeholder=" " required />
					<input type="checkbox" onclick="toggleVisibility()" />Show Password
				<div class="cut"></div>
				<label for="empassword_repeat" class="placeholder">Re-Enter
					Password</label> <span id="message2" style="color: red"> </span>
			</div>

			<button type="submit" class="submit" onclick="return validateForm(), EmployeeView.jsp" >submit</button>
		</div>
	</form>

</body>
</html>