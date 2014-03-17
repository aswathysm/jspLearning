<html>
<head>
<meta charset="UTF-8">
</head>
<%@page import="jsp.learning.data.UserManager"%> 
<%@page import="jsp.learning.data.UserData"%>

<h2>User List</h2>
<form action="userProfile.jsp" method="post">
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
int i= 1;
for(UserData userData : userMngr.getUsers()){
%>
<tr>
<td><%out.print(userData.getUserName());%></td>
<td><%out.print(userData.getAge());%></td>
<td><%out.print(userData.getEmail());%></td>
<td><%out.print(userData.getMobile());%></td>
<td><input type="submit" name="update" value="View/Edit"></td></tr>          
            
<%
session.setAttribute("user",userData);
i++;
}
%>
</table>
</form>
</html>
