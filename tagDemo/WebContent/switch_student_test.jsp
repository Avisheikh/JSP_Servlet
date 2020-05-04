<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,com.love2code.jsp.tagdemo.Student" %>

<%

//just create some sample data .... normally provided by MVC

List<Student> data = new ArrayList<>();

data.add(new Student("abishek","bhandari",true));
data.add(new Student("ashish","parajuli",false));
data.add(new Student("ram","thapa",false));
data.add(new Student("jebuck","tuladhar",true));

pageContext.setAttribute("myStudents",data);

%>





<html>


<body>

<table border="1">

<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Gold Customer</th>

</tr>

<c:forEach var="tempStudent" items="${myStudents}">
<tr>

<td>${tempStudent.fName}</td>
<td>${tempStudent.lName}</td>
<td>

<c:choose>

<c:when test="${tempStudent.goldCustomer}">Special Discount</c:when>
<c:otherwise>no soup for you!</c:otherwise>
</c:choose>

</td>

</tr>
</c:forEach>
</table>
</body>

</html>