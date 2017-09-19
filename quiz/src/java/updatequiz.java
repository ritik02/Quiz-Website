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
/**
 *
 * @author SURESH
 */
public class updatequiz extends HttpServlet {

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
             String quizname = (String) (request.getAttribute("quizname"));

            Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");

Statement st=conn.createStatement();
String q="select count(ques) from question where quiztype='"+quizname+"' and email='"+helper.beans.getEmail()+"';";
ResultSet rs=st.executeQuery(q);
if(rs.next()==true)
{
    if(rs.getInt(1)==0)
    {
        response.sendRedirect("welcometeacher.jsp?msg=!!Select a quiz type in which Questions are available!!");
    }
    else
    {
      String qq ="select * from  question where quiztype='"+quizname+"' and email='"+helper.beans.getEmail()+"';";
      Statement stt=conn.createStatement();
     ResultSet rss =stt.executeQuery(qq);
     ArrayList<String> al=new ArrayList<String>();
     while(rss.next())
     {
         String ques=rss.getString("ques");
         String opt1=rss.getString("opt1");
         String opt2=rss.getString("opt2");
         String opt3=rss.getString("opt3");
         String opt4=rss.getString("opt4");
         String rightans=rss.getString("rightans");

         al.add(ques);
al.add(opt1);
al.add(opt2);
al.add(opt3);
al.add(opt4);
al.add(rightans);

     }
     helper.beans.setAl(al);
     helper.beans.setnn(0);
     helper.beans.setnnn(6);
     helper.beans.setN(0);
    response.sendRedirect("update.jsp");
    }

}
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deletequiz</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deletequiz at " + request.getContextPath () + "</h1>");
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
