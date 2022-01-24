<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Product_Details" %>
      <%@page import="com.model.Thrift_product" %>
     <%@ page import="com.web.Seller_login_controller"%>
     <%@ page import="com.web.Search_controller"%>
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
margin-top:10%;
padding:2%;
margin-left:5%;
}
.part{
display:inline-block;

width:22%;
margin:1%;
}
.pimg{
width:100%;
height:16rem;
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
.pr button{
border: none;
width:87%;
height:50%;
}
</style>
</head>
<body>
 
<%  HttpSession Session=request.getSession();
 String mail=  (String) Session.getAttribute("email_id"); %>
<% if(mail!=null)
{
%>
   <section><%@include file="afterloginnav.jsp" %></section>
 <%
}
else{
	%>
	<section><%@include file="bottomnav.jsp" %></section>
	<% 
}
 %> 
   <section class="cat">
   <%
	
   Integer seller_id=(Integer)Session.getAttribute("seller_id");   
Session s=HibernetUtil.getFactory().openSession();
Query que=s.createQuery("from Product_Details p where p.title like :search or p.subcategory like :search or p.category like :search ").setParameter("search","%"+Search_controller.search+"%");
List<Product_Details>list1=que.list();

for(Product_Details product:list1){
	
	%>
     <div class="part">
   <div class="pr"> 
   <form action="Perticular_page_controller" method="post">
   <input type="hidden" name="Id" value=<%=product.getPid() %>>
   <button type="submit" href="#">       <img src= "http://localhost:8080/sellerUploads/<%= product.getSimagename() %>" alt="clothing" class ="pimg"/> </button></form>
           
   <p ><b><%=product.getTitle() %>  </b></p>
 <form action="Wishlist_controller" method="post"> <input type="hidden" name="PId" value=<%=product.getPid() %>> <p class="wishlist"><button class ="wish" type="submit">   <i  class="material-icons" style="  margin-right: 6%; font-size:20px;margin-top"1%;"">favorite_border</i>WISHLIST</button></p> </form>
   <p> <b>Rs.<%=product.getFinal_price() %></b><span class="price">  Rs.<%=product.getPrice() %></span><span class="discount">  (<%=product.getDiscount()%>%OFF)</span> </p>
   
   

   
   </div>
   </div>
   <%
}	


	Query query=s.createQuery("from Thrift_product p where p.title like :search  or p.subcategory like :search or p.category like :search").setParameter("search","%"+Search_controller.search+"%");
	List<Thrift_product>list2=query.list();
	for(Thrift_product product:list2){
		
		%>
	     <div class="part">
	   <div class="pr"> 
	   <form action="Perticular_page_controller" method="post">
	   <input type="hidden" name="Id" value=<%=product.getPid() %>>
	   <button type="submit" href="#">        <img src= "http://localhost:8080/thriftUploads/<%= product.getTimagename() %>" alt="clothing" class ="pimg"/> </button></form>
	           
	   <p ><b><%=product.getTitle() %>  </b></p>
	 <form action="Wishlist_controller" method="post"> <input type="hidden" name="PId" value=<%=product.getPid() %>> <p class="wishlist"><button class ="wish" type="submit">   <i  class="material-icons" style="  margin-right: 6%; font-size:20px;margin-top:1%;">favorite_border</i>WISHLIST</button></p> </form>
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