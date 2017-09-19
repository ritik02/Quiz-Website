<%-- 
    Document   : login
    Created on : Jun 23, 2015, 4:58:54 PM
    Author     : SURESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <style>
            td:hover{
               transform:scale(1.1);
               color:red;
               


}

            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  background="water.jpg" style="background-size:1400px;" >
    
        <%!String a = "", e = "";%>
        <%String msg = request.getParameter("msg");
                    if (msg != null) {
                        a = msg;

                    }
                    String err = request.getParameter("err");
                    if (err != null) {

                        e = err;
                    }
        %>
        <%!String erremail = "", errpass = "", errtype = "";%>
        <%
                    String email = request.getParameter("email");
                    String password = request.getParameter("password");
                    String type = request.getParameter("type");
                    if (email != null && password != null && type != null) {
                        erremail = "";
                        errpass = "";
                        errtype = "";

                        if (email.length() < 1 || password.length() < 1) {
                            if (email.length() < 1) {
                                erremail = "enter email again";
                            }
                            if (password.length() < 1) {
                                errpass = "enter password again";
                            }
                            if (type.length() < 1) {
                                errtype = "select a type of user";
                            }

                        } else {
                            RequestDispatcher rd = request.getRequestDispatcher("logmein");
                            request.setAttribute("email", email);
                            request.setAttribute("password", password);
                            request.setAttribute("type", type);
                            rd.forward(request, response);
                        }

                    }



        %>
        
        <h1 align="center" ><font face="algerian" size="25"><b><u>QUIZPRO.COM</b></u></font></h1>
    <h2 align="center"><b><font face="constantia" size="6">Login Page </font></b><font color="red"><%= a%><%= e%></font></h2>
    <table align="center" width="600" height="200">
        <font face="constantia" size="5">   <form>

                <tr>
                    <td>
                    <td><font face="constantia" size="5"> User email:</font></td><td><input type="text" name="email">
                    </td>
                    <td>
                        <%=erremail%>
                    </td>

                </tr>
                <tr>
                    <td>
                    <td><font face="constantia" size="5"> User password:</font></td><td><input type="password" name="password">
                    </td>
                    <td>
                        <%=errpass%>
                    </td>

                </tr>
                <tr>

                    <td  align="center" colspan="2">
                     <font face="constantia" size="4">   As a Teacher: </font><input type="radio" name="type" value="teacher">

                    </td><td>
                     <font face="constantia" size="4">  As a Student:</font><input type="radio" name="type" value="student" checked></td>
                    <td><%=errtype%></td>
                </tr>
                <tr>

                    <td colspan="3" align="center"><input type="submit" value="LOGIN" style="width:10em;height:2em;"></td>
                </tr>


            </form>
            <tr><td align="center" colspan="2"><a href="registration.jsp"   ><font face="constantia" size="5" color="black">New User</font></a>   </td>
                <td  align="center">
             <a align="center" href="forgot.jsp">   <font face="constantia" size="5" color="black"> Forgot password</font></a></td></tr>
              

        </font>
    </table>
<marquee><font size="5" color="black" face="constantia" scrollamount="15"><b>ENJOY OUR NEW WEBSITE...CREATE AND TAKE QUIZ.... FOR FREE!</b></font></marquee>


<div style="padding-left: 935px; padding-top: 155px; "> <jsp:include page="layout.jsp"></jsp:include></div>






</body>
</html>
