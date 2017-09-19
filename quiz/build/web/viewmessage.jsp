<%-- 
    Document   : viewmessage
    Created on : Jun 30, 2015, 7:24:35 PM
    Author     : SURESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head><style>
         td:hover{

               color:red;



}
#one:hover{transform:scale(1.1);}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  background="water.jpg" style="background-size:1400px;" >



        <%
  String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}




        java.util.ArrayList<String> al1=new java.util.ArrayList<String>(helper.beans.getAl());
         java.util.ArrayList<String> al2=new java.util.ArrayList<String>(helper.beans.getAl1());
        out.println("<h1 align=center><font face=\"constantia\" size=\"15\"><b><u>Your Have "+helper.beans.getnn()+" message</u></b></font></h1><br><br>");
       int i=0;
       out.println("<font face=\"constantia\" size=\"6\"><form action=\"clearmessage\"><table align=\"center\" width=\"800\" border=\"2\" ><tr><td align=\"center\">From </td><td align=\"center\">Message </td></tr></font>");
       while(i<al1.size())
           {
           String msg=al2.get(i);
           out.println("<tr><td align=\"center\"><font face=\"constantia\" size=\"5\">"+al1.get(i)+"</font></td><td><font size=\"5\">"+al2.get(i)+"</font></td><td><a href=\"deletemsg?msg="+msg+"\" value=\"Delete\"><font size=\"4\">Delete</font></td></tr>");


i++;



           }
       out.println("</table><table align=center><tr><td align=\"center\" colspan=\"3\"><input id=\"one\" type=\"submit\" value=\"Clear All Messages\" style=\"width:10em; height:2em;\"></td></tr></table></form>");









        %>
        <br>
        <table align="center"><tr><td><form  action="backteacher"> <input id="one" type="submit" value="Back" style="width:10em; height:2em;"></form></td></tr></table>
 <div style="padding-left: 930px; padding-top: 200px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
