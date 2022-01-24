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
      .usr{
background-color:#ffe6f3;
padding:2% 2% 0 2%;
}
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
   
     </style>
        
</head>
<body>
<%
HttpSession Session=request.getSession();
String email=  (String) Session.getAttribute("email_id");

Session s= HibernetUtil.getFactory().openSession();
%>
<%@ include file= "afterloginnav.jsp" %>
<section class="usr" style="margin-top:15%">
   <h1>Seller Dashboard</h1>
   <%
   Query q=s.createQuery("from User user where user.email_id=:email").setParameter("email", email);
   List<User>list=q.list();
   for(User user:list){
	   %>
   	<p><%=user.getName() %></p>
   	<% 
   }
   %>
   <hr>
   <section class ="left">
   
   <div>  <p> Sell At Main Page </p> 
     <a href="Add_product.jsp" >Add Product</a><br></br>
     <a href="product_delete_update.jsp">Update And Delete Products</a><br></br>
     <a href="Seller_view_product.jsp">View Products</a><br></br>
      <a href="Selling_info.jsp">Selling Info</a></div>
     <hr>
    <div >
    <p> Sell At thrift Store</p>
     <a href="Thrift_Add_product.jsp" >Add Product</a><br></br>
     </div>
     
     
   
   </section>
   
   
     <section class ="right">
    
      
     
      <section class="bot">
          <a href="Add_product.jsp">
          <div class="a" >
          
          <img src="https://t3.ftcdn.net/jpg/02/73/79/70/240_F_273797075_lqtsBJvUc9QsulXvIexCUHGLJWntTOL5.jpg" style="width:80px;height:80px;">
         <p>Add Products</p>
          <p style="color:grey">Add products to perticular category</p>
          </div>
          </a>
           <a href="product_delete_update.jsp">
          <div class="b">
          <img src="https://th.bing.com/th/id/OIP.UwosdD8OLFfk9kFwA9V2WwHaHa?w=172&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7" style="width:65px;height:65px;">
         
         <p>Update And Delete Products</p>
         <p style="color:grey">Update product details or Delete Products</p>
         </div> </a>
          <a href="Seller_view_product.jsp">
          <div class="c">
           <img src="https://th.bing.com/th/id/OIP.UwosdD8OLFfk9kFwA9V2WwHaHa?w=172&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7" style="width:65px;height:65px;">
          <p>View Products</p>
          <p style="color:grey">View Product Details</p>
         </div> </a>
         <a href="Selling_info.jsp">
          <div class="d">
          <img src="https://cdn-icons-png.flaticon.com/128/838/838680.png" style="width:65px;height:65px;">
          <p>Selling Info</p>
          <p style="color:grey">View Details of purchases</p>
         </div> </a>
      </section>
     </section>

</section>
<footer style="margin-top:50%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>