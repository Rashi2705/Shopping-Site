<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="container">
  <div class="row col-md-10 col-md-offset-3">
   <div class="card card-body">
    <h1>User successfully registered!</h1>
    <p> <% String name = request.getParameter("name"); %>
    <%= name %></p>
   </div>
  </div>
 </div>
</body>
</html>