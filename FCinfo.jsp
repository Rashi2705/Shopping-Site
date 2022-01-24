<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.FeedbackComplaint" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
body{
background-color:#ffcce0;
}
.fcdiv{
margin:0% 15% 2% 15%;
box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
padding:2%;
background-color:white;
font-size:1.2rem;
}
b{
color:grey;
}
</style>
</head>
<body>
<section>
<h1 style="text-align:center;background-color:white;font-size:2rem;box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;padding:2%;margin-bottom:5%;">
Users Feedbacks & Complaints</h1>
<%

Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from FeedbackComplaint");
List<FeedbackComplaint>list=q.list();


for(FeedbackComplaint fc:list){
	
	%>
	<div class="fcdiv">
	 <p style="text-align:center;text-transform:capitalize;"> <b>Feedback/Complaint By : </b> <%=fc.getFname() %>&nbsp; <%=fc.getLname() %></p>
	  <p style="color:#cc33ff;"><b>Email : </b> <%=fc.getEmailf() %></p>
	  <p><b>Feedback/Complaint :</b><p style="padding:2%;box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;"><%=fc.getQuery() %></p></p>
	  
	   
	    
	</div>
	<%
	
}

s.close();
%>
	</section>
</body>
</html>