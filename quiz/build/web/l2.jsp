<%-- 
    Document   : l2
    Created on : Jun 27, 2015, 3:47:25 PM
    Author     : SURESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
           String a[]={"SUNDAY","MONDAY","TUESDAY","WEDNESDAY","THURSDAY","FRIDAY","SATURDAY"};
       java.util.Calendar o=java.util.Calendar.getInstance ( );

       String month=Integer.toString(o.get(java.util.Calendar.MONTH)+1);
       String year=Integer.toString(o.get(java.util.Calendar.YEAR));
       String date=Integer.toString(o.get(java.util.Calendar.DATE)
               );
    int day=o.get(java.util.Calendar.DAY_OF_WEEK);
       String oo=date+"/"+month+"/"+year+":"+a[day-1];
String sec=Integer.toString(o.get(java.util.Calendar.SECOND));
String min=Integer.toString(o.get(java.util.Calendar.MINUTE));
String hour=Integer.toString(o.get(java.util.Calendar.HOUR));
String ooo=hour+":"+min+":"+sec;

String s="Created By--> Ritik Verma";


        %>
        <font size="5" face="constantia" color="thistle">  <%= s %><br>
      Date --> <%= oo %><br>
      Time --> <%=ooo %>

        </font>
    </body>
</html>
