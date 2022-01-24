<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Product_Details" %>
     <%@page import="com.model.Thrift_product" %>
     <%@ page import="com.web.Seller_login_controller"%>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
.block{

padding:2% 4% 2% 4%;

}
.item{
box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
background-color:#e6ffff;
padding:0.7%;
font-size:20px;
text-align:center;
width:95%;
}

.block div{
float:left;
}
.img{
width:23%;
box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
padding:1%;
height:17rem;
}
.details{
width:92%;
box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
padding:2% 2% 2% 2%;
margin-bottom:5%;
}
.desc{
box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;
padding:3%;
margin-top:2%;

}
.gap{
margin-bottom:20%;

}


.edittt button{
		  background-color: #f7e6ff;
    color: black;
    padding: 16px 100% 16px 100%;
    font-size: 18px;
    border: none;
    margin-top:5%;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
    
    
}

.l{
 
float:left;
width:20%;
}
.edittt a{
text-decoration:none;
}
.pdetails{
margin-left:5%;
width:58%;
}
span{
margin:0 5% 0 5%;
}
.r{
margin-left:13rem;
}
.edittt{
width:100%;
}
</style>
</head>
<body>

 
 <div class="gap">
<%
HttpSession Session=request.getSession();

Integer s_id=  (Integer) Session.getAttribute("seller_id");
Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from Product_Details p where p.sid=:id").setParameter("id",s_id);
List<Product_Details>list=q.list();


for(Product_Details product:list){
	
	%>
	
	<div class="block" style="margin-bottom:30%;" >
	<section class="item"> <p><%=product.getCategory() %></p></section>
	
	<div class="details">
	<div class="img" ><img src="http://localhost:8080/sellerUploads/<%= product.getSimagename() %>" alt="Avatar" style="width:100% ;height:100%;">
  </div>
	<div class="pdetails">
    <section class="city"> <p style="text-align:center">TITLE : <%=product.getTitle() %>  </p>
       <p class="desc"> <%=product.getDescription() %> </p>
        <p >PRICE: <%=product.getPrice()  %> <span style="color:red">  DISCOUNT: <%=product.getDiscount()   %> %OFF </span> FINAL PRICE: <%=product.getFinal_price()  %> </p>  
           <p>SIZE<b>/</b>DIMENSION: <%=product. getSizes()  %> <span>COLOURS: <%=product.getColours()  %>  </span> </p> 
           <div class="edittt " >
	
 <form action="product_id_controller" method="post">
 <input type="hidden" name="Id" value=<%=product.getPid() %>>
 <input type="hidden" name="section" value="Main">
                 <div class="l"> <a  href="product_update"> <button>UPDATE</button></a></div>     </form>
<form action="Product_delete_controller" method="post"><input type="hidden" name="PId" value=<%=product.getPid() %>>
<input type="hidden" name="section" value="Main">
                            <div class="l r">  <a > <button>DELETE</button></a></div></form>      
           </div>

     </section>
     </div>
	</div>
	
 
   
 
</div>

	<%
	
}
%>
<section class="item" style=" width:98%; background-color: #f7e6ff;"><p style="font-size:1.7rem;">Thrift</p></section>
<% 
Query query=s.createQuery("from Thrift_product p where p.sid=:id").setParameter("id",s_id);
List<Thrift_product>list2=query.list();


for(Thrift_product product:list2){
	
	%>
	
	<div class="block" style="margin-bottom:30%;" >
	<section class="item"> <p><%=product.getCategory() %></p></section>
	
	<div class="details">
	<div class="img" ><img src="http://localhost:8080/thriftUploads/<%= product.getTimagename() %>" alt="Avatar" style="width:100% ;height:100%;">
  </div>
	<div class="pdetails">
    <section class="city"> <p style="text-align:center">TITLE : <%=product.getTitle() %>  </p>
       <p class="desc"> <%=product.getDescription() %> </p>
        <p >PRICE: <%=product.getPrice()  %> <span style="color:red">  DISCOUNT: <%=product.getDiscount()%>%OFF </span> FINAL PRICE: <%=product.getFinal_price()  %> </p>  
           <p>SIZE<b>/</b>DIMENSION: <%=product. getSizes()  %> <span>COLOURS: <%=product.getColours()  %>  </span> </p> 
           <div class="edittt " >
	
 <form action="product_id_controller" method="post">
 <input type="hidden" name="Id" value=<%=product.getPid() %>>
 <input type="hidden" name="section" value="Thrift">
                  <div class="l"> <a  href="product_update"> <button>UPDATE</button></a></div>     </form>
<form action="Product_delete_controller" method="post"><input type="hidden" name="PId" value=<%=product.getPid() %>><input type="hidden" name="section" value="Thrift">
                            <div class="l r">  <a > <button>DELETE</button></a></div></form>  
           </div>

     </section>
     </div>
	</div>
	
 
   
 
</div>

	<%
	
}
s.close();
%>
</div>

<br><br>


</body>
</html>