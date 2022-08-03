<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="StudentForm1.css">
<script type="text/javascript" src="StudentForm.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
</style>
</head>
<body>

	<form action="StudentRegister.jsp" onsubmit="return validate()" method="post">

		<div class="form">
			<div class="title">COLLEGE MANAGEMENT SYSTEM</div>
			<div class="subtitle">
				<H5>Student Registration Form</H5>
			</div>
			<div class="input-container ic1">
				<input id="stname" name="stname" class="input" type="text"
					placeholder=" "/>
				<div class="cut"></div>
				<label for="stname" class="placeholder">Enter Name</label>
			</div>
			<div class="input-container ic2">
				<textarea id="staddress" name="staddress" class="input"
					placeholder=" "></textarea>
				<div class="cut"></div>
				<label for="staddress" class="placeholder">Enter Address</label>
			</div>
			<div class="input-container ic2">
				<label> Department : </label> <select name="stdepartment"
					id="stdepartment">
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
				<input id="stphone" name="stphone" class="input" type="tel"
					placeholder=" " />
				<div class="cut"></div>
				<label for="stphone" class="placeholder">Phone Number</label>
			</div>

			<div class="input-container ic2">
				<input id="stemail" name="stemail" class="input" type="email"
					placeholder=" " />
				<div class="cut"></div>
				<label for="stemail" class="placeholder">Enter Email</label>
			</div>
			<div class="input-container ic2">
				<input id="stpassword" name="stpassword" class="input"
					type="password" placeholder=" "/>
				<div class="cut"></div>
				<label for="stpassword" class="placeholder">Enter Password</label> 
			</div>
			<div class="input-container ic2">
				<input id="stpassword_repeat" name="stpassword_repeat" class="input"
					type="password" placeholder=" "/> <input
					type="checkbox" onclick="toggleVisibility()" />Show Password
				<div class="cut"></div>
				<label for="stpassword_repeat" class="placeholder">Re-Enter
					Password</label>
			</div>

			<button type="submit" class="submit">submit</button>
		</div>
	</form>

</body>
</html>