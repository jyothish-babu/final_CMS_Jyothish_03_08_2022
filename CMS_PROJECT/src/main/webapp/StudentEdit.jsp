<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="studentHibernate.StudentDao"%>  
<jsp:useBean id="std" class="studentHibernate.Student"></jsp:useBean>  
<jsp:setProperty property="*" name="std"/>  
<%  

int i=StudentDao.update(std);  
response.sendRedirect("StudentView.jsp");  
%> 