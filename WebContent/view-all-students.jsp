<%@page import="java.util.ArrayList"%>
<%@page import="dto.StudentDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW ALL STUDENTS</title>
</head>
<body>
<% List<StudentDto> list= (ArrayList<StudentDto>)request.getAttribute("list"); %>

<div><%@include file="header.html" %></div>
<div>
<center>
<h1>VIEW ALL STUDENTS</h1>
<table border="1px" cellspacing="0px">
<th>
<tr><td>ROLL NO</td><td>NAME</td><td>GENDER</td><td>COURSE</td></tr>
</th>
<%for(StudentDto d:list){ %>
<tr><td><%=d.getRollno() %></td><td><%=d.getName() %></td><td><%=d.getGender() %></td><td><%=d.getCourse() %></td></tr>
<%} %>
</table>

</center></div>
<div><%@include file="footer.html" %></div>



</body>
</html>