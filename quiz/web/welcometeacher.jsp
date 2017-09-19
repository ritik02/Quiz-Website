<%-- 
    Document   : welcometeacher
    Created on : Jun 23, 2015, 10:45:23 PM
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
        <h1 align="center"><font size="7" face="algerian">Hello Teacher! <u><br><%=helper.beans.getName()%></u></font></h1>
        <font color="green">   <marquee style="font-family:Book Antiqua; color:green ;" scrollamount="15"> <h2  align="center">
           <%= a %>
        </h2></marquee></font>
        <table align="right">
            <tr><td><form action="logout"><input type="submit" value="Log Out" style="width:10em; height:2em;"></form></td></tr>
            <tr><td><form action="deleteaccount"><input type="submit" value="Delete Account" style="width:10em; height:2em;"></form></td></tr>
       <tr><td><form action="changepass.jsp"><input type="submit" value="Change Password" style="width:10em; height:2em;" ></form></td></tr>
        </table>
        <br>
        <br>
        <table align="center" height="20">
            <tr><td colspan="2" align="center"> <h2 align="center"><form action="givename.jsp"><input type="submit" value="Make a Quiz!!" style="width:15em; height:3em;"></form>
        </h2</td></tr>
            <tr><td>  <h3 align="center"><form action="delete"><input type="submit" value="Delete My Quiz!!" style="width:15em; height:3em;"></form></td>
                        <td>  <h4 align="center"><form action="deleteother"><input type="submit" value="Delete Other Teacher's Quiz!!" style="width:15em; height:3em;"></form></td></tr>
         <tr><td align="center" ><form action="viewmessage"><input type="submit" value="View Messages!!" style="width:15em; height:3em;"></td></form>
                     <td align="center" ><form action="ql"><input type="submit" value="Update Quiz!!" style="width:15em; height:3em;"></td>
                     </tr></form>
        </h4></td></tr></table><div style="padding-left: 920px; padding-top: 80px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
