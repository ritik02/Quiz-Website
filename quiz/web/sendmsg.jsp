<%-- 
    Document   : sendmsg
    Created on : Jun 30, 2015, 2:30:20 PM
    Author     : SURESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <style>
         td:hover{

               color:red;



}
        #one:hover
        {
        transform:scale(1.1);
        }</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="water.jpg" style="background-size:1400px;">
        <%! String errm=""; %>
        <%


                    String email = (String) session.getAttribute("email");
                    if (email == null) {
                        response.sendRedirect("login.jsp?err=(Log in First)");
                    }
                    String t=(String)request.getParameter("teachername");
                    String message=(String)request.getParameter("message");
                    if(message==null)
                   {  session.setAttribute("t",t);
                     }
                    if(message!=null)
                        {

                        message=message.trim();
                        if(message.length()<1)
                            errm="Field Cannot Be Empty";
                        else
                            { response.sendRedirect("sendmsg?message="+message+"&t="+session.getAttribute("t"));
                        
}
                        }





        %>
        <h1 align="center"><font face="constantia" size="15"><b><u>  TYPE A MESSAGE:</u></b></font></h1>
        <br>
        <br>
        <br>
        <br>
        <br>
        <font face="constantia" > <table align="center" height="250"><form><tr><td colspan="2">  <input type="text" name="message" size="130"   > </td><td><%= errm %></td></tr>
                            <tr><td align="center"><input id="one" type="submit" value="Send Message" style="width:13em; height:3em;"></td></form></tr>
                <tr> <td align="center"><form action="backstudent"><input id="one" type="submit" value="Back" style="width:13em; height:3em;"></form></td></tr>


            </table></font>
                 <div style="padding-left: 930px; padding-top:120px; "> <jsp:include page="layout.jsp"></jsp:include></div>
        </body>
</html>
