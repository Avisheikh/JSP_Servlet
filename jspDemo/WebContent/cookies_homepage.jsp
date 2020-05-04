<html>

<head>
<title>Training Portal</title>
</head>


<body>
<h3>Training Portal</h3>

<!-- read the favourite programming language cookie -->
<%
// the default... if there are no cookies
String favLang = "Java";

//get the cookies from the browser request
Cookie[] theCookies = request.getCookies();

//find our favorite language cookie
if(theCookies != null)
{
for (Cookie tempCookie:theCookies)
{
if("myApp.fLang".equals(tempCookie.getName()))	
{
	favLang = tempCookie.getValue();
	break;

}
}

}


%>


<!--  now show a personalized page....use the "favLang variable" -->

<h4>New Books for <%= favLang %></h4>

<ul>
<li>Blah Blah</li>
<li>Blah Blah</li>
<li>Blah Blah</li>
</ul>


<h4>New Job for <%= favLang %></h4>

<ul>
<li>Blah Blah</li>
<li>Blah Blah</li>
<li>Blah Blah</li>
</ul>









<hr>
<a href="cookies_personalize_form.html">Personalize this page</a>

</body>

</html>