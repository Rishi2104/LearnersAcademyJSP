<%@page import="com_pojo.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Table</title>
</head>
<body>
<center><h1>Class Details</h1></center>
<form action="IndexClasses.jsp">
<input type="button" value="Add new class">
</form>
<table border="1">
<% Operations_CRUD dao=new  Operations_CRUD();
List<Get_Set_Data> em=(List<Get_Set_Data>)dao.displayC();
%>
<tr><th>Class Id</th><th>Class Name</th><th>Edit Name</th><th>Delete person</th></tr>
<%for(Get_Set_Data e:em){ %>
<tr><td><%= e.getCid() %></td><td><%=e.getCname() %></td><td><a href="edit.jsp">Edit Name</a></td><td><a href="delete.jsp">Delete Person</a></td><td><a href="SubjectsTeachers.jsp">Edit Name</a></td><td><a href="ClassReport.jsp">Edit Name</a></td></tr>
<%} %>
</table>
<br>

</body>
</html>
