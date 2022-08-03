<%@page import="studentHibernate.StudentDao"%>
<jsp:useBean id="obj" class="studentHibernate.Student">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
<html>
<head>
<style>
h3{
color: #2df43c;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User Success</title>
</head>
<body>


	<%
	int i = StudentDao.register(obj);
	if (i > 0)
	%>

	<h3>Record successfully saved!</h3>
	<jsp:include page="StudentForm.jsp"></jsp:include>

</body>
</html>  