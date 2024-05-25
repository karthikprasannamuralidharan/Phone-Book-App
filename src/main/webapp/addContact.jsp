<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<%
if(user==null)  //user is already there in navbar
{
	session.setAttribute("invalidMsg", "Login Please");
	response.sendRedirect("login.jsp");
}
%>
<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Add Contact Page</h4>
<%
String sucssMsg=(String)session.getAttribute("succMsg");
String errorMsg=(String)session.getAttribute("failedMsg");
if(sucssMsg!=null)
{%>
<p class="text-success text-center"><%= sucssMsg %></p>
<% 
session.removeAttribute("succMsg")	;
}
if(errorMsg!=null)
{%>
<p class="text-danger text-center"><%= errorMsg %></p>
<% 
session.removeAttribute("failedMsg")	;
	
}
%>
<form action="addContact" method="post">
<%
if(user!=null)
{%>
<input type="hidden" value="<%= user.getId()%>" name="userid">	
<%}
%>
<div class="form-group">
    <label for="exampleInputEmail1">Enter name</label>
    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Enter email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">Enter phone No</label>
    <input name="phno" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
   <div class="form-group">
  <textarea rows="3" cols="" placeholder="Enter about" name="about" class="form-control"></textarea> 
   
  </div>
  <div class="text-center mt-2">
  <button type="submit" class="btn btn-primary">Save Contact</button>
  </div>
</form>

</div>
</div>
</div>
</div>
</div>
</body>
</html>