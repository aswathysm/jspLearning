<%@page import="jsp.learning.data.UserManager"%> 
<%@page import="jsp.learning.data.UserData"%> 

<jsp:useBean id="user" class="jsp.learning.data.UserData"/> 
<jsp:setProperty property="*" name="user"/> 


<% 
UserManager usermngr = UserManager.getUsersInstance();
session.setAttribute("userMngr" , usermngr);
boolean status=usermngr.registerUser(user);  
if(status) {
%>
<jsp:include page="redirect.jsp"/>
<%
}%>
