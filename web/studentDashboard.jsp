<%-- 
    Document   : studentDashboard
    Created on : Apr 12, 2019, 2:26:12 PM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Dashboard</title>
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
  
  .container {
  position: relative;
  text-align: center;
  color: white;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
</head>
<body>

<div class="sidenav">
    
    <br><br><br>
    <a href="sInfo.jsp">
        <img class="center" src="testimony.png" height=220 width=100></a>
<br><br>
<a href="studentDashboard.jsp" class="active">About</a><br>
<a href="sTests.jsp">Tests</a><br>
<a href="sResult.jsp">Result</a><br>
<a href="homepage.jsp">Log Out</a><br>

</div>
    <font color="white" face="Comic Sans MS" size="4">
    <h1 style="background-color: black;text-align: center;">
        Welcome <%=request.getAttribute("name")%>
    </h1></font>
    <% String name=(String)request.getAttribute("name");
    session.setAttribute("name", name);%>
    
    <br><br>
    <div class="main">
        
        
        <div class="container">
  <img src="cartoon.jpg" width="800" height="400">
  <div class="centered"><font face="Comic Sans MS" color="black" size="7"><p style="text-align: center; text-shadow: 3px 2px gray;"><u>Knowledge is Power. Test It.</u></p></font></b></font></div>
</div>
        <hr>
        <br><br>
        
        <pre style="background-color: gray;">
        <font face="Arial Rounded MT" color="white" size=5 ><b>                     2 things you'll love about Test Portal</b></font>
    </pre>
    <br>
    <pre><font face="Arial Rounded MT" size=4 color="grey">
     It is the best mode to track students'                                       It is terribly helpful for the folks 
   capabilities and test them, propel them                                within the educational development
    in high levels to act their best in the                                             of children to enhance their
                         next attack.                                                                                  instructional skill.
</font> 

    </pre>
    
    
    <pre style="background-color: gray;">
        <font face="Arial Rounded MT" color="white" size=5 ><b>                  Once the race begin it's more difficult and
                              there is never that much time for testing.</b></font>
    </pre>
    </div>
    
    
    
    </body>
</html>
