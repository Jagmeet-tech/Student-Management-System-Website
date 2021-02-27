<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DELETE STUDENT</title>
</head>
<body>
<%String msg=request.getParameter("message"); 
if(msg==null)
{  msg="";}

%>
<div><%@include file="header.html" %></div>

<div>
<center>

<h1>DELETE STUDENT</h1>
<h3 style="color:green"><%=msg %></h3>
<form action="./deleteStudentController" method="post">
<pre>
Student ROLL NO:<input type="text" name="rollno">
</pre>
<pre>
<input type="submit" value="DELETE">
</pre>
</form>
</center>

</div>
<div><%@include file="footer.html" %></div>
</body>
</html>