<%-- 
    Document   : makequiz
    Created on : Jun 24, 2015, 1:01:25 PM
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
#one:hover{transform:scale(1.1);}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  background="water.jpg" style="background-size:1400px;">
        <%!String errques = "", erropt1 = "", erropt2 = "", erropt3 = "", erropt4= "";%>
        <% 
   String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}

        String ques = request.getParameter("ques");
                    String opt1 = request.getParameter("opt1");
                    String opt2 = request.getParameter("opt2");
                    String opt3 = request.getParameter("opt3");
                    String opt4 = request.getParameter("opt4");
                      String rightans = request.getParameter("rightans");
                    if (ques != null &&opt1!= null && opt2 != null && opt3 != null &&opt4 != null) {
                        errques = "";
                        erropt1 = "";
                        erropt2 = "";
                        erropt3 = "";
                        erropt4= "";
                        opt1 =opt1.trim();
                        ques = ques.trim();
                        opt2 = opt2.trim();
                         opt3 = opt3.trim();
                          opt4 = opt4.trim();
                        
                        if (ques.length() < 1 || opt1.length() < 1 || opt2.length() < 1 || opt3.length() < 1 || opt4.length() < 1 ) {
                            if (ques.length() < 1) {
                                errques = "field cannot be empty";
                            }


                            if (opt1.length() < 1) {
                                erropt1 = "field cannot be empty";

                            }
                            if (opt2.length() < 1) {
                                erropt2 = "field cannot be empty";
                            }


                            if (opt4.length() < 1) {
                                erropt4 = "field cannot be empty";
                            }


                            if (opt3.length()<1) {
                                erropt3= "field cannot be empty";
                            }

                        } else {
                            RequestDispatcher rd = request.getRequestDispatcher("makequiz");
                            request.setAttribute("ques", ques);
                            request.setAttribute("opt1", opt1);
                            request.setAttribute("opt2", opt2);
                            request.setAttribute("opt3", opt3);
                            request.setAttribute("opt4",opt4);
                                request.setAttribute("rightans",rightans);
                            rd.forward(request, response);

                        }
                    }
        %>
        <h1 align="center"><font face="constantia" ><b><u>Enter 5 questions with 4 options as well as right answer</b></u></h1>
        <br>
        <table align="center" height="350" width="1050">
            <form>
            <tr><td><font size="5" face="constantia">Question:</font></td><td><input type="text" size="100" name="ques"></td><td><%=errques%></td></tr>
            <tr><td><font size="5" face="constantia">Option1:</font></td><td><input type="text" size="50" name="opt1"></td><td><%=erropt1%></td></tr>
            <tr><td><font size="5" face="constantia">Option2:</font></td><td><input type="text" size="50" name="opt2"></td><td><%=erropt2%></td></tr>
            <tr><td><font size="5" face="constantia">Option3:</font></td><td><input type="text" size="50" name="opt3"></td><td><%=erropt3%></td></tr>
            <tr><td><font size="5" face="constantia">Option4:</font></td><td><input type="text" size="50" name="opt4"></td><td><%=erropt4%></td></tr></table>
        <table align="center">   <tr><td align="left" ><font size="6" face="constantia">Right Answer:</font><br></td></tr>
              <tr>
             <td align="right"><font size="5" face="constantia">Option 1:</font><input type="radio" name="rightans" value="opt1" checked></td>
            <td><font size="5" face="constantia">Option 2:</font><input type="radio" name="rightans" value="opt2" ></td>
            <td><font size="5" face="constantia">Option 3:</font><input type="radio" name="rightans" value="opt3"></td>
            <td><font size="5" face="constantia">Option 4</font><input type="radio" name="rightans" value="opt4"></td></tr>
              <tr><td align="center" colspan="3"><input id="one" type="submit" value="Submit" style="width:8em; height:2em;"></td></tr>
            </form>  
        </table>
<div style="padding-left: 930px; padding-top: 10px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
