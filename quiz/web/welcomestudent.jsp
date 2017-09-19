<%-- 
    Document   : welcomestudent
    Created on : Jun 23, 2015, 10:43:40 PM
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
         <%! String a=""; %>
            <% String msg=(String)request.getParameter("msg");
            if(msg!=null)
                {
                a=msg;}
             String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}


            %>
        <h1 align="center"><font size="7" face="algerian">Hello Student!<br> <u><%=helper.beans.getName()%></u></font></h1>
        <font color="green">   <marquee style="font-family:Book Antiqua; color:green ;" scrollamount="15"> <h2  align="center">
           <%= a %>
        </h2></marquee></font>
         <table align="right">
            <tr><td><form action="logout"><input type="submit" value="Log Out" style="width:10em; height:2em;" ></form></td></tr>
            <tr><td><form action="deleteaccount"><input type="submit" value="Delete Account" style="width:10em; height:2em;"></form></td></tr>
            <tr><td><form action="changepass.jsp"><input type="submit" value="Change Password" style="width:10em; height:2em;" ></form></td></tr>
        </table><table align="center"><tr><td>
        <h2 align="center"><form action="quizlists"><input type="submit" value="Take a Quiz!!" style="width:15em; height:3em;"></td></tr></form>
            <tr><td> <h2 align="center"><form action="msgteacherlist"><input type="submit" value="Send Suggestions!!" style="width:15em; height:3em;"></td></tr></form></table>
        </h2><div style="padding-left: 930px; padding-top: 155px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
