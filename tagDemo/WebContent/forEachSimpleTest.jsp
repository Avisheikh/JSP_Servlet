<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%

String [] cities = {"laltipur","kathmandu","kritipur"};
pageContext.setAttribute("myCitites",cities);


%>



<html>


<body>
<c:forEach var="tempCity" items="${myCitites}">

${tempCity}
<br>

</c:forEach>


</body>



</html>