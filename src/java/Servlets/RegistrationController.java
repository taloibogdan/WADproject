/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Managers.DBhandler;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
public class RegistrationController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("firstName");
        String user = request.getParameter("username");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String country = request.getParameter("country");
        
        request.setAttribute("name", name);
        request.setAttribute("country", country);
        request.setAttribute("user", user);
        request.setAttribute("email", email);
        
        DBhandler db = DBhandler.getInstance();
        
        boolean back = false;
        if(db.isUserInDB(user))
        {
            request.setAttribute("unameError", "The username already exists, please choose another one.");
            back = true;
        }
        if(db.isEmailInDB(email))
        {
            request.setAttribute("emailError", "There is an account already associated to this email.");
            back = true;
        }
        if(back)
        {
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        User u = new User(name, user, pass, email, country);
        if(!db.AddUser(u))
        {
            request.setAttribute("dbError", "Database Error");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;    
        }
        request.getSession().setAttribute("user", u);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
