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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Devna
 */
public class schangePassword extends HttpServlet {

   public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
   response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String opsw=request.getParameter("opsw");
        String npsw=request.getParameter("npsw");
        
        HttpSession session=request.getSession(false);  
        String name=(String)session.getAttribute("name"); 
        
        loginDAO l = new loginDAO();
        try {
           String result = l.changePassword1(name, opsw, npsw);
           if(result.equals("data inserted successfully"))
           response.sendRedirect("sInfo.jsp");
           else
               response.sendRedirect("schangePassword.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(schangePassword.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(schangePassword.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
    }
