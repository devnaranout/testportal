<%-- 
    Document   : aaReasoning
    Created on : Apr 15, 2019, 12:20:28 AM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reasoning</title>
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
    <a href="aInfo.jsp">
        <img class="center" src="testimony.png" height=220 width=100></a>
<br><br>
<a href="adminDashboard.jsp">About</a><br>
<a href="aTests.jsp" class="active">Tests</a><br>
<a href="aAddTest.jsp">Add Test</a><br>
<a href="aResults.jsp">Results</a><br>
<a href="homepage.jsp">Log Out</a><br>
</div>
    
    <div class="main">
        <a href="aaLogical.jsp">
            <img src="logical_img.jpg" height="250" width="800" border="2"></a>
        
        <a href="aaVerbal.jsp">
            <img src="verbal_img.jpg" height="250" width="800" border="2"></a>
        
    </div>
    </body>
</html>
