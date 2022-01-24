<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Product_Details" %>
     <%@ page import="com.web.Logincontroller"%>
     <%@ page import="com.model.Cart"%>
       <%@ page import="com.model.Wishlist"%>
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
border-style: groove;
border-width:0.7px;
width:22%;
margin:1%;

}
.pimg{
width:104%;
height:20rem;
margin-left:-2%;
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
width:100%;
padding:5%;
text-align:center;
border-style:none;

box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
background-color:white;
}
.mtc{
font-size:1rem;
color:#ff0066;
}

.prb {
border: none;
width:100%;
background-color:white;
}
</style>
</head>
<body>
   <section><%@include file="afterloginnav.jsp" %></section>
   <section class="cat">
   <%
    HttpSession Session=request.getSession();
   String e_mail=  (String) Session.getAttribute("email_id"); 
   Session s=HibernetUtil.getFactory().openSession();
   Query q=s.createQuery("from Wishlist w where w.email=:email").setParameter("email", e_mail);
   List<Wishlist>list=q.list();

   int prid=0;
   for(Wishlist wish:list){
   prid=wish.getProid();


   Query query=s.createQuery("from Product_Details p where p.pid=:pid").setParameter("pid", prid);
   List<Product_Details>list2=query.list();


   for(Product_Details product:list2){
	
	%>
   <div class="part">
   <div class="pr"> <form action="Perticular_page_controller" method="post">
   <input type="hidden" name="Id" value=<%=product.getPid() %>>
   <button type="submit" href="#" class="prb">       
 <img src= "http://localhost:8080/sellerUploads/<%= product.getSimagename() %>" alt="clothing" class ="pimg"/>
 </button></form>
 
           
   <p ><b><%=product.getTitle() %>  </b></p>
    <p> <b>Rs.<%=product.getFinal_price() %></b><span class="price">  Rs.<%=product.getPrice() %></span><span class="discount">  (<%=product.getDiscount()%>%OFF)</span> </p>
   
 <form action="Wishlist_delete_controller" method="post">
   <input type="hidden" name="PId" value=<%=product.getPid() %>> <p class="wishlist" style="margin-top:-2%; margin-bottom:-0.2%;"><button class ="wish" href="#">  <span class="mtc">REMOVE</span></button></p></form>

   
   </div>
   </div>
   <%
	
}
   }

s.close();
%>
   </section>
   <section style="margin-top:10%;"> <%@include file = "ftr.jsp" %></section>
</body>
</html>