<html><head>
 <script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "10";
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
window.location.href="takequiz.jsp?option=opt1";

}
}
//-->
</script>
    </head>



<body>
       
<form action="" name="forma">
Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white">

</form>
<script>
<!--
timer();
//-->
</script>


</body></html>