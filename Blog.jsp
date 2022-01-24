<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Blog" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
  <%@page import="com.web.Logincontroller" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
.row{
margin-top:10%;
margin-bottom:15%;
 background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);;
width:95%;
padding-bottom:5%;
padding-top:2%;

}
.col{

width:100%;

margin-left:13%;
margin-right:22%;
}

.card {
border-radius: 25px;
background-color:#F0FFFF;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  margin-top:3%;
  width:55rem;
padding:4%;
  height:30rem;
}

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 10px 10px 5px grey;
}

/* Add some padding inside the card container */
.container {
  
  float:left;
margin-top:2%;
}
p{
margin-left:2%;
margin-top:2%;
}
</style>
</head>
<body>
 <%  HttpSession Session=request.getSession();
 String mail=  (String) Session.getAttribute("email_id"); %>
<% if(mail!=null)
{
%>
   <section><%@include file="afterthriftbottomnav.jsp" %></section>
 <%
}
else{
	%>
	<section><%@include file="thriftbottomnav.jsp" %></section>
	<% 
}%> 
 <div class="row">
 <div class="col">
<%

Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from Blog");
List<Blog>list=q.list();


for(Blog blog:list){
	
	
	%>
	
	<div class="card">
	<h3> <span style="text-transform: capitalize;"><p><%=blog.getCustomer_name() %></span>  <span style="color:grey;margin-left:2%;margin-right:2%;"><i>Donated :</i></span>  <%=blog.getItems() %></p></h3>
	<hr>
	<section style="margin-bottom:32%;">
  <div class="container" style="width:40%;"><img src="http://localhost:8080/uploads/<%= blog.getImagename() %>" alt="Avatar" style="width:100% ;height:100%;margin-left:5%">
  </div>
  <div class="container" style="width:55%; margin-left:5%;">
   <p style="font-family:Bradley Hand, cursive;font-size:1.1rem;">These Donation items helped: </p>
    <p><%=blog.getContent() %> </p>
 
  </div>
  </section>
 <hr style="margin-top:5%;">
  <p style="margin-left:2%; margin-right:2%;"><span style="font-family:Apple Chancery, cursive,Times, Times New Roman, serif; color:#ff0066;">Thank You </span> <span style="text-transform: capitalize;color:#cc33ff;font-size:1.2rem;"><%=blog.getCustomer_name() %></span> for your Donation.
  Your Donation Helped someone to make their life better & happy.</p>
</div>
	<%
	
}

s.close();
%>
</div>
</div>
<br>
<br>
<br>
<section> <%@include file = "ftr.jsp" %></section>
</body>
</html>