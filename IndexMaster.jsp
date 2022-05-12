<%@page import="com_pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>    
<body>    
    <center> <h1> Learner's Academy Admin Login</h1> </center>   
    <form action = login.jsp>  
        <div class="container">   
            <center><label>Username : </label>   
            <input type="text" placeholder="Enter Username" name="username" required>
            <br>  
            <label>Password : </label>   
            <input type="password" placeholder="Enter Password" name="password" required>  
            <br><br>
                                  <button type="submit">Login</button>   </center>
        </div>   
    </form>
    
</body>
</html>