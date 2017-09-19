<%-- 
    Document   : changepass
    Created on : Jun 27, 2015, 7:39:02 PM
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



}
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="water.jpg" style="background-size:1400px;">
          <%!String errn="",errp="";%>
   <%
    String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}
       String newp=request.getParameter("new");

         String cnew=request.getParameter("cnew");
        if(newp!=null&&cnew!=null)
      {errn="";errp="";
            newp=newp.trim();
            cnew=cnew.trim();
            if(newp.length()<1||cnew.length()<1||newp.equals(cnew)==false)
           {
                if(newp.length()<1)
                    errn="field cannot be empty";

if(cnew.length()<1)
    errp="field cannot be empty";
                if((newp.equals(cnew)==false)&&cnew.length()>=1&&newp.length()>=1)
                    errp="Passwords Do Not Match";

                                              }
            else{
                RequestDispatcher rd=request.getRequestDispatcher("password");
    request.setAttribute("newp",newp);

    rd.forward(request, response);

                }


}
        %>
        <h1 align="center"><font face="constantia" size="10"><b><u>Enter A New Password</u></b></font></h1>



   <font face="constantia" size="6">   <table align="center" width="800" height="300">      <form>
               <tr><td>  New Password:</td><td>  <input type="text" name="new" size="30" ></td><td><%= errn %> </td></tr>
        <tr><td>   Confirm Password:</td><td> <input type="text" name="cnew" size="30" ></td><td><%= errp %> </td></tr>
        <tr><td align="center" colspan="2">  <input type="submit" id="one" value="Change Password" style="width:10em; height:2em;"></td></form>
           <td align="center">   <form action="backstudent">
        <input type="submit" id="one" value="Back" style="width:10em; height:2em;"> </form></td>

        </tr>
        </table></font>
        <div style="padding-left: 930px; padding-top: 165px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
