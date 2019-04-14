
package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginDAO {
    
    public String checkInfo(String email,String psw) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
            
           
            String query="select * from tbstudent where email=? and password=?";
            pr=con.prepareStatement(query);
            pr.setString(1,email);
            pr.setString(2,psw);
            
            ResultSet rs;
            rs=pr.executeQuery();
            if(rs.next())
            {
                return "you are logged in";
            }
           
                return "incorrect data";

            
    }
    
    
    public String checkInfo1(String email,String psw) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
            
           
            String query="select * from tbadmin where email=? and password=?";
            pr=con.prepareStatement(query);
            pr.setString(1,email);
            pr.setString(2,psw);
            
            ResultSet rs;
            rs=pr.executeQuery();
            if(rs.next())
            {
                return "you are logged in";
            }
           
                return "incorrect data";

            
    }
    
    public String addStudent(String name,String email,String mobNo,String psw) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            
            String query="insert into tbstudent(name,email,mobNo,password) values(?,?,?,?)";
            pr=con.prepareStatement(query);
            pr.setString(1,name);
            pr.setString(2,email);
            pr.setString(3,mobNo);
            pr.setString(4,psw);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    public String addQues(String ques,String op1,String op2,String op3, String op4, String corrAns) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            
            String query="insert into tbcalculation(ques,op1,op2,op3,op4,corrAns) values(?,?,?,?,?,?)";
            pr=con.prepareStatement(query);
            pr.setString(1,ques);
            pr.setString(2,op1);
            pr.setString(3,op2);
            pr.setString(4,op3);
            pr.setString(5,op4);
            pr.setString(6,corrAns);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    
    public String addQues1(String ques,String op1,String op2,String op3, String op4, String corrAns) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            
            String query="insert into tbgrammar(ques,op1,op2,op3,op4,corrAns) values(?,?,?,?,?,?)";
            pr=con.prepareStatement(query);
            pr.setString(1,ques);
            pr.setString(2,op1);
            pr.setString(3,op2);
            pr.setString(4,op3);
            pr.setString(5,op4);
            pr.setString(6,corrAns);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    
    
    public String addQues2(String ques,String op1,String op2,String op3, String op4, String corrAns) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            
            String query="insert into tbspelling(ques,op1,op2,op3,op4,corrAns) values(?,?,?,?,?,?)";
            pr=con.prepareStatement(query);
            pr.setString(1,ques);
            pr.setString(2,op1);
            pr.setString(3,op2);
            pr.setString(4,op3);
            pr.setString(5,op4);
            pr.setString(6,corrAns);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    public String addQues3(String ques,String op1,String op2,String op3, String op4, String corrAns) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            
            String query="insert into tbformula(ques,op1,op2,op3,op4,corrAns) values(?,?,?,?,?,?)";
            pr=con.prepareStatement(query);
            pr.setString(1,ques);
            pr.setString(2,op1);
            pr.setString(3,op2);
            pr.setString(4,op3);
            pr.setString(5,op4);
            pr.setString(6,corrAns);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    
    
    public String addQues4(String ques,String op1,String op2,String op3, String op4, String corrAns) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            
            String query="insert into tblogical(ques,op1,op2,op3,op4,corrAns) values(?,?,?,?,?,?)";
            pr=con.prepareStatement(query);
            pr.setString(1,ques);
            pr.setString(2,op1);
            pr.setString(3,op2);
            pr.setString(4,op3);
            pr.setString(5,op4);
            pr.setString(6,corrAns);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    public String addQues5(String ques,String op1,String op2,String op3, String op4, String corrAns) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            
            String query="insert into tbverbal(ques,op1,op2,op3,op4,corrAns) values(?,?,?,?,?,?)";
            pr=con.prepareStatement(query);
            pr.setString(1,ques);
            pr.setString(2,op1);
            pr.setString(3,op2);
            pr.setString(4,op3);
            pr.setString(5,op4);
            pr.setString(6,corrAns);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    
    public String changePassword(String name,String opsw,String npsw) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            String query="update tbadmin SET password = ? where name=? and password=?";
            pr=con.prepareStatement(query);
            pr.setString(1,npsw);
            pr.setString(2,name);
            pr.setString(3,opsw);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
    
    
    
    public String changePassword1(String name,String opsw,String npsw) throws ClassNotFoundException, SQLException
    {
        Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
           
            String query="update tbstudent SET password = ? where name=? and password=?";
            pr=con.prepareStatement(query);
            pr.setString(1,npsw);
            pr.setString(2,name);
            pr.setString(3,opsw);
            boolean a=pr.execute();
            if(!a)
            {
                return "data inserted successfully";
            }
            return "data not inserted";
    }
}
