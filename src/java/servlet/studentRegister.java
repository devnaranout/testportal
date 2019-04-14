
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class studentRegister extends HttpServlet {

   public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String name1=request.getParameter("name");
        String email=request.getParameter("email");
        String mobNo=request.getParameter("mobNo");
        String psw=request.getParameter("psw");
        
       
        loginDAO l = new loginDAO();
        try {
           String result = l.addStudent(name1, email, mobNo, psw);
           if(result.equals("data inserted successfully"))
           {
               
               Connection con=null;
        PreparedStatement pr=null;
            String myUrl="jdbc:mysql://localhost/onlinetestportal";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(myUrl,"root","");
            
            
           
            String query="select * from tbstudent where email=?";
            pr=con.prepareStatement(query);
            pr.setString(1,email);
            
            ResultSet rs;
            rs=pr.executeQuery();
            String name=" ";
            if(rs.next())
            {
                name=rs.getString("name");
            }
            
            HttpSession session=request.getSession();  
        session.setAttribute("name",name); 
        
               request.setAttribute("name", name);
               request.getRequestDispatcher("studentDashboard.jsp").forward(request, response);
           }
           else
           {
               response.sendRedirect("studentRegister.jsp");
           }
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(admin.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(admin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}