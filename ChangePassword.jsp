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
<link href="editprofile.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
     <script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
      <style>
     .nav{
     width:100%;
     }
    .right button{
    width:98%;
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
   <h1>Account</h1>
    
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
      <a href="Verify_password.jsp">Change Password</a><br></br></div>
     
     <hr>
    <div > <p> LEGAL</p>
      <a href="terms.jsp">Terms of Use</a><br></br>
     <a href="privacypolicy.jsp">Privacy Policy</a></div> 
     
   
   </section>
   
   
     <section class ="right">
        <div class = "profileright">  <h1 style="text-align:center">Verify Existing Password </h1>
        <br>
         <form class="frm" action="PasswordUpdateController" method="post">
      <h3>   <label>Enter New Password</label></h3>
         
         
         <input name="new password" type ="text"  pattern ="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required >
         
          <div class="editt">
           <a href="#"><button>Submit </button></a>
      </div>
         
         </form>
             
         </div>
     </section>

</section>
<footer style="margin-top:75%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>