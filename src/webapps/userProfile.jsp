<HTML>
<body onload="load()">
<form method="post" action="ControllerServlet">
<%@page import="jsp.learning.data.UserData"%> 
<%
UserData userData = (UserData) session.getAttribute("user");
%>

Name: <input type="text" id="uname" name="userName" value="<%out.print(userData.getUserName());%>"/>
<P>
Age :  <input type="text" id="age" name="age" value="<%out.print(userData.getAge());%>" />
<P>
Email : <input type="text" id="email" name="email" value="<%out.print(userData.getEmail());%>" />
<P>
Mobile: <input type="text" id="mobile" name="mobile" value="<%out.print(userData.getMobile());%>" />
<P> <input type="button" id="edit" name="update" value="Edit" onclick="enableForEdit()"/>
<input type="button" id="save" name="update" value="Save" onclick="updateData()"/>

<script type="text/javascript">

function enableForEdit(){
document.getElementById("uname").disabled=false;
document.getElementById("age").disabled=false;
document.getElementById("email").disabled=false;
document.getElementById("mobile").disabled=false;
document.getElementById("edit").style.visibility='hidden'; 
document.getElementById("save").style.visibility='visible'; 

}

function load(){
document.getElementById("uname").disabled=true;
document.getElementById("age").disabled=true;
document.getElementById("email").disabled=true;
document.getElementById("mobile").disabled=true;
document.getElementById("save").style.visibility='hidden';

}
function updateData(){
alert("Updating data");
<%
userData.setUserName(%>document.getElementById("uname").value<%);
userData.setAge(%>document.getElementById("age").value <%);
userData.setEmail(%>document.getElementById("email").value<%);
userData.setMobile(%>document.getElementById("mobile")<%);
%>
document.forms[0].submit();
}
</script>
</form>
</body>
</HTML>
