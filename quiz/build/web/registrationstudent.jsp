<%-- 
    Document   : registrationstudent
    Created on : Jun 23, 2015, 9:34:37 PM
    Author     : SURESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
         <style>
         #one:hover{
               transform:scale(1.1);
               color:red;



}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Register</title>
    </head>
    <body  background="water.jpg" style="background-size:1400px;">
        <h1 align="center"><font face="constantia" size="20"><b><u>Student Registration</u></b></font></h1>
        <%!String errname = "", errpassword = "", errconf = "", errnumber = "", erremail = "";%>
        <%
        

                      String name = request.getParameter("name");
                    String password = request.getParameter("password");
                    String confpassword = request.getParameter("confpassword");
                    String number = request.getParameter("number");
                    String email = request.getParameter("email");
                    if (name != null && password != null && confpassword != null && number != null && email != null) {
                        errname = "";
                        errpassword = "";
                        errconf = "";
                        errnumber = "";
                        erremail = "";
                        name = name.trim();
                        number = number.trim();
                        email = email.trim();
                        int k = 0;
                        for (int i = 0; i < number.length(); i++) {
                            char q = number.charAt(i);
                            if (q >= 48 && q <= 57) {
                            } else {
                                k = 1;
                                break;
                            }
                        }
                        if (name.length() < 1 || password.length() < 1 || confpassword.length() < 1 || number.length() < 1 || email.length() < 1 || confpassword.equals(password) == false || email.indexOf('@') == -1 || (number.length() >= 1 && number.length() < 10) || k == 1) {
                            if (name.length() < 1) {
                                errname = "field cannot be empty";
                            }


                            if (password.length() < 1) {
                                errpassword = "field cannot be empty";
                                ;
                            }
                            if (confpassword.length() < 1) {
                                errconf = "field cannot be empty";
                            }
                            if (confpassword.equals(password) == false) {
                                errconf = "Passwords do not match";
                            }

                            if (number.length() < 1) {
                                errnumber = "field cannot be empty";
                            }

                            if (number.length() >= 1 && number.length() < 10) {
                                errnumber = "minimum 10 digits should be entered";
                            }
                            if (k == 1) {
                                errnumber = "wrong phone number type";
                            }
                            if (email.length() < 1) {
                                erremail = "field cannot be empty";
                            }
                            if (email.indexOf('@') == -1) {
                                erremail = "wrong email type";
                            }

                        } else {
                            RequestDispatcher rd = request.getRequestDispatcher("registrationstudent");
                            request.setAttribute("email", email);
                            request.setAttribute("password", password);
                            request.setAttribute("name", name);
                            request.setAttribute("number", number);
                            request.setAttribute("confpassword", confpassword);
                            rd.forward(request, response);

                        }
                    }
        %><br><br><br><br>
        <font face="constantia" size="5"><table align="center" width="700" height="300">
            <form align="center" action="">
                <tr><td > Name:</td><td><input type="text" name="name"></td>
                        <%

                        %>
                    <td> <%=errname%></td></tr>

              
                <tr><td > Password:</td><td>
                        <input type="password" name="password"></td><td><%=errpassword%></td></tr>
                        <%



                        %>
                <tr><td > Confirm Password:</td><td><input type="password" name="confpassword"></td><td><%=errconf%></td></tr>
                        <%





                        %>
                <tr><td> Contact number:</td><td><input type="text" name="number"></td><td><%=errnumber%></td></tr>



               
                <tr><td > Email id:</td><td><input type="text" name="email"></td><td><%=erremail%></td></tr>
                        <%





                        %>
                <tr><td  align="center"> <input id="one" type="submit" value="Register" style="width:10em; height:2em;"></td>

            </form>
            <td> <form action="registration.jsp">
                    <input id="one" type="submit" value="Back" style="width:10em; height:2em;" >
                </form></td>
        </table></b></font><div style="padding-left: 900px; padding-top: 107px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
