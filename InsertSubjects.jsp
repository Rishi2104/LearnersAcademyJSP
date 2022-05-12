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
String subject=request.getParameter("subject");
String fl=subject.substring(0,1);
String last=subject.substring(1, subject.length());
fl=fl.toUpperCase();
subject=fl+last;
Get_Set_Data emp=new Get_Set_Data();
emp.setSubject(subject);
Operations_CRUD dao=new Operations_CRUD();
int row=dao.insert_subjects(emp);
if(row==1){
	response.sendRedirect("success.jsp");
}
else if(row==21)
{
	response.sendRedirect("duplicateSubject.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>