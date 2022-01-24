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
 <%@page import="com.model.Thrift_product" %>
    
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
width:30%;
box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
padding:2% 4% 4% 2%;
height:20rem;
}
.details{
width:65%;
box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
padding:2% 4% 2% 4%;
height:20rem;

}
.desc{
box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;
padding:2%;

}
.gap{
margin-botton:5%;
}
.block{
margin-top:15%;
margin-bottom:20rem;
}
.city{
margin-left:2%;

}
</style>
</head>
<body>
<section style="display:none;"><%@include file="afterthriftbottomnav.jsp" %></section>
 
 <div class="gap" style="margin-top:-14%;">
<%
HttpSession Session = request.getSession();
Integer s_id=  (Integer) Session.getAttribute("seller_id");
Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from Product_Details p where p.sid=:id").setParameter("id",s_id);
List<Product_Details>list=q.list();


for(Product_Details product:list){
	
	%>
	
	<div class="block" >
	<section class="item"> <p><%=product.getCategory() %></p></section>
	<div class="img" ><img src="http://localhost:8080/sellerUploads/<%= product.getSimagename() %>" alt="Avatar" style="width:100% ;height:100%;margin-left:5%">
  </div>
	<div class="details">
	
    <section class="city"> <p style="text-align:center;">TITLE : <%=product.getTitle() %>  </p>
       <p class="desc"> <%=product.getDescription() %> </p>
        <p >PRICE: <%=product.getPrice()  %> , DISCOUNT: <%=product.getDiscount()%>%OFF , FINAL PRICE: <%=product.getFinal_price()  %> </p>  
           <p style="text-align:center ">SIZE: <%=product. getSizes()  %> , COLOR: <%=product.getColours()  %>  </p> 
       
            
     </section>
     
	
	</div>
	
	</div>
  

 
</div>
	<%
}
	Query query=s.createQuery("from Thrift_product p where p.sid=:id").setParameter("id",s_id);
	List<Thrift_product>list1=query.list();


	for(Thrift_product product:list1){
		%>
	
		<div class="block" >
		<section class="item"> <p><%=product.getCategory() %></p></section>
		<div class="img" ><img src="http://localhost:8080/thriftUploads/<%=product.getTimagename() %>" alt="Avatar" style="width:100% ;height:100%;margin-left:5%">
	  </div>
		<div class="details">
		
	    <section class="city"> <p style="text-align:center;">TITLE : <%=product.getTitle() %>  </p>
	       <p class="desc"> <%=product.getDescription() %> </p>
	        <p >PRICE: <%=product.getPrice()  %> , DISCOUNT: <%=product.getDiscount()   %> , FINAL PRICE: <%=product.getFinal_price()  %> </p>  
	           <p style="text-align:center ">SIZE: <%=product. getSizes()  %> , COLOR: <%=product.getColours()  %>  </p> 
	       
	            
	     </section>
	     
		
		</div>
		
		</div>
	  
	   
	 
	</div>
		<%
}

s.close();
%>
</div>

<br>
<br>
<br>
<section style="margin-top:30%"> <%@include file = "ftr.jsp" %></section>
</body>
</html>