<%-- 
    Document   : sMath
    Created on : Apr 14, 2019, 1:19:08 AM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tests</title>
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

</style>
</head>
<body>

<div class="sidenav">
    
    <br><br><br>
    <a href="google.com">
        <img class="center" src="testimony.png" height=220 width=100></a>
<br><br>
<a href="studentDashboard.jsp">About</a><br>
<a href="asTests.jsp" class="active">Tests</a><br>
<a href="sResults.jsp">Results</a><br>
</div>
    
    <div class="main">
        <a href="sCalculation.jsp">
            <img src="calculation_img.jpg" height="250" width="800" border="2"></a>
        
        <a href="sFormula.jsp">
            <img src="formula_img.jpg" height="250" width="800" border="2"></a>
        
    </div>
    </body>
</html>
