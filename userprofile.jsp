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
   <%@ page session="true" %>
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
     .a{
     margin-left:3%;
    
     }
     .c{
     margin-left:3%;
     }
     .b{
     margin-left:3%;
     }
    
     </style>
        
</head>
<body>
 <%    HttpSession Session=request.getSession();
   String emal_id=  (String) Session.getAttribute("email_id");
   
            
Session s= HibernetUtil.getFactory().openSession();
%>

<%@ include file= "afterloginnav.jsp" %>
<section class="usr" style="margin-top:15%">
   <h1>Account</h1>
   <%
   Query q=s.createQuery("from User user where user.email_id=:email").setParameter("email", emal_id);
   List<User>list=q.list();
   for(User user:list){
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
     <a href="Verify_password.jsp">Change Password </a><br></br>
     <hr>
    <div > <p> LEGAL</p>
      <a href="terms.jsp">Terms of Use</a><br></br>
     <a href="privacypolicy.jsp">Privacy Policy</a></div> 
     
   
   </section>
   
   
     <section class ="right">
    
      <div class="rightprofile">
           <div class="wel"> <p><h1 style="font-family:Comic Sans MS, Comic Sans, cursive; font-style:oblique;font-size:150%">WELCOME</h1></p>
       <% 
           for(User user:list){
	   %>
   	  <p><%=user.getName() %></p>
   	  <p><%=user.getEmail_id() %></p>
   	<% 
   }
       %>
            </div> 
                  <div class="btn">
           <a href="editprofile.jsp"><button>EDIT PROFILE</button></a>
      </div>
      </div>
     
      <section class="bot">
          <a href="orders.jsp">
          <div class="a">
          
          <img src="https://cdn-icons-png.flaticon.com/512/3210/3210041.png" style="width:30px;height:30px;">
         <p>Orders</p>
          <p style="color:grey">Check your orders</p>
          </div>
          </a>
           <a href="Verify_password.jsp">
          <div class="b">
          
          <img src="https://cdn-icons-png.flaticon.com/512/3210/3210041.png" style="width:30px;height:30px;">
         <p>Change Password</p>
          <p style="color:grey">Change Password</p>
          </div>
          </a>
         
          <a href="profile.jsp">
          <div class="c">
          <box-icon name='edit' size = "md"> </box-icon>
          <p>Profile Details</p>
          <p style="color:grey">Change your profile details & password</p>
         </div> </a>
      </section>
     </section>

</section>
<footer style="margin-top:50%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>