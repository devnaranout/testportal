<%-- 
    Document   : homepage
    Created on : Apr 8, 2019, 11:24:01 PM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Portal</title>
        <style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;
}

li {
  float: left;
}

li a, .dropbtn  {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active), .dropdown:hover .dropbtn {
  background-color: #ddd;
}

li a.active {
  color: white;
  background-color: #4CAF50;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}

img {
  max-width: 100%;
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

<ul>
    <li><font face="Comic Sans MS" size="6"><b><i><u>Test Portal</u></i></b></font></li>
  <li style="float:right"><a href="admin.jsp">Admin</a></li>
  <li style="float:right" class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Student</a>
    <div class="dropdown-content">
      <a href="studentLogin.jsp">Login</a>
      <a href="studentRegister.jsp">Register</a>
    </div>
  </li>
  <li style="float:right"><a class="active" href="homepage.jsp">Home</a></li>
</ul>
    <div class="container">
  <img src="ew0V5jf.jpg" width="1500" height="600">
  <div class="centered"><pre><font face="Comic Sans MS" size="6"><b>Education opens minds. Technology connects them.<br>Test Portal management software brings you the best of both, all in one place.<b></font></pre></b></font></div>
</div>
</body>
</html>
