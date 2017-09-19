<%-- 
    Document   : quizlist
    Created on : Jun 24, 2015, 6:22:35 PM
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
    <body  background="water.jpg" style="background-size:1400px;">
        <%
        String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}
        String quizname=request.getParameter("quizname");
       String java=(String)request.getAttribute("java");
        String c=(String)request.getAttribute("c");
         String cpp=(String)request.getAttribute("cpp");
          String sql=(String)request.getAttribute("sql");
           String datastructure=(String)request.getAttribute("datastructure");
        if(quizname!=null)
            {

                RequestDispatcher rd=request.getRequestDispatcher("quizlist");
                request.setAttribute("quizname",quizname);
                rd.forward(request, response);



                }

        %>
        <h1 align="center"><u><font size="7">Select a Quiz type!</font></u></h1>
         <b>  <font size="5" face="constantia">    <table align="center" width="720" height="300"><form >
                    <tr><td>  C :</td><td><input type="radio" name="quizname" value="c" checked></td><td><%= c %> questions are available</td></tr>
                <br>
               <tr><td>   C++ :</td><td><input type="radio" name="quizname" value="c++"></td><td><%= cpp %> questions are available</td></tr>
                 <br>
               <tr><td>    JAVA :</td><td><input type="radio" name="quizname" value="java"></td><td><%= java %> questions are available</td></tr>
                  <br>
                 <tr><td>   SQL :</td><td><input type="radio" name="quizname" value="sql"></td><td><%= sql %> questions are available</td></tr>
                   <br>
                 <tr><td>   DATA STRUCTURE:</td><td><input type="radio" name="quizname" value="datastructure"></td><td><%= datastructure %> questions are available</td></tr>
                   <br>
                 <tr><td colspan="3" align="center">  <input type="submit" value="Submit" style="width:8em; height:2em;"></td></tr>
            </form> </table></font></b>
                   <table align="left"> <tr><td> <form action="backstudent">
                    <input type="submit" value="Back" style="width:8em; height:2em;"></td></tr></table>
                    </form><div style="padding-left: 930px; padding-top: 32px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
