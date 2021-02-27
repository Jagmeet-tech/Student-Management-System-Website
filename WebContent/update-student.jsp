<%@page import="dto.StudentDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE STUDENT</title>
</head>
<body>
<%StudentDto dto=(StudentDto)request.getAttribute("dto");
if(dto==null)
{ dto=new StudentDto();
   dto.setRollno(0);
   dto.setName("");
   dto.setGender("");
   dto.setCourse("");
}
String msg=request.getParameter("msg");
if(msg==null)
{msg="";}

%>
<div><%@include file="header.html" %></div>

<div>
<center>
<div class="search">
<h1>UPDATE STUDENT</h1>
<h3 style="color:green"></h3>
<form action="./SearchStudentController" method="post">
<pre>
Student ROLL NO:<input type="text" name="rollno">
</pre>
<pre>
<input type="submit" value="SEARCH">
</pre>
</form>
</div>
<div>
<h3 style="color:green"><%=msg %></h3>
<form action="./UpdateStudentController" name="studentform" method="post">
 <table>
 <%
 String rollno="";
 if(dto.getRollno()!=0)
{
	 rollno=String.valueOf(dto.getRollno());
 }
 %>
 
 <tr><td>Student Roll no:</td><td><input type="text" name="rollno" value="<%= rollno%>"><span id="rollnomsg"></span></td></tr>
 <tr><td>Student Name:</td><td><input type="text" name="name" value="<%= dto.getName()%>"><span id="namemsg"></span></td></tr>
 <tr><td>Gender:</td><td><input type="text" name="gender" value="<%= dto.getGender() %>"></td></tr>
 <tr><td>Course:</td><td><input type="text"  name="course" value="<%= dto.getCourse()%>"></td></tr>
 <tr><td><input type="submit"  value="UPDATE"></td><td><input type="button"  value="Cancel"></td></tr>
 </table>


</form>

</div>
</center>

</div>
<div><%@include file="footer.html" %></div>
</body>
</html>