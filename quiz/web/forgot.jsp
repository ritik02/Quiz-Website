<%-- 
    Document   : forgot
    Created on : Jun 27, 2015, 6:19:18 PM
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
        <title>JSP Page</title>
    </head>
    <body background="water.jpg" style="background-size:1400px;">
        <%!String errname="",erremail="",errnumber="";%>
        <%
        String email=request.getParameter("email");
        String name=request.getParameter("name");
        String number=request.getParameter("number");
        if(email!=null&&name!=null&&number!=null)
      {  email=email.trim();
         name=name.trim();
         number=number.trim();
erremail="";errnumber="";errname="";
            if(email.length()<1||name.length()<1||number.length()<1)
           {
                if(email.length()<1)
erremail="Field cannot be empty! ";
if(name.length()<1)
errname="Field cannot be empty" ;

if(number.length()<1)
errnumber="Field Cannot be empty";}
        else
            {
     RequestDispatcher rd=request.getRequestDispatcher("forgot");
    request.setAttribute("email", email);
  request.setAttribute("name", name);
    request.setAttribute("number", number);
    rd.forward(request, response);

    }

}

        %>
      <h1 align="center"><font face="constantia" ><b><u>Enter the Following so that we can help you retrieve your password!</u></b></font></h1>
      <br>
      <br>
      <br>
          <font face="constantia" size="6">   <table align="center" width="1000" height="300">   <form >
             <tr><td id="one">   Enter your Email:</td>
                 <td> <input type="text" name="email" size="30"></td><td><%= erremail %></td></tr>
      <tr><td id="one">  Enter your Name:</td>
        <td> <input type="text" name="name" size="30"></td><td><%= errname %></td></tr>
     <tr><td id="one">   Enter your Contact Number:</td>
       <td>  <input type="text" name="number" size="30"></td><td><%= errnumber %></td></tr>
     <tr><td align="center">    <input type="submit" id="one" value="SUBMIT" style="width:10em; height:2em;"></td>
        </form>
        <form action="login.jsp">
          <td align="center">    <input type="submit" id="one" value="Back" style="width:10em; height:2em;"> </td></tr>
        </form></table>
     <div style="padding-left: 930px; padding-top: 140px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
