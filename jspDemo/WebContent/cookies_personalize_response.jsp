<html>

<head>
<title>Confirmation</title>
</head>

<%

// read from data
String fLang = request.getParameter("fLang");

//create from cookie

Cookie theCookies = new Cookie("myApp.fLang",fLang);

//set the life span.... total number of seconds

theCookies.setMaxAge(60*60*24*365);

//send cookie to browser
response.addCookie(theCookies);

%>
<body>
Thanks! we set your favourite language to: ${param.fLang} 

<br><br>
<a href="cookies_homepage.jsp">Return to homepage.</a>

</body>


</html>