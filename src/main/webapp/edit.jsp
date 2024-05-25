<%@page import="com.entity.Contact"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.dao.ContactDAO"%>
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
<%@include file="component/navbar.jsp"%>
	<%
	if (user == null) //user is already there in navbar
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
<h4 class="text-center text-success">Edit Contact Page</h4>
<%

String errorMsg=(String)session.getAttribute("failedMsg");

if(errorMsg!=null)
{%>
<p class="text-danger text-center"><%= errorMsg %></p>
<% 
session.removeAttribute("failedMsg")	;
	
}
%>
<form action="update" method="post">
<%
int cid=Integer.parseInt(request.getParameter("cid"));
ContactDAO dao=new ContactDAO(DbConnect.getConn());
Contact c=dao.getContactByID(cid);
%>
<input type="hidden" value="<%=cid%>" name="cid">
<div class="form-group">
    <label for="exampleInputEmail1">Enter name</label>
    <input name="name" value="<%= c.getName() %>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Enter email address</label>
    <input name="email" value="<%= c.getEmail() %>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">Enter phone No</label>
    <input name="phno" value="<%= c.getPhno() %>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
   <div class="form-group">
  <textarea rows="3" cols="" placeholder="Enter about" name="about" class="form-control"><%= c.getAbout()%></textarea> 
   
  </div>
  <div class="text-center mt-2">
  <button type="submit" class="btn btn-primary">Update Contact</button>
  </div>
</form>

</div>
</div>
</div>
</div>
</div>
</body>
</html>