<html>
<head>
<meta charset="UTF-8">
</head>
<%@page import="jsp.learning.data.UserManager"%> 
<%@page import="jsp.learning.data.UserData"%>

<script type="text/javascript">
function setDataAndSubmit(obj){

alert("Value of : " + obj.value.valueOf());
alert("Type of : " + typeof(obj.value));
<%session.setAttribute("userObj",%>)obj.value<%);%>
}
</script>

<h2>User List</h2>
<form action="userProfile.jsp" method="post" scope="session">
<table border=1>
<tr>
<th>Name</th>
<th>Age</th>
<th>Email</th>
<th>mobile</th>
<th>Action</th>
</tr>
<%
 UserManager userMngr= (UserManager)session.getAttribute("userMngr");
for(UserData userData : userMngr.getUsers()){
%>
<tr>
<td><%out.print(userData.getUserName());%></td>
<td><%out.print(userData.getAge());%></td>
<td><%out.print(userData.getEmail());%></td>
<td><%out.print(userData.getMobile());%></td>
<td><input type="submit" name="edit" value="View/Edit" onclick="setDataAndSubmit(document.getElementById('<%out.print(userData.getMobile());%>'))"/>
<input type="hidden" id="<%out.print(userData.getMobile());%>" value="<%out.print(userData);%>"/></td>
</tr>          
            
<%
}
%>
</table>
</form>
</html>
