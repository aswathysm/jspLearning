<HTML>
<body onload="load()">
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
</script>
<form method="post" action="ControllerServlet">
<%@page import="jsp.learning.data.UserData"%> 
<%
UserData userData = (UserData) request.getAttribute("user");
out.print(userData);
%>

Name: <input type="text" id="uname" name="userName" />
<P>
Age :  <input type="text" id="age" name="age" />
<P>
Email : <input type="text" id="email" name="email" />
<P>
Mobile: <input type="text" id="mobile" name="mobile" />
<P> <input type="button" id="edit" name="update" value="Edit" onclick=enableForEdit()/>
<input type="Submit" id="save" name="update" value="Save">
</form>
</body>
</HTML>
