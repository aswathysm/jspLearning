<html>
<head>
<meta charset="UTF-8">
</head>
<%@page import="jsp.learning.data.UserManager"%> 
<%@page import="jsp.learning.data.UserData"%>
<h2>User List</h2>
<form action="UpdateHelperServlet" method="post" scope="session">
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
int i =1;
for(UserData userData : userMngr.getUsers()){
String btnName = "edit_"+i ;
%>
<tr>
<td><%out.print(userData.getUserName());%></td>
<td><%out.print(userData.getAge());%></td>
<td><%out.print(userData.getEmail());%></td>
<td><%out.print(userData.getMobile());%></td>
<td><input type="submit" name="<%out.print(btnName);%>" value="View/Edit" "/>
<%session.setAttribute(btnName,userData);%>
</td>
</tr>          
            
<%
i++;
}
%>
</table>
</form>
</html>
