<%@page import="Learners_academy.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Teacher's Data</title>
</head>
<body>
<%
int tid=Integer.parseInt(request.getParameter("tid"));
String tname=request.getParameter("tname");
Get_Set_Data emp=new Get_Set_Data();
emp.setTid(tid);
emp.setTname(tname);
Operations_CRUD dao=new Operations_CRUD();
int row=dao.insert_teachers(emp);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>