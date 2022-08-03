<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="employeeJSPCrud.EmployeeDao"%>  
<jsp:useBean id="emp" class="employeeJSPCrud.Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="emp"/>  
<%  

int i=EmployeeDao.update(emp);  
response.sendRedirect("EmployeeView.jsp");  
%>  