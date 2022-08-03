<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JS Toggle Password Visibility</title>
<link rel="stylesheet" href="Login.css">
<script type="text/javascript" src="Login.js"></script>
<script></script>
 
</head>
<body>
<p class="error">
				<%
				if (request.getAttribute("errorMsg") != null) {
					out.println(request.getAttribute("errorMsg"));
				}
				%>
			</p>


	<form action="emailAndPassword.jsp" method="post" >
		<div class="form">
			<div class="title">COLLEGE MANAGEMENT SYSTEM</div>
			<div class="subtitle"><H5>College Of Engineering Kidangoor</H5></div>
			
			<div class="input-container ic1">
				<input type="text" class="input" name="ememail" id="ememail" placeholder="Email"
				 />
			</div>
			<div class="input-container ic2">
				<input type="password" class="input" name="empassword" id="logpassword" placeholder="Password" /></br> </br> 
				<input type="checkbox" onclick="return toggleVisibility()" />Show Password</div> </br>
			<input type="submit" class="submit" value="login" name="login1"/>
		</div>
	</form>
</body>
</html>
