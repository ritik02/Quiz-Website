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
import java.util.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author SURESH
 */
public class deleteother extends HttpServlet {
   
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
              Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/quiz", "root", "ritik@02mysql");
           Statement st=conn.createStatement();
         String q1="Select email from teacher where email!='"+helper.beans.getEmail()+"';";

        ResultSet r=st.executeQuery(q1);
        ArrayList<String> al=new ArrayList<String>();
        int k=0;
        while(r.next())
        {k=1;
            al.add(r.getString("email"));

        }

        if(k==0)
        {
           response.sendRedirect("welcometeacher.jsp?msg=!!No Other Teacher is Present!!") ;

        }
        else
        {
           helper.beans.setAl(al);
           response.sendRedirect("otherteacher.jsp");


        }



            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deleteother</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deleteother at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } catch(Exception e)
        {
out.println("sorry  "+e);
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
