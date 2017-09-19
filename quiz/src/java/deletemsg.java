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
@WebServlet(name="deletemsg", urlPatterns={"/deletemsg"})
public class deletemsg extends HttpServlet {
   
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

             String msg = (String) (request.getParameter("msg"));

            Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");
String q="delete from message where msg='"+msg+"' and tomsg='"+helper.beans.getEmail()+"';";
Statement t=conn.createStatement();
t.executeUpdate(q);
out.println(helper.beans.getAl1());
if(helper.beans.getAl1().contains(msg))
{
    out.println(msg);
    int j=helper.beans.getAl1().indexOf(msg);
    helper.beans.getAl1().remove(j);
    helper.beans.setAl1(helper.beans.getAl1());
     helper.beans.getAl().remove(j);

    helper.beans.setAl(helper.beans.getAl());

}

response.sendRedirect("viewmessage.jsp");

            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deletemsg</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deletemsg at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        }
        catch(Exception e)
        {
            out.println("Sorry "+e);
        }
                    finally {
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
