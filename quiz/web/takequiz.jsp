<%-- 
    Document   : takequiz
    Created on : Jun 24, 2015, 7:21:25 PM
    Author     : SURESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "11";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
rates=document.getElementsByName("option");
var rate_value;
var i=0;
for(i=0;i<rates.length;i++)
    {

        if(rates[i].checked)
            {
                rate_value=rates[i].value;break;
            }
    }
    window.location.href="takequiz.jsp?option="+rate_value;

///disable submit-button etc
}
}
//-->
</script>
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
    <body  background="water.jpg" style="background-size:1400px;">
       
        <%! String ques = "", opt1 = "", opt2 = "", opt3 = "", opt4 = "", rightans = "";
            int i = 0;%>
        <%
                    String email = (String) session.getAttribute("email");


                    if (email == null) {
                        response.sendRedirect("login.jsp?err=(Log in First)");
                    }


                    try {



                        i = 0;
                        if (helper.beans.getnn() <= (helper.beans.getAl().size() - 6)) {
                            java.util.ArrayList<String> yo = new java.util.ArrayList<String>(helper.beans.getAl().subList(helper.beans.getnn(), helper.beans.getnnn()));


                            i = 0;
                            ques = yo.get(i);
                            i++;

                            opt1 = yo.get(i);
                            i++;
                            opt2 = yo.get(i);
                            i++;

                            opt3 = yo.get(i);
                            i++;
                            opt4 = yo.get(i);
                            i++;
                            rightans = yo.get(i);
                            helper.beans.setnn(helper.beans.getnn() + 6);
                            helper.beans.setnnn(helper.beans.getnnn() + 6);
                            helper.beans.sety(rightans);

                        } else {
                            response.sendRedirect("score.jsp");
                        }

                    } catch (Exception e) {
                        out.println("sorry" + e + "---");

                    }


                           %>
                           <h1 align="center"><font size="6"><b><u>ALL the Best.. Answer Carefully..Click on Submit Button Within 10 seconds</font></b></u></h1>
         <div style="padding-left:1000px;"><form action="<%=request.getRequestURL()%>" name="forma">
                 <font face="constantia" size="5">Seconds remaining: <input type="text" name="clock" value="<%=clock%>" size="7"style="border:0px solid white"></font>

</form>
<script>
<!--
timer();
//-->
</script></div>
        <font face="constantia" size="15" color="blue" > <table align="center" width="700" height="450">
                <tr><td colspan="2"><%= ques%></td></tr></font>
    <tr><form action="takequiz" ><td colspan="2">
            <font face="constantia" color="green" size="6">    <input type="radio" id="r1" name="option" value="opt1" checked ><%= opt1%></font>

                </td>
                <tr> <td >
                    <font face="constantia" color="green" size="6">       <input type="radio" id="r2 "name="option" value="opt2"><%= opt2%></font>

                    </td></tr>
                <tr> <td >
                  <font face="constantia" color="green" size="6">         <input type="radio" id="r3" name="option" value="opt3"><%= opt3%></font>

                    </td></tr>
                <tr> <td >
                   <font face="constantia" color="green" size="6">        <input type="radio" id="r4" name="option" value="opt4"><%= opt4%></font>

                    </td></tr><tr></tr>
                <tr> <td align="center" >
                        <input id ="one"type="submit"  value="Submit" style="width:10em; height:2em;">

                     </td></tr>















    </form>


</table>
</font>
<div style="padding-left: 940px;"> <jsp:include page="layout.jsp"></jsp:include></div>
</body>
</html>
