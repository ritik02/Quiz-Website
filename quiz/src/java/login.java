/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SURESH
 */
public class login extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String email = (String) (request.getAttribute("email"));
            String password = (String) (request.getAttribute("password"));
            String type = (String) (request.getAttribute("type"));

            Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");
            Statement s = conn.createStatement();
            String q;

            q = "Select password from " + type + " where email='" + email + "';";

            ResultSet r = s.executeQuery(q);
            Statement ss = conn.createStatement();
            String qq = "Select name from " + type + " where email='" + email + "';";
            ResultSet rr = ss.executeQuery(qq);
            int k = 0;
            String sss="";
            while (r.next()) {
                 sss = r.getString("password");//out.println(sss);
                if (sss.equals(password)) {
                    k = 1;
                    break;
                }

            }
            if (k == 0) {
              //out.println(sss+" hello ");
              response.sendRedirect("login.jsp?msg=Invalid User");
            } else {
                String t = "";
                helper.beans.setEmail(email);
                while (rr.next()) {
                    t = rr.getString("name");
                     helper.beans.setName(rr.getString("name")); helper.beans.setqwe(type);
                }
                HttpSession session = request.getSession();
                session.setAttribute("email", helper.beans.getEmail());
                response.sendRedirect("welcome" + type + ".jsp?msg=&err=");
            }

            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */

        } catch (Exception e) {
            out.println("sorry " + ":" + e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
