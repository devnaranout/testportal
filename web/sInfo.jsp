<%-- 
    Document   : sInfo
    Created on : Apr 15, 2019, 1:30:29 AM
    Author     : Devna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>



<% String name= (String)session.getAttribute("name"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Info</title>
    <style>
body {
  font-family: "Lato", sans-serif;
}

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
  width: 30%;
  }

  table, td, th {
  border: 4px solid black;
}

table {
  border-collapse: collapse;
  width: 70%;
}

th {
  height: 50px;
}

th, td {
  padding: 20px;
}
</style>
</head>
<body>

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
        <br><br><br>
        <table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>

        
        <%
try {
Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
String query = "SELECT * FROM tbstudent where name=?";

pr=con.prepareStatement(query);
            pr.setString(1,name);
            
            ResultSet rs;
            rs=pr.executeQuery();
while (rs.next()) {
%>


<tr>
<td bgcolor="darkgrey"><b>Name :</b></td>
<td bgcolor="gainsboro"><%=rs.getString("name")%></td>  
</tr>
<tr>
<td bgcolor="darkgrey"><b>Email :</b></td>
<td bgcolor="gainsboro"><%=rs.getString("email")%></td>   
</tr>
<tr>
<td bgcolor="darkgrey"><b>Mobile no :</b></td>
<td bgcolor="gainsboro"><%=rs.getString("mobNo")%></td>   
</tr>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br>

<div class="center">
    <a href="schangePassword.jsp">
        <button type="button" class="btn">Change Password</button></a>
</div>
    </div>
    </body>
</html>
