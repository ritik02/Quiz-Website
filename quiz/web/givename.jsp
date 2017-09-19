<%-- 
    Document   : givename
    Created on : Jun 24, 2015, 2:28:49 PM
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
    <body background="water.jpg" style="background-size:1200px;">
        <%!String err="";%>
        <%
        String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}
        String quizname=request.getParameter("quizname");
        if(quizname!=null)
            {
           
           
                RequestDispatcher rd=request.getRequestDispatcher("givename");
                request.setAttribute("quizname",quizname);
                rd.forward(request, response);



                }

        %>
        <h1 align="center"><font size="7"><b><u>Select a Quiz type!</u></b></font></h1>
        <br><br><br><br>
        <h2 align="center">
               <table align="center" width="400" height="300"> <form >
                              <tr><td> <font size="6" face="constantia"> C :</font></td><td><input type="radio" name="quizname" value="c" checked></td></tr>
                
               <tr><td> <font size="6" face="constantia">  C++ :</font></td><td><input type="radio" name="quizname" value="c++"></td></tr>
               
               <tr><td> <font size="6" face="constantia">   JAVA </font></td><td><input type="radio" name="quizname" value="java"></td></tr>
                  
                 <tr><td><font size="6" face="constantia">   SQL :</font></td><td><input type="radio" name="quizname" value="sql"></td></tr>
                  
                 <tr><td><font size="6" face="constantia">   DATA STRUCTURE:</font></td><td><input type="radio" name="quizname" value="datastructure"></td></tr>
                  
                 <tr><td colspan="3" align="center">  <input type="submit" value="Submit" style="width:8em; height:2em;"></td></tr>
            </form>  </table></font> </h2>
           <table align="left">   <tr><td><form action="backteacher">
                    <input type="submit" value="Back" style="width:8em; height:2em;"></td><tr>
                    </form></table>
        <div style="padding-left: 930px; padding-top: 60px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
