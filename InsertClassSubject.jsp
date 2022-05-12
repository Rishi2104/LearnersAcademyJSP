<%@page import="Learners_academy.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Subject Data</title>
</head>
<body>
<%
String cname=request.getParameter("cname");
String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");
Get_Set_Data emp=new Get_Set_Data();
emp.setCname(cname);
emp.setS1(s1);
emp.setS2(s2);
emp.setS3(s3);
emp.setS4(s4);
emp.setS5(s5);
Operations_CRUD dao=new Operations_CRUD();
int row=dao.insert_classSubject(emp);
if(row==1){
	response.sendRedirect("success.jsp");
}
else if(row==21)
{
	response.sendRedirect("duplicateClassSubject.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>