<html>

<body>
<%!
String makeIt(String data)
{
return data.toLowerCase();	
}

%>

Lower case "hello world": <%= makeIt("helo worlds") %>

</body>

</html>