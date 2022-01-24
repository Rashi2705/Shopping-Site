<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.web.Logincontroller" %>
        <%@page import="com.util.HibernetUtil" %>
         <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.User" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart</title>
<style>
.right{
padding:2%;
box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 5px 0px, rgba(0, 0, 0, 0.1) 0px 0px 1px 0px;
margin:5% 20% 5% 20%;
font-size:1.1rem;
padding-bottom:10%;
}
table{
margin-left:5rem;
}
.editt{
width:45%;
padding:2%;
text-align:center;
border-style:none;
box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
background-color:#ff0066;color:white;
float:left;
margin-left:2.5%;
font-size:1rem;
}
.edit{
margin-top:3%;
}
</style>
</head>
<body>
<%
 
 HttpSession Session=request.getSession();
String email=  (String) Session.getAttribute("email_id"); 
 Session s= HibernetUtil.getFactory().openSession();
 
   Query q=s.createQuery("from User user where user.email_id=:email").setParameter("email", email);
  
   List<User>list=q.list();
   %>
   
     <section class ="right" >
      <div class = "profileright"> 
       
       <h1>ADDRESS FOR DELIVERY OF ITEMS</h1><hr>
      <table>
      <% 
      for(User user:list){
	   %>
	
       <tr><td> Mobile:</td><td><%=user.getPhone_no() %></td> </tr>    
           
            <tr><td>Address:</td><td><%=user.getLocation() %></td></tr>
            <tr><td>Town:</td><td><%=user.getTown() %></td></tr>
            <tr><td>City:</td><td><%=user.getCity()%></td></tr>
            <tr><td>State:</td><td><%=user.getState() %></td></tr>
            <tr><td>Pincode:</td><td><%=user.getPincode() %></td></tr>
            <tr><td>Alternate Address:</td><td><%=user.getAlt_location() %></td></tr>
            <tr><td>Alternate Mobile no.:</td><td><%=user.getAlt_mobileno() %></td></tr> 
            <%
      }
            %> 
            </table>
                <div class="edit">
           <a href="editaddrcart.jsp"><button class="editt">EDIT ADDRESS </button></a>
        <form action="ConfirmAddrController" method="post">    <a><button class="editt">CONFIRM ADDRESS </button></a></form>
      </div>
  </div>
     
     </section>
</body>
</html>