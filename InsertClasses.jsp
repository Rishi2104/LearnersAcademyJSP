<%@ page import="com_pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Classes Data</title>
</head>
<body>
<%
int cid=Integer.parseInt(request.getParameter("cid"));
String cname=request.getParameter("cname");
Get_Set_Data emp=new Get_Set_Data();
emp.setCid(cid);
emp.setCname(cname);
Operations_CRUD dao=new Operations_CRUD();
int row=dao.insert_classes(emp);
if(row==1){
	response.sendRedirect("success.jsp");
}
else if(row==21)
{
	response.sendRedirect("duplicateClasses.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>