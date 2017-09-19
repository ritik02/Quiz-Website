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
/**
 *
 * @author SURESH
 */
public class makequiz extends HttpServlet {
 
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
            helper.beans.setN(helper.beans.getN()+1);

           if(helper.beans.getN()<=5)
           {  String ques = (String) (request.getAttribute("ques"));
            String opt1 = (String) (request.getAttribute("opt1"));
            String opt2 = (String) (request.getAttribute("opt2"));
String opt3 = (String) (request.getAttribute("opt3"));
String opt4 = (String) (request.getAttribute("opt4"));
String rightans = (String) (request.getAttribute("rightans"));

            Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");
            Statement s = conn.createStatement();
            String q;
q="insert into question (quiztype,email,ques,opt1,opt2,opt3,opt4,rightans) values('"+helper.beans.getQuizname()+"',(select email from teacher where email= '"+helper.beans.getEmail()+"'),'"+ques+"','"+opt1+"','"+opt2+"','"+opt3+"','"+opt4+"','"+rightans+"')";
s.executeUpdate(q);
          response.sendRedirect("makequiz.jsp");

            
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet makequiz</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet makequiz at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
                 */}
           else{
               response.sendRedirect("welcometeacher.jsp?msg=!!Questions Succesfully Inserted!!");
           }
        }

        catch(Exception e)
        {
            out.println("sorry" +e.getMessage());
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
