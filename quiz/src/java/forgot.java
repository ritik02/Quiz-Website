/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author SURESH
 */
public class forgot extends HttpServlet {
   
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
             String name=request.getParameter("name");
            String email=request.getParameter("email");
            String number=request.getParameter("number");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/quiz", "root", "ritik@02mysql");
           Statement st=conn.createStatement();
         String q1="Select password from student where email='"+email+"' AND name='"+name+"' AND number='"+number+"';";

        ResultSet r=st.executeQuery(q1);
         if(r.next())
         {
       response.sendRedirect("login.jsp?msg=Student...Your Password is "+r.getString("password"));

         }
         else
         {
            q1="Select password from teacher where email='"+email+"' AND name='"+name+"' AND number='"+number+"';";
            r=st.executeQuery(q1);
            if(r.next())
            {
                response.sendRedirect("login.jsp?msg=Teacher...Your Password is "+r.getString("password"));
            }
            else response.sendRedirect("login.jsp?msg=Password Not Found");
         }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet forgot</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet forgot at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        }
        catch(Exception e)
        {

        }finally {
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
