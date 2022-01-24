<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.web.Logincontroller" %>
        <%@page import="com.util.HibernetUtil" %>
         <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Admin" %>
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
     .b{
	margin-left:15%;
		 
}
.a{
margin-left:15%;
}
  .c{
	margin-left:15%;
		 
}
  .d{
	margin-left:15%;
		 
}
.left p{
	padding:2%;
	color:grey;
	font-size:25px;
}
.left a{
	font-size:20px;
	margin-bottom:4%;
}
h1{
color:grey;
font-size:40px;
}
.bot div{
	
	width:35%;
	height:200px;
	float:left;
	margin-top:3%;
	box-shadow: rgba(100, 100, 111, 0.5) 0px 7px 29px 0px;
   text-align:center;
   padding-top:2%;
}
.usr{
background-color:#ffe6f3;
padding:2% 2% 0 2%;
}


     </style>
        
</head>
<body>
 <%
 
 HttpSession Session=request.getSession();
 String email=  (String) Session.getAttribute("email_id");
 Session s= HibernetUtil.getFactory().openSession();
 
   Query q=s.createQuery("from Admin user where user.email=:email").setParameter("email", email);
  
   List<Admin>list=q.list();
   %>
<section style="display:none;"><%@include file="afterloginnav.jsp" %></section>
<section class="usr" style="margin-top:5%">
   <h1>Admin Dashboard</h1>
  
  <%
   Query qq=s.createQuery("from Admin user where user.email=:email").setParameter("email", email);
   List<Admin>listt=qq.list();
   for(Admin user:listt){
	   %>
   	<p style="font-size:1.4rem;font-transform:capitalize;"><%=user.getName() %></p>
   	<% 
   }
   %>   <hr>
   <section class ="left">
   
   <div><p>View Details</p>  
     <a href="Customer_info.jsp" >Customers</a><br></br>
     <a href="Seller_info.jsp">Sellers</a><br></br>
     <a href="viewproducts.jsp">Products</a><br></br>
      <a href="donationinfo.jsp">Donation Items</a><br></br>
       <a href="FCinfo.jsp" >Feedback/Complaint</a></div>
     <hr>
    <div > <p> Post</p>
      <a href="Blogpost.jsp">Post a Blog</a><br></br></div>
     <hr>
      <div > <p> Logout</p>
     <form action="Logout_controller" method="post">             <button type="submit" style="border:none;font-size:17px;background-color:white; ">Logout</button>
               </form>   <br></br></div>
     
   
   </section>
   
   
     <section class ="right">
    
      
     
      <section class="bot">
          <a href="Blogpost.jsp">
          <div class="a" >
          
          <img src="https://t3.ftcdn.net/jpg/02/73/79/70/240_F_273797075_lqtsBJvUc9QsulXvIexCUHGLJWntTOL5.jpg" style="width:80px;height:80px;">
         <p>Blog Post</p>
          <p style="color:grey">Post a Blog</p>
          </div>
          </a>
           <a href="Seller_info.jsp">
          <div class="b">
          <img src="https://th.bing.com/th/id/OIP.UwosdD8OLFfk9kFwA9V2WwHaHa?w=172&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7" style="width:65px;height:65px;">
         
         <p>Seller Info</p>
         <p style="color:grey">Check Sellers and Product Details</p>
         </div> </a>
          <a href="Customer_info.jsp">
          <div class="c">
           <img src="https://th.bing.com/th/id/OIP.UwosdD8OLFfk9kFwA9V2WwHaHa?w=172&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7" style="width:65px;height:65px;">
          <p>Customer Info</p>
          <p style="color:grey">Check Customer Details</p>
         </div> </a>
         <a href="donationinfo.jsp">
          <div class="d">
          <img src="https://cdn-icons-png.flaticon.com/128/838/838680.png" style="width:65px;height:65px;">
          <p>Donation Info</p>
          <p style="color:grey">View Donation form details</p>
         </div> </a>
      </section>
     </section>

</section>

</body>
</html>