<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");

String dateofbirth=request.getParameter("dob");
String dateofjoining=request.getParameter("doj");
String salary=request.getParameter("salary");
String branch=request.getParameter("branch");
if(username.equals(null) || username.equals("") || userpass.equals(null) || userpass.equals("") || branch.equals(null) || branch.equals("Select a Department")){
	request.setAttribute("Error","Department,Username and Password is mandatory and should not be left empty");
	session.setAttribute("Loginmsg","Please sign in first");
	%>
	<jsp:forward page="create.jsp"></jsp:forward>
	<%
}
Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/PaymentBillingSystem", "postgres", "root");

PreparedStatement ps1=con.prepareStatement("select * from payregister where branch=? and username=? and userpass=?");
ps1.setString(1,branch);
ps1.setString(2,username.toUpperCase());
ps1.setString(3,userpass);

ResultSet rs1=ps1.executeQuery();

while(rs1.next()){
	request.setAttribute("Error","Staff record already exists");
	session.setAttribute("Loginmsg","Please sign in first");
	%>
	<jsp:forward page="create.jsp"></jsp:forward>
	<% 
}

PreparedStatement ps=con.prepareStatement("insert into payregister(username,userpass,branch,dateofjoining,dateofbirth,salary) values(?,?,?,?,?,?)");

ps.setString(1,username.toUpperCase());
ps.setString(2,userpass);
ps.setString(3,branch);
ps.setString(4,dateofjoining);
ps.setString(5,dateofbirth);
ps.setString(6,salary);

int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
