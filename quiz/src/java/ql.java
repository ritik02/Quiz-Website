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
import helper.*;
import java.sql.*;
import javax.servlet.*;
/**
 *
 * @author SURESH
 */
public class ql extends HttpServlet {

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
    String c="",cpp="",java="",sql="",datastructure="";

             Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");
            Statement s = conn.createStatement();
            String q="select count(ques) from question where quiztype='java' and email='"+helper.beans.getEmail()+"';";
            ResultSet rs=s.executeQuery(q);
            if(rs.next()==true)
            {
                java=Integer.toString(rs.getInt(1));
            }
            q="select count(ques) from question where quiztype='c' and email='"+helper.beans.getEmail()+"';";
           rs=s.executeQuery(q);
            if(rs.next()==true)
            {
                c=Integer.toString(rs.getInt(1));
            }
           q="select count(ques) from question where quiztype='c++' and email='"+helper.beans.getEmail()+"';";
          rs=s.executeQuery(q);
            if(rs.next()==true)
            {
                cpp=Integer.toString(rs.getInt(1));
            }
q="select count(ques) from question where quiztype='sql' and email='"+helper.beans.getEmail()+"';";
             rs=s.executeQuery(q);
            if(rs.next()==true)
            {
               sql=Integer.toString(rs.getInt(1));
            }
             q="select count(ques) from question where quiztype='datastructure' and email='"+helper.beans.getEmail()+"';";
          rs=s.executeQuery(q);
            if(rs.next()==true)
            {
                datastructure=Integer.toString(rs.getInt(1));
            }

            RequestDispatcher rd=request.getRequestDispatcher("ql.jsp");
            request.setAttribute("java", java);
               request.setAttribute("c", c);
                  request.setAttribute("cpp", cpp);
                     request.setAttribute("sql", sql);
                        request.setAttribute("datastructure",datastructure );
            rd.forward(request, response);
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet delete</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet delete at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        }
        catch(Exception e)
        {
out.println("Sorry  "+e);
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
