<html>
<%@page import="jsp.learning.data.UserData"%> 
<%@page import="java.lang.Integer"%> 
<%
UserData userData = (UserData) session.getAttribute("user");
userData.setUserName(request.getParameter( "uname" ));
userData.setAge(Integer.parseInt(request.getParameter( "age")));
userData.setEmail(request.getParameter( "email"));
userData.setMobile(request.getParameter( "mobile"));
%>
<form action="ControllerServlet" method="post">
Do  you want to save changes ?
<input type="Submit" name="yes" value="Yes"/>
</form>

</html>
