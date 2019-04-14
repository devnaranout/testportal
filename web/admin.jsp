<%-- 
    Document   : admin
    Created on : Apr 9, 2019, 10:26:34 AM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <style>
            
body {
background-size:cover;
}

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
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.center {
text-align: center;
}
        
input[type=email], input[type=password] {
    width: 50%;
    padding: 15px;
    margin: 5px 0 22px 0;
    border: none;
    background: #f1f1f1;
}
input[type=email]:focus, input[type=password]:focus {
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
/*a:link, a:visited {
    background-color: #f44336;
    color: white;
    padding: 12px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
    a:hover, a:active {
    background-color:red;
} 
*/
        </style>
    </head>
<body background="480421.jpg">

    <ul>
    <li><font face="Comic Sans MS" size="6"><b><i><u>Test Portal</u></i></b></font></li>
  <li style="float:right"><a class="active" href="admin.jsp">Admin</a></li>
  <li style="float:right" class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Student</a>
    <div class="dropdown-content">
      <a href="studentLogin.jsp">Login</a>
      <a href="studentRegister.jsp">Register</a>
    </div>
  </li>
  <li style="float:right"><a href="homepage.jsp">Home</a></li>
</ul>
    <hr><br><br>
    
    <img src="images.jpg" height="150" width="150">
    <div class="bg-img center">
   <form action="admin" method="post" class="container">
       <br><br>

      <input type="email" placeholder="Enter your email" name="email" title="enter correct email" required>

    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" class="btn">Login</button>
  </form>
</div>
    </body>
</html>
