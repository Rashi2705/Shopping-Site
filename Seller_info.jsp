<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Seller_Reg" %>
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

td{
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
Query q=s.createQuery("from Seller_Reg");
List<Seller_Reg>list=q.list();
%>
<table style="width:100%">
  <tr>
    <td>Sid</td>
    <td> Name</td>
    <td>Email </td>
    <td>Company Name</td>
    <td>Store Name</td>
    <td>Address</td>
    <td>Town</td>
    <td>City</td>
    <td>State</td>
    <td>Pincode</td>
  </tr>
  
<% 
for(Seller_Reg seller:list){
%>
<tr>
    <td><%=seller.getSid() %></td>
   <td><%=seller.getName() %></td>
    <td><%=seller.getEmail() %></td>
     <td><%=seller.getCompany_name() %></td>
      <td><%=seller.getStore_name() %></td>
       <td><%=seller.getStore_address() %></td>
        <td><%=seller.getTown() %></td>
         <td><%=seller.getCity() %></td>
          <td><%=seller.getState() %></td>
           <td><%=seller.getPincode() %></td>
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