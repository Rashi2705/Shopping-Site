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
 <title>Shoppe & Smile</title>
<link href="userprofile.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
     <script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
     <style>
     .nav{
     width:100%;
     }
     td{
     width:30%;
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
<%@ include file= "afterloginnav.jsp" %>
<section class="usr" style="margin-top:15%">
   <h1>Profile</h1>
   
  <%
   Query qq=s.createQuery("from User user where user.email_id=:email").setParameter("email", email);
   List<User>listt=qq.list();
   for(User user:listt){
	   %>
   	<p><%=user.getName() %></p>
   	<% 
   }
   %>
   <hr>
   <section class ="left">
   <div><a href="userprofile.jsp" >OVERVIEW</a></div>  
     <hr>
   <div>   <a href="orders.jsp">ORDERS</a></div>
     <hr>
   <div><p>ACCOUNT</p>  
     <a href="profile.jsp">Profile</a><br></br>
    <a href="Verify_password.jsp">Change Password</a><br></br>
     <hr>
    <div > <p> LEGAL</p>
      <a href="terms.jsp">Terms of Use</a><br></br>
     <a href="privacypolicy.jsp">Privacy Policy</a></div> 
     
   
   </section>
   
   
     <section class ="right" >
      <div class = "profileright">  <h1>Profile Details</h1><hr>
      <table>
      <% 
      for(User user:list){
	   %>
	  
      <tr>   <td> Full Name :</td><td><%=user.getName() %> </td>  </tr>
      <tr><td> Mobile Number:</td><td><%=user.getPhone_no() %></td></tr>  
         <tr>  <td>Email ID:</td><td><%=user.getEmail_id() %></td> </tr> 
          <tr><td> Gender: </td><td><%=user.getGender() %></td> </tr>   
            <tr><td>Alternate Mobile:</td><td><%=user.getAlt_mobileno() %></td> </tr>    
            <tr><td> Hint Name:</td></tr>  
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
           <a href="editprofile.jsp"><button>EDIT </button></a>
      </div>
  </div>
     
     </section>

</section>
<footer style="margin-top:60%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>