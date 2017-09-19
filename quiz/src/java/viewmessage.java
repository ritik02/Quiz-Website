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
public class viewmessage extends HttpServlet {
   
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
            Class.forName(getServletContext().getInitParameter("connect")).newInstance();
            Connection conn = (Connection) DriverManager.getConnection(getServletContext().getInitParameter("path"), "root", "ritik@02mysql");
            System.out.println("Connection Established");
            Statement s = conn.createStatement();
            String q="select count(msg) from message where tomsg='"+helper.beans.getEmail()+"';";
            ResultSet rs=s.executeQuery(q);
            int i;
            if(rs.next())
            {
               i=rs.getInt(1);
               if(i==0)
                   response.sendRedirect("welcometeacher.jsp?msg=!!Sorry You Dont Have Any Messages!!");
               else
               { helper.beans.setnn(i);
              String qq="select msg,frommsg from message where tomsg='"+helper.beans.getEmail()+"' order by frommsg;";
              java.util.ArrayList<String> al1=new java.util.ArrayList<String>();
               java.util.ArrayList<String> al2=new java.util.ArrayList<String>();
               Statement ss=conn.createStatement();
              ResultSet rss=ss.executeQuery(qq);
              while(rss.next())
              {
                  al1.add(rss.getString("frommsg"));
                  al2.add(rss.getString("msg"));
              }
              helper.beans.setAl(al1);
              helper.beans.setAl1(al2);
              response.sendRedirect("viewmessage.jsp");
               }

            }





                /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet viewmessage</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet viewmessage at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        }
        catch(Exception e)
        {
            out.println("sorry "+e);
            
            
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
