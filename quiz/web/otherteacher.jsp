<%-- 
    Document   : otherteacher
    Created on : Jun 29, 2015, 3:00:00 PM
    Author     : SURESH
--%>
<%@taglib prefix="s1"  uri="/WEB-INF/tlds/mytld.tld"%>
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
                    String email = (String) session.getAttribute("email");

                    if (email == null) {
                        response.sendRedirect("login.jsp?err=(Log in First)");
                    }




                    java.util.ArrayList<String> al = new java.util.ArrayList<String>(helper.beans.getAl());
                    out.println("<h1 align=center><font face=\"constantia\" size=\"15\"><b><u>Select The Email Of Teacher</u></b></font></h1><br><br><form action=\"deletesublist\">");
                    int i = 0;
                    while (i < al.size()) {
                        out.println("<font face=\"constantia\" size=\"5\"><table align=\"center\" width=\"300\"><tr><td><input type=\"radio\" name=\"teacheremail\"  value=\"" + al.get(i) + "\"checked >" + al.get(i) + "</td></tr>");


                        i++;



                    }
                    out.println("<tr><td align=\"center\" colspan=\"3\"><input id=\"one\" type=\"submit\" value=\"Submit\" style=\"width:10em; height:2em;\"></td></tr></table></form>");









        %>
        <br>

        <table align="center"><tr><td><form  action="backteacher"> <input id="one" type="submit" value="Back" style="width:10em; height:2em;"></form></td></tr></table>
     <div style="padding-left: 930px; padding-top: 270px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>

</html>
