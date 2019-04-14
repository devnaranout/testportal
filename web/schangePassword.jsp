<%-- 
    Document   : schangePassword
    Created on : Apr 15, 2019, 1:33:12 AM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    <style>
body {
  font-family: "Lato", sans-serif;
  background-size:cover;
}


.sidenav {
  height: 100%;
  width: 500px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-align: center;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav a.active{
    color: #f1f1f1;
}
.main {
  margin-left: 500px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.center{
display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
  
text-align: center;
  }


        
input[type=text], input[type=password] {
    width: 50%;
    padding: 15px;
    margin: 5px 0 22px 0;
    border: none;
    background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}
/* Set a style for the submit button */
.btn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    border: none;
    cursor: pointer;
    width: 50%;
    opacity: 0.9;
}
.btn:hover {
    opacity: 1;
}
</style>
</head>
<body background="blue.jpg">

<div class="sidenav">
    
    <br><br><br>
    <a href="sInfo.jsp">
        <img class="center" src="testimony.png" height=220 width=100></a>
<br><br>
<a href="studentDashboard.jsp">About</a><br>
<a href="sTests.jsp">Tests</a><br>
<a href="sResult.jsp">Result</a><br>
<a href="homepage.jsp">Log Out</a><br>
</div>
    
    <div class="main">
        <br><br>
        
        <div class="bg-img center">
   <form action="schangePassword" method="post" class="container">
       <br><br>

      <input type="password" placeholder="Enter old password" name="opsw" required>
      
      <input type="password" placeholder="Enter new password" name="npsw" required>

    <button type="submit" class="btn">Change</button>
  </form>
</div>
        
    </div>
    </body>
</html>
