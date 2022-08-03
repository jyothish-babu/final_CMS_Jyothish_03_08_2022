<%@page import="studentHibernate.StudentDao"%>  
<jsp:useBean id="u" class="studentHibernate.Student"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<% 
String stdId=request.getParameter("id");
StudentDao.delete(stdId);  
response.sendRedirect("StudentView.jsp");  
%> 