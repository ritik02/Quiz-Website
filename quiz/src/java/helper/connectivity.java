/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author SURESH
 */
public class connectivity {

    static Connection conn = null;

    public static void start() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/quiz", "root", "ritik@02mysql");
            System.out.println("Connection Established");
        } catch (Exception ee) {
            System.out.println("Connection error! try again");
        }
    }

    static public int insert(String name, String password, String email, String number) {
        int status = 0;
        try {
            String query = "insert into student values(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, number);
            status = ps.executeUpdate();
            HttpServletResponse response = null;
            if (status == 1) {
                response.sendRedirect("welcomestudent.jsp");
                return status;
            }

        } catch (Exception e) {
            return status;
        }
        return status;
    }
     static public int insertt(String name, String password, String email, String number,String subject) {
        int status = 0;
        try {
            String query = "insert into teacher values(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, number);
            ps.setString(5,subject);
            status = ps.executeUpdate();
            HttpServletResponse response = null;
            if (status == 1) {
                response.sendRedirect("welcometeacher.jsp");
                return status;
            }

        } catch (Exception e) {
            return status;
        }
        return status;
    }
}
