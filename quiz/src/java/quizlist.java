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
import javax.servlet.RequestDispatcher;
import java.util.*;
/**
 *
 * @author SURESH
 */
@WebServlet(name="quizlist", urlPatterns={"/quizlist"})
public class quizlist extends HttpServlet {
   int i=helper.beans.getnn();
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

             String quizname = (String) (request.getAttribute("quizname"));helper.beans.setQuizname(quizname);

            Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");

Statement st=conn.createStatement();
String q="select ques,opt1,opt2,opt3,opt4,rightans from question where quiztype='"+quizname+"';";
ResultSet rs=st.executeQuery(q);
ArrayList<String> al=new ArrayList<String>();
while(rs.next())
{

    String ques=rs.getString("ques");
    String opt1=rs.getString("opt1");
    String opt2=rs.getString("opt2");
    String opt3=rs.getString("opt3");
    String opt4=rs.getString("opt4");
    String rightans=rs.getString("rightans");

   
al.add(ques);
al.add(opt1);
al.add(opt2);
al.add(opt3);
al.add(opt4);
al.add(rightans);



}

 helper.beans.setAl(al);helper.beans.sety(al.get(5));
 helper.beans.setnn(0);
 int i=6;
 helper.beans.setnnn(i
         );helper.beans.setscore(0);
if(al.size()>0)
response.sendRedirect("takequiz.jsp");
else response.sendRedirect("welcomestudent.jsp?msg=Sorry Select a quiz in which Questions are Available");
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");Sorry Select a quiz in which Questions are Available
            out.println("<title>Servlet quizlist</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet quizlist at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        }catch(Exception e)
        {
response.sendRedirect("welcomestudent.jsp?msg=Sorry Select a quiz in which Questions are Available");}
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
