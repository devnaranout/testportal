
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


public class aaCalculation extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String ques=request.getParameter("ques");
        String op1=request.getParameter("op1");
        String op2=request.getParameter("op2");
        String op3=request.getParameter("op3");
        String op4=request.getParameter("op4");
        String corrAns=request.getParameter("corrAns");
        
       
        loginDAO l = new loginDAO();
        try {
           String result = l.addQues(ques, op1, op2, op3, op4, corrAns);
           if(result.equals("data inserted successfully"))
           {
               
               response.sendRedirect("aaCalculation.jsp");
           }
           else
           {
               response.sendRedirect("aaCalculation.jsp");
           }
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(aaCalculation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(aaCalculation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}