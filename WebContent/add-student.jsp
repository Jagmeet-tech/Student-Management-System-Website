<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.container{

background-color: yellow;
}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function doValidate() {
	var rollno =document.forms["studentform"]["rollno"].value;
	var name=document.forms["studentform"]["name"].value;
	var course=document.forms["studentform"]["course"].value;
	var rollnostatus;
	var namestatus;
	var coursestatus;
	var rollnomsg;
	var namemsg;
	var coursemsg;
	if(document.getElementById("rollnomsg").innerHTML!=""){
		document.getElementById("rollnomsg").innerHTML="";
	}	
	if(document.getElementById("namemsg").innerHTML!=""){
		document.getElementById("namemsg").innerHTML="";
	}	
	if(document.getElementById("coursemsg").innerHTML!=""){
		document.getElementById("coursemsg").innerHTML="";
	}
	if(rollno==""){
			rollnostatus=false;
			rollnomsg="*ROLL NO SHOULD NOT BE EMPTY";
			var span=document.getElementById("rollnomsg");
			span.style.color="red";
			span.innerHTML=rollnomsg;
			
			
			//document.getElementById("rollnomsg").innerHTML=rollnomsg;
		}
		if(name==""){
			namestatus=false;
			namemsg="*NAME SHOULD NOT BE EMPTY";
			var span=document.getElementById("namemsg");
			span.style.color="red";
			span.innerHTML=namemsg;
			
			//document.getElementById("namemsg").innerHTML=namemsg;

		}
		if(course==""){
			coursestatus=false;
			coursemsg="*Course SHOULD NOT BE EMPTY";
			var span=document.getElementById("coursemsg");
			span.style.color="red";
			span.innerHTML=coursemsg;
			
			
			//document.getElementById("coursemsg").innerHTML=coursemsg;

			}
	
	if(rollnostatus==false || namestatus==false || coursestatus==false)
		{
	return false;
	}

}



</script>
<%String msg=(String)request.getAttribute("msg"); 
 if(msg==null)
	 {msg="";}%>
<div><%@include file="header.html" %></div>
<div class="container">
<center>
<h1>ADD STUDENT</h1>
<h3 style="color:green"><%= msg %></h3>
<form action="./AddStudentController" name="studentform" method="post" onsubmit="return doValidate()">
 <table>
 <tr><td>Student Roll no:</td><td><input type="text" name="rollno"><span id="rollnomsg"></span></td></tr>
 <tr><td>Student Name:</td><td><input type="text" name="name"><span id="namemsg"></span></td></tr>
 <tr><td>Gender:</td><td><input type="radio" checked="checked" name="gender" value="male">Male &nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female</td></tr>
 <tr><td>Course:</td><td><select name="course">
 <option value="">---select---</option>
 <option value="java">Java</option>
 <option value="html">Html</option>
 <option value="dotnet">Dot net</option>
 </select><span id="coursemsg"></span></td></tr>
 <tr><td><input type="submit"  value="Add Student"></td><td><input type="button"  value="Cancel"></td></tr>
 </table>


</form>
</center>
</div>
<div><%@include file="footer.html" %></div>

</body>
</html>