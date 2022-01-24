<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Donation" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donation info</title>
<style>

.block{
box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;

width:900px;
align:center;
 margin: 0 auto;
background-color:white;
}

.item{
box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
background-color:#e6ffff;
padding:1%;
font-size:22px;
text-align:center;

}
.city{
box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
padding:1%;
font-size:22px;
 font-family: Arial, Helvetica, sans-serif;
  text-transform: capitalize;
text-align:center;
background-color:#f2f2f2;
}
.info{
box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
padding:2%;
padding-left:4%;
padding-right:4%;
font-size:18px;
 font-family: Arial, Helvetica, sans-serif;
 background-color:#f2f2f2;
margin-bottom:5%;
}
.name{
box-shadow: rgba(0, 0, 0, 0.02) 0px 1px 3px 0px, rgba(27, 31, 35, 0.15) 0px 0px 0px 1px;
padding:2%;
font-size:18px;
 font-family: Arial, Helvetica, sans-serif;
 background-color:white;
padding-left:10%;
padding-right:10%;
}
.info h3{
text-align:center;
}
span{
color:grey;
font-family: "Times New Roman", Times, serif;
font-size:18px;
}
</style>
</head>
<body>
<section style="display:none;"><%@include file="afterloginnav.jsp" %></section>
 
 <div style="margin-top:12%">
<%

Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from Donation");
List<Donation>list=q.list();


for(Donation donation:list){
	
	%>
	
	<div class="block" >
	
	<section class="item"> <p><%=donation. getDonationtype() %></p></section>
    <section class="city"> <p><%=donation.getState() %>  , <%=donation.getCity() %></p>
        <p><%=donation.getTown() %> </p> 
     </section>
     <section class="name"> <p><span>NAME:</span> <%=donation.getFname() %>  <%=donation.getLname() %></p>
    
     <p><span>EMAIL ID:</span> <%=donation.getEmail() %></p>
      <p><span>MOBILE:</span> <%=donation.getMno() %></p>
       <p><span>ADDRESS:</span> <%=donation.getAddr() %>
       <%=donation.getState() %>  , <%=donation.getCity() %>,<%=donation.getTown() %> </p>
        
        <p><span>Pincode:</span> <%=donation.getPincode()  %></p></section>
        
           
       <section class="info">  <h3><i>DONATED ITEMS INFORMATION</i></h3>   <p><%=donation.getDonatewhat() %></p> <hr>
             <h3><i>REMARKS </i></h3> <p><%=donation.getNotes() %></p></section>
   
 
</div>
	<%
	
}

s.close();
%>
</div>

<br>
<br>
<br>

</body>
</html>