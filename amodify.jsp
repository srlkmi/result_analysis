<html>
<head>

<script>
var request;
function sendInfo()
{
var v=document.myform.findName.value;
var url="findname1.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}
function balanceInfo()
{
	var fee = document.getElementById("feeId").value;
	var paid = document.getElementById("paidId").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId").value=balance;
		}	
}
function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hi').innerHTML=val;
}
}

function sendGenInfo(name)
{
var v=name;
var url="getgeninfoname.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getGenInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getGenInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}


</script>
</head>

<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="aheader.jsp"></jsp:include>

<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
%>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>



<body>
<div id="box">

<form action="save3.jsp" name="myform" id="hello" method="post">
<table width="100%">
<tr>
<td><table width="55%" align="left" style="table-layout: fixed;">
		<tr><td>
<table cellspacing=15 cellpadding=15">
<tr><td><font style="color:navy"><B>Student Detail:</B></font></td></tr>
<tr><td><B>Roll Number*:</B></td><td><input type="text" name="id"></input></td></tr>
<tr><td><B>Name*:</B></td><td><input type="text" name="name" ></input></td></tr>
<tr><td><B>Course:</B></td><td><input type="text" name="course"></input></td></tr>
<tr><td><B>Mobile:</B></td><td><input type="text" name="mobile"></input></td></tr>
<tr><td><B>Father's Name:</B></td><td><input type="text" name="fathername"></input></td></tr>
<tr><td><B>Mother's Name:</B></td><td><input type="text" name="mothername"></input></td></tr>
<tr><td><B>Qualification:</B></td><td><input type="text" name="qualification"></input></td></tr>
<tr><td><B>Date of Birth:</B></td><td><input type="text" name="dateofbirth"></input></td></tr>
<tr><td><B>Date of Joining:</B></td><td><input type="text" name="dateofjoining" ></input></td></tr>
<tr><td><B>Date of Submission:</B></td><td><input type="text" name="feesub" ></input></td></tr>
<tr><td><B>Fee:</B></td><td><input type="text" name="fee" id="feeId" onchange="balanceInfo()"></input></td></tr>
<tr><td><B>Paid:</B></td><td><input type="text" name="paid" id="paidId" onchange="balanceInfo()"></input></td></tr>
<tr><td><B>Balance:</B></td><td><input type="text" name="balance" id="balanceId"></input></td></tr>
<tr><td><B>Address:</B></td><td><input type="text" name="address"></input></td></tr>
<tr><td><B>Description:</B></td><td><input type="text" name="description"></input></td></tr>
<tr><td><B>Trainer:</B></td><td><input type="text" name="trainer"></input></td></tr>
<tr><td><B>User name*:</B></td><td><input type="text" name="username"></input></td></tr>
<tr><td><B>Password*:</B></td><td><input type="password" name="password"></input></td></tr>
<tr><td><B>Sem1 Fee:</B></td><td><input type="text" name="fee" ></input></td></tr>
<tr><td><B>Sem1 Paid:</B></td><td><input type="text" name="paid" ></input></td></tr>
<tr><td><B>Sem1 Balance:</B></td><td><input type="text" name="balance" ></input></td></tr>
<tr><td><B>Sem2 Fee:</B></td><td><input type="text" name="fee2" ></input></td></tr>
<tr><td><B>Sem2 Paid:</B></td><td><input type="text" name="paid2" ></input></td></tr>
<tr><td><B>Sem2 Balance:</B></td><td><input type="text" name="balance2" ></input></td></tr>
<tr><td><B>Sem3 Fee:</B></td><td><input type="text" name="fee3" ></input></td></tr>
<tr><td><B>Sem3 Paid:</B></td><td><input type="text" name="paid3" ></input></td></tr>
<tr><td><B>Sem3 Balance:</B></td><td><input type="text" name="balance3" ></input></td></tr>
<tr><td><B>Sem4 Fee:</B></td><td><input type="text" name="fee4" ></input></td></tr>
<tr><td><B>Sem4 Paid:</B></td><td><input type="text" name="paid4" ></input></td></tr>
<tr><td><B>Sem4 Balance:</B></td><td><input type="text" name="balance4" ></input></td></tr>
<tr><td><B>Sem5 Fee:</B></td><td><input type="text" name="fee5" ></input></td></tr>
<tr><td><B>Sem5 Paid:</B></td><td><input type="text" name="paid5" ></input></td></tr>
<tr><td><B>Sem5 Balance:</B></td><td><input type="text" name="balance5" ></input></td></tr>
<tr><td><B>Sem6 Fee:</B></td><td><input type="text" name="fee6" ></input></td></tr>
<tr><td><B>Sem6 Paid:</B></td><td><input type="text" name="paid6" ></input></td></tr>
<tr><td><B>Sem6 Balance:</B></td><td><input type="text" name="balance6" ></input></td></tr>
<tr><td><B>Sem7 Fee:</B></td><td><input type="text" name="fee7" ></input></td></tr>
<tr><td><B>Sem7 Paid:</B></td><td><input type="text" name="paid7" ></input></td></tr>
<tr><td><B>Sem7 Balance:</B></td><td><input type="text" name="balance7" ></input></td></tr>
<tr><td><B>Sem8 Fee:</B></td><td><input type="text" name="fee8" ></input></td></tr>
<tr><td><B>Sem8 Paid:</B></td><td><input type="text" name="paid8" ></input></td></tr>
<tr><td><B>Sem8 Balance:</B></td><td><input type="text" name="balance8" ></input></td></tr>
<tr><td></td><td><input style="padding:3px 3px" value=" Edit & Save" type="submit"></td></tr>
<tr><td><B>*=Mandatory</B></td></tr>
</table>

		
		</table>
<table align="right" width="25%" >
<tr>
<td><font style="color: navy;"><B>Search:</B></font><input type="text" name="findName" onkeyup="sendInfo()"></input></td>
</tr>
<tr><td><div id="hi"></div></td></tr>

</table>
</td>
</tr>

</table>


</form>


</div>
</body>






<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>