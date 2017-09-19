/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author SURESH
 */
@WebServlet(name = "deleteit", urlPatterns = {"/deleteit"})
public class deleteit extends HttpServlet {

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
            String quizname = (String) request.getParameter("quizname");
            String rr = (String) request.getParameter("val");
        if(quizname.equals("cpp"))
            quizname="c++";
            Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");
            Statement s = conn.createStatement();
            String q = "select ques from question where email='" + rr + "' and quiztype='" + quizname + "';";
            ResultSet rs = s.executeQuery(q);
            int k=0;
                java.util.ArrayList<String> al=new java.util.ArrayList<String>();
            while (rs.next()) {

              k=1;

                String ques=rs.getString("ques");
         al.add(ques);





            }
            if(k==0)
            {
               response.sendRedirect("welcometeacher.jsp?msg=!!Select a quiz type in which Questions are available!!");
            }
            else
            {
                  helper.beans.setAl(al);
     helper.beans.setnn(0);
     helper.beans.setnnn(1);
     helper.beans.setN(0);
     out.println(al);
     out.println("<br>"+quizname);
     out.println("<br>"+rr);
   response.sendRedirect("deleteotherlist.jsp");
            }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deleteit</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deleteit at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */
        } catch (Exception ee) {
            out.println("Sorry " + ee);
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
