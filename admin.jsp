<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>
			Welcome Page
		</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	<body>
	<div id="outer">
	<div id="header">
			
				<div id="logo">
					<h1>
						Payment Recording System
					</h1>
				</div>	
		</div>
			<div id="banner">
				<div class="captions">
					<h2>Sign in</h2>
				</div>
				<!--<img src="images/LBSIT.jpg" alt="" />  -->
			
			</div>
			
			<div id="nav">
					<ul>
						<li class="first">
							<a href="ahome.jsp">Home</a>
						</li>
						<li>
							<a href="ageneralinfo.jsp">New Registration</a>
						</li>
						<li>
							<a href="amodify.jsp">Modify Detail</a>
						</li>
						<li>
							<a href="ahome.jsp">Administrator</a>
						</li>
						
						<li>
							<a href="acontactus.jsp">Contact us</a>
						</li>
						<li>
							<a href="student_mark.jsp">Result details</a>
						</li>
					</ul><br class="clear" />
				</div>


<% 
session.setAttribute("branch",null);


					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				
				
				
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>
<div id="main">

<table align="right">
			
			<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">Welcome to administrator login.
															     Please login to continue.
															      </marquee></div></td></tr></table>

<div id="box">

<form method="post" action="aloginprocess.jsp" >
					<table>
					<tr><td style="color:navy;"><B> Login Form</B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>User Name:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Sign in"></td></tr>
					
					</table>
					</form>		

<br>

</div>

</div>

</body>


<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>