<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
</head>
<body style="background-color:#7d7a7a;">
<%@include file="component/navbar.jsp" %>
<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Registration Page</h4>
<%
String sucssMsg=(String)session.getAttribute("sucssMsg");
String errorMsg=(String)session.getAttribute("errorMsg");
if(sucssMsg!=null)
{%>
<p class="text-success text-center"><%= sucssMsg %></p>
<% 
session.removeAttribute("sucssMsg")	;
}
if(errorMsg!=null)
{%>
<p class="text-danger text-center"><%= errorMsg %></p>
<% 
session.removeAttribute("errorMsg")	;
	
}
%>
<form action="register" method="post">
<div class="form-group">
    <label for="exampleInputEmail1">Enter name</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1">
  </div>
  
  <div class="text-center mt-2">
  <button type="submit" class="btn btn-primary">Register</button>
  </div>
</form>

</div>
</div>
</div>
</div>
</div>
<div style="margin-top:220px">
<%@include file="component/footer.jsp" %>
</div>

</body>
</html>