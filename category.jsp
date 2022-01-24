<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Product_Details" %>
     <%@ page import="com.web.Seller_login_controller"%>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
 
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<style>
.cat{
margin-top:15%;
padding:2%;
margin-left:5%;
}
.part{
display:inline-block;

width:22%;
margin:1%;
}
.pimg{
width:87%;
height:50%;
}
.pr{
text-align:center;
}
p{
text-transform:capitalize;
}
b{
font-size:1.3rem;
}
.discount{
color:#ff9999;
}
.price{
   text-decoration-line: line-through; 
   color:grey;
}
.wish{
width:87%;
padding:2%;
text-align:center;
border-style:none;
box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
background-color:white;
}

</style>
</head>
<body>
   <section><%@include file="afterloginnav.jsp" %></section>
   <section class="cat">
   <% HttpSession Session=request.getSession();
   Integer s_id=  (Integer) Session.getAttribute("seller_id");
Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from Product_Details p where p.sid=:id").setParameter("id",s_id);
List<Product_Details>list=q.list();


for(Product_Details product:list){
	
	%>
   <div class="part">
   <div class="pr"> <a href="particularproduct.jsp">
         <img src="women.jpg" alt="clothing" class ="pimg"/></a>
           
   <p ><b><%=product.getTitle() %>  </b></p>
   <p class="wishlist"><button class ="wish" href="Wish.jsp">   <i  class="material-icons" style="  margin-right: 6%; font-size:20px;margin-top"1%;"">favorite_border</i>WISHLIST</button></p>
   <p> <b>Rs.<%=product.getFinal_price() %></b><span class="price">  Rs.<%=product.getPrice() %></span><span class="discount">  (<%=product.getDiscount()%>%OFF)</span> </p>
   

   
   </div>
   </div>
   <%
	
}

s.close();
%>
   </section>
   <section style="margin-top:20%;"> <%@include file = "ftr.jsp" %></section>
</body>
</html>