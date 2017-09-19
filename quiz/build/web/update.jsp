<%--
    Document   : updatequiz
    Created on : Jun 28, 2015, 10:18:57 AM
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




}
#r:hover{

    color:red;
}
   </style>     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="water.jpg" style="background-size:1400px;">
      <%! String ques="",opt1="",opt2="",opt3="",opt4="",rightans=""; int i=0;%>

      <%
       String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}
       String right=(String)request.getParameter("rightans");

       if(right!=null)
           {
           out.println(right);
           }
          // response.sendRedirect("update?right="+right);}

      try{

          i=0;
          if(helper.beans.getnn()<helper.beans.getAl().size())
          {
              i=0;
              java.util.ArrayList<String> yo=new java.util.ArrayList<String>(helper.beans.getAl().subList(helper.beans.getnn(),helper.beans.getnnn()));
             i=0;
             ques=yo.get(i);i++;
             opt1=yo.get(i);i++;
             opt2=yo.get(i);i++;
             opt3=yo.get(i);i++;
             opt4=yo.get(i);i++;
             rightans=yo.get(i);

              helper.beans.setnn(helper.beans.getnn() + 6);
                            helper.beans.setnnn(helper.beans.getnnn() + 6);


              }
          else{
              if(helper.beans.getN()==0)
            response.sendRedirect("welcometeacher.jsp?msg=!!No Questions Updated!!");
               else if(helper.beans.getN()==1)
                   response.sendRedirect("welcometeacher.jsp?msg=!Successfully Updated "+helper.beans.getN()+" Question!");
               else response.sendRedirect("welcometeacher.jsp?msg=!Successfully Updated "+helper.beans.getN()+" Questions!");
}


          }
      catch(Exception e)
              {
          out.println("sorry-- "+e);

          }











      %>
      <h1 align="center"> <font face="constantia" size="15"> <b><u>Update The Option Or Skip It</u></b></font></h1>
      <font face="constantia" size="6" > <br><form action="update">  <table align="center" height="300" width="800">
          <tr><td id="r" ><u><b>Question:</b></u></td></tr>
      <tr><td ><font size="6"><b><%= ques %></b></font></td></tr>
      <tr> <td><input type="radio" name="right" value="opt1" checked> <font face="constantia" size="6" ><%= opt1 %></font> </td></tr>
              <tr> <td>    <input type="radio" name="right" value="opt2" ><%= opt2 %> </td></tr>
                   <tr> <td>       <input type="radio" name="right" value="opt3"><%= opt3 %> </td></tr>
                       <tr> <td>     <input type="radio" name="right" value="opt4"><%= opt4 %> </td></tr>
              <tr> <td>Right Option --> "<%= rightans %>"</td></tr>
          <tr><td align="center">

                      <input type="submit" value="Update" style="width:8em; height:2em;"></form></td></tr><br>
                  <br>
                  <tr><td align="center">
                  <form action="update.jsp"><input type="submit" value="Skip" style="width:8em; height:2em;"></form></td></tr>




      </table></font>
           <div style="padding-left: 930px;  "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
