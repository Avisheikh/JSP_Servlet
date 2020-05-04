<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<body>
<c:set var="data" value="loveToCode"/>

Length of the String <b>${data}</b>: ${fn:length(data)}

<br><br>
UpperCase of the String <b>${data}</b>: ${fn:toUpperCase(data)}


</body>


</html>