<html>

<head>
<title>
Student Confirmation Title
</title>

</head>

<body>

The student is confirmed: ${param.fName} ${param.lName}  
<br/>

The student;s county: ${param.city}
<br/>
<br/>
<ul>
<%
String [] langs = request.getParameterValues("fL");

for(String t:langs)
{
out.println(t);	
}

%>

</ul>
</body>


</html>