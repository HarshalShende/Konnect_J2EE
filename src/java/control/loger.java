/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Saroj
 */
@WebServlet(name = "loger", urlPatterns = {"/loger"})
public class loger extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            String un = request.getParameter("un");
            String ps = request.getParameter("ps");
            ResultSet rs = DB.search("SELECT `un`, `ps` FROM `us` WHERE `un`= '" + un + "' AND `ps`='" + ps + "'");

            if (rs.next()) {
                response.sendRedirect("logg.jsp");
            } else {
                response.sendError(404);
            }
        } catch (Exception ex) {
            Logger.getLogger(loger.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
