<%@ page import="java.util.*" %>
<html>
<body>

<!-- Step 1: create Html Form -->
<form action="todo_name.jsp">

Add new item: <input type="text" name="theItem"/>

<input type="submit" value="submit"/>

</form>
<br/>
<br/>
<!-- Item entered: <%= request.getParameter("theItem")%>
 -->
<!-- Step 2: Add new item to "TO DO" list -->

<% 
//get the to do items from the session
List<String> items = (List<String>) session.getAttribute("myToDoList");


//if the to do items doesn't exist, then create a new one
if (items == null){
items = new ArrayList<String>();
session.setAttribute("myToDoList",items);
}


//see if there is from data to add

String theItem = request.getParameter("theItem");
if(theItem != null){
items.add(theItem);

}
%>




<!-- Step 3: Display all "TO DO" item from session -->
<hr>
<b>To List Items:</b>

<ol>
<%
for(String temp:items)
{
out.println("<li>" + temp +"</li>");
}


%>


</ol>

</body>

</html>