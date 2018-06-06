
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>
			New Registration
		</title>
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
function balanceInfo2()
{
	var fee = document.getElementById("feeId2").value;
	var paid = document.getElementById("paidId2").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId2").value=balance;
		}	
}
function balanceInfo3()
{
	var fee = document.getElementById("feeId3").value;
	var paid = document.getElementById("paidId3").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId3").value=balance;
		}	
}
function balanceInfo4()
{
	var fee = document.getElementById("feeId4").value;
	var paid = document.getElementById("paidId4").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId4").value=balance;
		}	
}
function balanceInfo5()
{
	var fee = document.getElementById("feeId5").value;
	var paid = document.getElementById("paidId5").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId5").value=balance;
		}	
}
function balanceInfo6()
{
	var fee = document.getElementById("feeId6").value;
	var paid = document.getElementById("paidId6").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId6").value=balance;
		}	
}
function balanceInfo7()
{
	var fee = document.getElementById("feeId7").value;
	var paid = document.getElementById("paidId7").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId7").value=balance;
		}	
}
function balanceInfo8()
{
	var fee = document.getElementById("feeId8").value;
	var paid = document.getElementById("paidId8").value;
	var balance;
	if(fee!=null && paid!=null)
		{
		balance = fee - paid;
		document.getElementById("balanceId8").value=balance;
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



function setForm()
{
var url="setform.jsp";
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getForm;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getForm(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}

function get(obj) {
      var poststr = "id=" + encodeURI( document.getElementsByName("id").value );
                    "&name=" + encodeURI( document.getElementsByName("name").value );
                    "&course=" + encodeURI( document.getElementsByName("course").value );
                    "&mobile=" + encodeURI( document.getElementsByName("mobile").value );
                    "&fathername=" + encodeURI( document.getElementsByName("fathername").value );
                    "&mothername=" + encodeURI( document.getElementsByName("mothername").value );
                    "&qualification=" + encodeURI( document.getElementsByName("qualification").value );
                    "&dateofbirth=" + encodeURI( document.getElementsByName("dateofbirth").value );
                    "&dateofjoining=" + encodeURI( document.getElementsByName("dateofjoining").value );
                    "&feesub=" + encodeURI( document.getElementsByName("feesub").value );
                    "&paid=" + encodeURI( document.getElementsByName("paid").value );
                    "&fee=" + encodeURI( document.getElementsByName("fee").value );
                    "&balance=" + encodeURI( document.getElementsByName("balance").value );
                    "&address=" + encodeURI( document.getElementsByName("address").value );
                    "&description=" + encodeURI( document.getElementsByName("description").value );
                    "&trainer=" + encodeURI( document.getElementsByName("trainer").value );
                    "&username=" + encodeURI( document.getElementsByName("username").value );
                    "&password=" + encodeURI( document.getElementsByName("password").value );
                    
      makePOSTRequest("save.jsp", poststr);
   }

function makePOSTRequest(url, parameters) {
      http_request=false;
      if (window.XMLHttpRequest) { // Mozilla, Safari,...
         http_request = new XMLHttpRequest();
         if (http_request.overrideMimeType) {
         	// set type accordingly to anticipated content type
            //http_request.overrideMimeType('text/xml');
            http_request.overrideMimeType('text/html');
         }
      } else if (window.ActiveXObject) { // IE
         try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
         } catch (e) {
            try {
               http_request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
         }
      }
      if (!http_request) {
         alert('Cannot create XMLHTTP instance');
         return false;
      }
      
		http_request.onreadystatechange = alertContents;
     	http_request.open('POST', url, true);
     	http_request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      http_request.setRequestHeader("Content-length", parameters.length);
      http_request.setRequestHeader("Connection", "close");
      http_request.send(parameters);
    
   }

</script>
</head>

<div id="outer">
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


<body width="100">

<div id="main">


<div id="box">

<form action="save2.jsp" name="myform" id="hello" method="post">
<table width="100%">
<tr>
<td><table width="55%" align="left" style="table-layout: fixed;">
		<tr><td>
<table cellspacing=15 cellpadding=15">
<tr><td><font style="color:navy"><B>STUDENT DETAILS:</B></font></td></tr>
<tr><td><B>Roll Number*:</B></td><td><input type="text" name="id"></input></td></tr>
<tr><td><B>Name*:</B></td><td><input type="text" name="name" ></input></td></tr>
<tr><td><B>Department*:</B></td><td><select name="branch">
					<option>Select a Department</option>
					<option>AE</option>
					<option>CSE</option>
					<option>ECE</option>
					<option>IT</option>
					</select></td></tr>
<tr><td><B>Course:</B></td><td><input type="text" name="course"></input></td></tr>
<tr><td><B>Mobile:</B></td><td><input type="text" name="mobile"></input></td></tr>
<tr><td><B>Father's Name:</B></td><td><input type="text" name="fathername"></input></td></tr>
<tr><td><B>Mother's Name:</B></td><td><input type="text" name="mothername"></input></td></tr>
<tr><td><B>Qualification:</B></td><td><input type="text" name="qualification"></input></td></tr>
<tr><td><B>Date of Birth:</B></td><td><input type="text" name="dateofbirth"></input></td></tr>
<tr><td><B>Date of Joining:</B></td><td><input type="text" name="dateofjoining" ></input></td></tr>
<tr><td><B>Date of Submission:</B></td><td><input type="text" name="feesub" ></input></td></tr>
<tr><td><B>Address:</B></td><td><input type="text" name="address"></input></td></tr>
<tr><td><B>Description:</B></td><td><input type="text" name="description"></input></td></tr>
<tr><td><B>Trainer:</B></td><td><input type="text" name="trainer"></input></td></tr>
<tr><td><B>User name*:</B></td><td><input type="text" name="username"></input></td></tr>
<tr><td><B>Password*:</B></td><td><input type="password" name="password"></input></td></tr>
</table>
		
		</table>
		<table align="right" style="table-layout: fixed cellspacing=15 cellpadding=15" border="1">
		  <tr>
    <th>Semester</th>
    <th>Fee</th> 
    <th>Paid</th>
    <th>Balance</th>
  </tr>
<tr>
<td>1</td>
<td><input type="text" name="fee" id="feeId" onchange="balanceInfo()"></input></td>
<td><input type="text" name="paid" id="paidId" onchange="balanceInfo()"></input></td>
<td><input type="text" name="balance" id="balanceId"></input></td>
</tr>
<tr>
<td>2</td>
<td><input type="text" name="fee2" id="feeId2" onchange="balanceInfo2()"></input></td>
<td><input type="text" name="paid2" id="paidId2" onchange="balanceInfo2()"></input></td>
<td><input type="text" name="balance2" id="balanceId2"></input></td>
</tr>
<tr>
<td>3</td>
<td><input type="text" name="fee3" id="feeId3" onchange="balanceInfo3()"></input></td>
<td><input type="text" name="paid3" id="paidId3" onchange="balanceInfo3()"></input></td>
<td><input type="text" name="balance3" id="balanceId3"></input></td>
</tr>
<tr>
<td>4</td>
<td><input type="text" name="fee4" id="feeId4" onchange="balanceInfo4()"></input></td>
<td><input type="text" name="paid4" id="paidId4" onchange="balanceInfo4()"></input></td>
<td><input type="text" name="balance4" id="balanceId4"></input></td>
</tr>
<tr>
<td>5</td>
<td><input type="text" name="fee5" id="feeId5" onchange="balanceInfo5()"></input></td>
<td><input type="text" name="paid5" id="paidId5" onchange="balanceInfo5()"></input></td>
<td><input type="text" name="balance5" id="balanceId5"></input></td>
</tr>
<tr>
<td>6</td>
<td><input type="text" name="fee6" id="feeId6" onchange="balanceInfo6()"></input></td>
<td><input type="text" name="paid6" id="paidId6" onchange="balanceInfo6()"></input></td>
<td><input type="text" name="balance6" id="balanceId6"></input></td>
</tr>
<tr>
<td>7</td>
<td><input type="text" name="fee7" id="feeId7" onchange="balanceInfo7()"></input></td>
<td><input type="text" name="paid7" id="paidId7" onchange="balanceInfo7()"></input></td>
<td><input type="text" name="balance7" id="balanceId7"></input></td>
</tr>
<tr>
<td>8</td>
<td><input type="text" name="fee8" id="feeId8" onchange="balanceInfo8()"></input></td>
<td><input type="text" name="paid8" id="paidId8" onchange="balanceInfo8()"></input></td>
<td><input type="text" name="balance8" id="balanceId8"></input></td>
</tr>
</table>
<tr><td><B>*=Mandatory</B></td></tr>
<tr><td></td><td><input style="padding:7px 20px" value="Save" type="submit"></td></tr>
</table>


</form>


</div>

</div>

</body>


<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>