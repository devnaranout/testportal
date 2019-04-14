/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Devna
 */
public class aaFormula extends HttpServlet {

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
           String result = l.addQues3(ques, op1, op2, op3, op4, corrAns);
           if(result.equals("data inserted successfully"))
           {
               
               response.sendRedirect("aaFormula.jsp");
           }
           else
           {
               response.sendRedirect("aaFormula.jsp");
           }
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(aaFormula.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(aaFormula.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}