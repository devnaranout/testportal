<%-- 
    Document   : aaFormula
    Created on : Apr 15, 2019, 12:15:23 AM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formula</title>
    <style>
body {
  font-family: "Lato", sans-serif;
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
  }
input[type=text]{
    width: 90%;
    padding: 15px;
    margin: 5px 0 22px 0;
    border: none;
    background: #f1f1f1;
}
input[type=text]:focus {
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
    width: 70%;
    opacity: 0.9;
}
.btn:hover {
    opacity: 1;
}
.center {
text-align: center;
}
</style>
</head>
<body>

<div class="sidenav">
    
    <br><br><br>
    <a href="aInfo.jsp">
        <img class="center" src="testimony.png" height=220 width=100></a>
<br><br>
<a href="adminDashboard.jsp">About</a><br>
<a href="aTests.jsp">Tests</a><br>
<a href="aAddTest.jsp" class="active">Add Test</a><br>
<a href="aResults.jsp">Results</a><br>
<a href="homepage.jsp">Log Out</a><br>
</div>
    
    <div class="main">
        
        
   <form action="aaFormula" method="post" class="container" onSubmit="myFunction()">
       <br><br>

       <input type="text" placeholder="Enter the question" name="ques" required>

    <input type="text" placeholder="Enter first option" name="op1" required>
    
    <input type="text" placeholder="Enter second option" name="op2" required>
    
    <input type="text" placeholder="Enter third option" name="op3" required>
    
    <input type="text" placeholder="Enter fourth option" name="op4" required>
    
    <input type="text" placeholder="Enter correct answer" name="corrAns" required><br>
<div class="center">
    <button type="submit" class="btn">Add Question</button>
</div>
  </form>
        
        <script>
function myFunction() {
  alert("The question is now added");
}
</script>
    </div>
    </body>
</html>
