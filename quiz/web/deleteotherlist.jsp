<%--
    Document   : deletemyquiz
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
      <%! String ques=""; int i=0;%>

      <%
       String email=(String)session.getAttribute("email");

                    if(email==null)
                        {
response.sendRedirect("login.jsp?err=(Log in First)");
}

      try{

          i=0;
          if(helper.beans.getnn()<helper.beans.getAl().size())
          {
              i=0;
              java.util.ArrayList<String> yo=new java.util.ArrayList<String>(helper.beans.getAl().subList(helper.beans.getnn(),helper.beans.getnnn()));
             i=0;
             ques=yo.get(i);

              helper.beans.setnn(helper.beans.getnn() + 1);
                            helper.beans.setnnn(helper.beans.getnnn() + 1);


              }
          else{
              if(helper.beans.getN()==0)
            response.sendRedirect("welcometeacher.jsp?msg=!!No Questions Deleted!!");
               else if(helper.beans.getN()==1)
                   response.sendRedirect("welcometeacher.jsp?msg=!Successfully Deleted "+helper.beans.getN()+" Question!");
               else response.sendRedirect("welcometeacher.jsp?msg=!Successfully Deleted "+helper.beans.getN()+" Questions!");
}


          }
      catch(Exception e)
              {
          out.println("sorry-- "+e);

          }











      %>
      <h1 align="center"> <font face="constantia" size="15"> <b><u>Delete The Question Or Skip It</u></b></font></h1>
      <font face="constantia" size="6" > <br><br>  <table align="center" height="300" width="800">
          <tr><td id="r" ><u><b>Question:</b></u></td></tr>
      <tr><td ><ul><li><%= ques %></li></ul></td></tr>
          <tr><td align="center"><form action="deleteotherques">
                      <input id="one" type="submit" value="Delete" style="width:10em; height:2.5em;" >
                  </form><br>

                <form action="deleteotherlist.jsp"><input id="one" type="Submit" value="Skip" style="width:10em; height:2.5em;"></form> </td></tr>




      </table></font>
           <div style="padding-left: 930px; padding-top: 90px; "> <jsp:include page="layout.jsp"></jsp:include></div>
    </body>
</html>
