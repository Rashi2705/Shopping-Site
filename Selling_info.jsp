<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.web.Logincontroller" %>
        <%@page import="com.util.HibernetUtil" %>
         <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.User" %>
     <%@page import="com.model.Order_details" %>
      <%@page import="com.model.Product_Details" %>
        <%@page import="com.model.Thrift_product" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
  <style>
     .sec{
   
     margin:2%;
     box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
     }
     
.img{
width:25%;
box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
padding:2% 4% 4% 2%;
height:10rem;float:left;
}
.details{
width:55%;
box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
padding:2% 4% 2% 4%;
height:11rem;float:left;
     }
     fl{
     float:left;
     }
     section{
     margin: 5% 15% 5% 15%;
     }
     </style>
</head>
<body><section>
        <h1 style="font-size:1.7rem;">ORDERS RECIEVED</h1><hr>
        <div class="sec" >
    <% 
HttpSession Session=request.getSession();

Integer id=  (Integer) Session.getAttribute("seller_id");
Session s=HibernetUtil.getFactory().openSession();
Query query=s.createQuery("from Order_details o where o.sid=:sid").setParameter("sid", id);
List<Order_details>list2=query.list();
for(Order_details order:list2){
	   
	   Query query2=s.createQuery("from Product_Details p where p.pid=:pId").setParameter("pId", order.getProduct_id());
   List<Product_Details>list3=query2.list();
   if(list3.isEmpty()==false){
   for(Product_Details product:list3){
	   %>
	    <div class="img fl" ><img src="http://localhost:8080/sellerUploads/<%= product.getSimagename() %>" alt="Avatar" style="width:100% ;height:100%;margin-left:5%">
  </div>
	   <% 
   }
   
   }
   else{
	   Query query3=s.createQuery("from Thrift_product p where p.pid=:pId").setParameter("pId", order.getProduct_id());
	   List<Thrift_product>list4=query3.list();
	   for(Thrift_product product:list4){
		   %>
		    <div class="img fl" ><img src="http://localhost:8080/sellerUploads/<%= product.getTimagename() %>" alt="Avatar" style="width:100% ;height:100%;margin-left:5%">
	  </div>
		   <% 
	   }
   }
   %>
	  
  <div class="details fl" style="margin-bottom:5%;">
   <p><span style="font-size:1.3rem; text-align:center;color:#ff0066;"> <%=order.getProduct_title() %>	</span></p>
   
   <p> SIZE : <%=order.getSize()%><span style="margin:0 2% 0 2%;">COLOUR :<%=order.getColour()%> </span>QUANTITY :<%=order.getQuantity()%></p>
   <p>PRICE : <%= order.getT_amount() %><span style="margin:0 2% 0 2%;">DISCOUNT :<%=order.getDiscount()%></span>FINAL PRICE :<%=order.getF_amount()%></p>
 <p>Added Date :<%=order.getAddedDate()%></p>
    </div>
  <%
  
  }
  s.close();
  %>
      
      </div>

</section>
</body>
</html>