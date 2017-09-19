<%-- 
    Document   : score
    Created on : Jun 25, 2015, 9:28:52 PM
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
    <body  background="yo.jpg" style="background-size:1400px;">
        <%!String m=""; %><%
        String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}
        if(helper.beans.getscore()==0)
            m="Extremely Poor! Study Hard..!";
       else if(helper.beans.getscore()==(helper.beans.getAl().size()/6))
            m="Excellent!";
        else if(helper.beans.getscore()<(helper.beans.getAl().size()/6)&&(helper.beans.getscore()>(helper.beans.getAl().size()/6)/2))
            m="Good.. TRy Harder Next Time!";
        else
            m="Poor Score...Better Luck Next Time";

    %>
        <h1 align="center"><b><u><font size="25" face="algerian" color="thistle">!Score Page!<font></b></u></h1>
  <h2 align="center"><font size="6" face="algerian" color="thistle">!!Hello <%= helper.beans.getName() %> your score is <font color="yellow"><%= helper.beans.getscore() %></font> out of <font color="yellow"><%= (helper.beans.getAl().size()/6) %></font> !! <marquee scrollamount="10">  <%= m %> </h2></font></font></marquee>
    <form action="backstudent">
        <table align="center"><tr><td> <input type="submit" value="Go to Home Page" style="width:10em;height:2em;"></td></tr></table>
    </form><div style="padding-left: 920px; padding-top: 250px; "> <font color=thistle"><jsp:include page="l2.jsp"></jsp:include></font></div>


</body>
</html>
