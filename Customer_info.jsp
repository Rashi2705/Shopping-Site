<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.User" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
.row{
margin-top:13%;
margin-bottom:10%;
 background:#DCDCDC;
width:95%;
}
.col{

width:100%;

margin-left:20%;
margin-right:20%;
}
table, th, td {
background:white;
  border: 1px solid black;
  border-collapse: collapse;
}
th{
width:50%;
}



p{
padding:2%;
}

/* On mouse-over, add a deeper shadow */


/* Add some padding inside the card container */
.container {
  padding: 2px 16px;
}
p{
margin-left:2%;
margin-top:2%;
}
</style>
</head>
<body>
<section style="display:none;"><%@include file="afterloginnav.jsp" %></section>
 <div class="row">
 <div class="col">
<%

Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from User");
List<User>list=q.list();
%>
<table style="width:100%">
  <tr>
    <td>Customer-Id</td>
    <td>Name</td>
    <td>Email Address</td>
    <td>Date of Registration</td>
  </tr>
  
<% 
for(User user:list){
%>
<tr>
    <td><%=user.getId() %></td>
    <td><%=user.getName()%></td>
    <td><%=user.getEmail_id() %></td>
    <td><%=user.getAddedDate() %></td>
  </tr>
  
	
	<%
	
}


s.close();
%>
</table>
</div>
</div>
</body>
</html>