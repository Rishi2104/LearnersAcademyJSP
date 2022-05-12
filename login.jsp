<%@page import="com_pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    Get_Set_Data emp=new Get_Set_Data();
    emp.setUsername(username);
    emp.setPassword(password);
    Operations_CRUD dao=new Operations_CRUD();
    int row=dao.login(emp);
    if(row==1){
    	response.sendRedirect("ListClasses.jsp");
    }
    else 
    	response.sendRedirect("fail.jsp");
    %>
    
</body>
</html>