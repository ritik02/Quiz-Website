<%--
    Document   : deletesublist.jsp
    Created on : Jun 26, 2015, 12:39:17 PM
    Author     : SURESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <style>
            td:hover{
                transform:scale(1.05);
                color:red;



            }</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  background="water.jpg" style="background-size:1400px;">
        <% helper.beans.setOh(helper.beans.getTt());%>
        <%! static String storeValue = "";%>
        <%

                    String email = (String) session.getAttribute("email");
                    if (email == null) {
                        response.sendRedirect("login.jsp?err=(Log in First)");
                    }
                    //  out.println(helper.beans.getOh() + " " + helper.beans.getTt());
                    String quizname = request.getParameter("quizname");
                    String java = (String) request.getAttribute("java");
                    String t = (String) session.getAttribute("t");
                    String c = (String) request.getAttribute("c");
                    String cpp = (String) request.getAttribute("cpp");
                    String sql = (String) request.getAttribute("sql");
                    String datastructure = (String) request.getAttribute("datastructure");
                    if (quizname == null) {
                        storeValue = helper.beans.getSelectedId();
                        session.setAttribute("seleteedTeacher", helper.beans.getSelectedId());
                      
                    }
                    if (quizname != null) {
                       
                        helper.beans.setSelectedId(helper.beans.getSelectedId());
                        
                        //   out.print(helper.beans.getSelectedId());
                        //out.print("test");
                        //  String val = helper.beans.getSelectedId();
                        //out.print(val);
                        //out.println(helper.beans.getTt());
                        if(quizname.equals("cpp"))
                        response.sendRedirect("deleteit?val=" + session.getAttribute("seleteedTeacher") + "&quizname=cpp");
                        else
                            response.sendRedirect("deleteit?val=" + session.getAttribute("seleteedTeacher") + "&quizname="+quizname);
                        //response.sendRedirect("Test?");
                         

                    }

        %>

        <h1 align="center"><font size="7"><b><u>Select a Quiz type you want to Delete !</font></b></u></h1>


        <b><font size="5" face="constantia">      <table align="center" widht="1500" height="300">
                    <form>
                        <tr><td>  C :</td><td><input type="radio" name="quizname" value="c" checked></td><td><%= c%> questions are available for deletion</td></tr>
                        <br>
                        <tr><td>   C++ :</td><td><input type="radio" name="quizname" value="cpp"></td><td><%= cpp%> questions are available for deletion</td></tr>
                        <br>
                        <tr><td>    JAVA :</td><td><input type="radio" name="quizname" value="java"></td><td><%= java%> questions are available for deletion</td></tr>
                        <br>
                        <tr><td>   SQL :</td><td><input type="radio" name="quizname" value="sql"></td><td><%= sql%> questions are available for deletion</td></tr>
                        <br>
                        <tr><td>   DATA STRUCTURE:</td><td><input type="radio" name="quizname" value="datastructure"></td><td><%= datastructure%> questions are available for deletion</td></tr>
                        <br>
                        <tr><td colspan="3" align="center">  <input type="submit" value="Submit" style="width:8em; height:2em;"></td></tr>
                    </form> </table></font></b>
        <form action="otherteacher.jsp">
            <table><tr><td> <input type="submit" value="Back" style="width:8em; height:2em;"></td> </tr> </table>
        </form>
        <div style="padding-left: 930px; "> <jsp:include page="layout.jsp"></jsp:include></div>

    </body>
</html>
