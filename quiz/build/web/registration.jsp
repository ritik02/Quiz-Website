<%-- 
    Document   : registration
    Created on : Jun 23, 2015, 9:18:37 PM
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



}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  background="water.jpg" style="background-size:1400px;"><%
    String email=(String)session.getAttribute("email");

                    


    %>
        <h1 align="center"><u><font face="constantia" size="15"><b>Registration Page</b></font></u></h1>
        <br>
        <br>
        <br>
        
        <table align="center" width="500" heigth="100">
            <tr>
                <td> <form action="registrationteacher.jsp"><input type="submit" value="As a Teacher" size="100" style="width:15em; height:3em;"></form></td>
            <td> <form action="registrationstudent.jsp"><input type="submit" value="As a Student" size="100"style="width:15em; height:3em;"></td></tr>

        </form></table>
            
        <table align="right"> <tr><td><form action="back"><td colspan="2" ><input type="submit" value="Back" style="width:7em; height:2em;"></form></td></tr></table><div style="padding-left: 935px; padding-top: 370px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
