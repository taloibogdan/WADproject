/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Managers.ConstManager;
import Managers.DBhandler;
import Models.Edit;
import Models.Photo;
import Models.User;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Exodus
 */
@MultipartConfig
public class EditController extends HttpServlet {

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
        int pid = Integer.parseInt(request.getParameter("photoid"));
        Photo original = DBhandler.getInstance().getPhoto(pid);
        String comment = request.getParameter("description");
        Part filePart = request.getPart("file");
        System.out.println(comment+" "+original.getName());
        if(filePart == null)
            request.getRequestDispatcher("uploadEdit.jsp").forward(request, response);
        OutputStream out = null;
        InputStream filecontent = null;
        try {
            String path = "photos" + File.separator + original.getName() +
                    "_ed_" + ConstManager.Rand.nextInt(100000000)+".jpg";
            out = new FileOutputStream(new File(ConstManager.PathToWeb
                    + File.separator + path));
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
            User u = (User)request.getSession().getAttribute("user");
            Edit e = new Edit(path, comment, u, original);
            DBhandler.getInstance().AddEdit(e);
            request.getSession().setAttribute("user", DBhandler.getInstance().getUser(u.getUsername()));
            
        } catch (FileNotFoundException fne) {
            System.out.println(fne.getMessage());
        } finally {
            if (out != null) { out.close(); }
            if (filecontent != null) { filecontent.close(); }
        }
        request.getRequestDispatcher("PostController?postid="+pid).forward(request, response);
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
