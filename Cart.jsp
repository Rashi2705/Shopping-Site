<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Product_Details" %>
     <%@page import="com.model.Thrift_product" %>
      <%@page import="com.model.Seller_Reg" %>
    <%@ page import="com.web.Logincontroller"%>
     <%@ page import="com.model.Cart"%>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CART</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<style>
.cat{
margin-top:2%;
padding:2%;
margin-left:5%;

}
.catt{
margin-top:4%;

}
.pimg{
width:65%;
height:13rem;
padding:1.2%;
margin-left:-4rem;
margin-top:0.5rem;
}
.pr{
text-align:center;
}
p{
text-transform:capitalize;
font-size:1rem;
}
b{
font-size:1rem;
}
.price{
   text-decoration-line: line-through; 
   color:grey;
   margin-left:2%;
   margin-right:2%;
   
}

.wish{
width:100%;
padding:2%;
text-align:center;
border-style:none;
box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
background-color:white;
}
.pro{
float:left;

}
.proimg{
width:35%;
}
.det{
width:65%;
margin-left:-3.4rem;
margin-bottom:5%;
}
.wish{
float:left;
width:45%;
padding:3.4%;
}
.wishr{
margin-left:2%;
}


.pdescription{
font-size:1.2rem;
color:grey;
padding:2%;
}
.partt{
float:left;


}
.pleft{
width:41rem;
margin-bottom:2%;
height:14.5rem;
box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}
.pright{
width:29.3%;
padding:2%;

float:right;
margin-right:5%;

border-style: groove;
border-width:0.7px 0 0 0.7px ;
}

.discount{
color:#ff9999;

}
.price{
   text-decoration-line: line-through; 
   color:grey;
   margin-left:2%;
   margin-right:2%;

}
.qty{
float:left;


}
.qu{
width:30%;
}
.sc{
width:90%;
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
    <h1 style="font-size:2rem; margin-top:16%;margin-right:5%;margin-left:5%;"><i>Shopping Cart</i></h1><hr style="margin:0 5% 0 5%">
   <section class="cat partt">
 
  
   <%
   String e_mail=mail;
   Session s=HibernetUtil.getFactory().openSession();
   Query q=s.createQuery("from Cart c where c.email=:email").setParameter("email", e_mail);
   List<Cart>list=q.list();
   int Total_ammount=0;
   int Total_MRP=0;
   int discount=0;
   int prid=0;
   int cid=0;
   String Size="";
   String Colour="";
  String Quantity="";
   String store_name="";
   String company_name="";
   for(Cart cart:list){
   prid=cart.getProduct_id();
Size=cart.getSize();
Colour=cart.getColour();
Quantity=cart.getQuantity();
cid=cart.getCid();

   Query query=s.createQuery("from Product_Details p where p.pid=:pid").setParameter("pid", prid);
   List<Product_Details>list2=query.list();
  if(list2.isEmpty()==false){

for(Product_Details product:list2){
	Total_ammount=Total_ammount+Integer.parseInt(product.getFinal_price())*Integer.parseInt(Quantity);
	Total_MRP=Total_MRP+Integer.parseInt(product.getPrice())*Integer.parseInt(Quantity);
	int sid=product.getSid();
	
	 Query query2=s.createQuery("from Seller_Reg sr where sr.sid=:id").setParameter("id", sid);
	   List<Seller_Reg>list3=query2.list();
	 
	   for(Seller_Reg srg:list3){
		 store_name=srg.getStore_name(); 
		 company_name=srg.getCompany_name();
	   }
	%>
   <section class=" pleft part" >
  <section class="pro proimg"> <div class="pr"> <a href="particularproduct.jsp">
         <img src= "http://localhost:8080/sellerUploads/<%= product.getSimagename() %>" alt="clothing" class ="pimg"/>
         
         </a>  </div></section>
    <section class="pro det" >     
   <p><b  class="title"><%=product.getTitle() %>  </b></p>
   <p style="color:grey;">Sold By <%=company_name %>(<%=store_name %>)</p>
   
   
   
   
   
   </div>
   <div class ="qty sc"><p>  Size : <%=Size %> <span style="margin-left:3%;"> Color: <%=Colour %></span> <span style="margin-left:3%;"> Quantity:<%=Quantity %> </span></p></div>
     <p> <b class="final">Rs.<%=product.getFinal_price() %></b><span class="price">  Rs.<%=product.getPrice() %></span><span class="discount">  (<%=product.getDiscount()%>%OFF)</span> </p>
  

 <form action="cart_delete_controller" method="post">
   <input type="hidden" name="CId" value=<%=cid %>>
     <p class="wishlist"><button type="submit" class ="wish" >REMOVE</button></p></form>
   <form action="Wishlist_controller" method="post"> <input type="hidden" name="PId" value=<%=product.getPid() %>> 
   <p class="wishlist"><button class ="wish wishr" href="wishlist.jsp"> MOVE TO WISHLIST</button></p></form>
   
 
 
   </section>  
 </section>
 
 
   <%
	
}
  }
  else{
	  Query query3=s.createQuery("from Thrift_product p where p.pid=:pid").setParameter("pid", prid);
	   List<Thrift_product>list4=query3.list();
	  for(Thrift_product product:list4){
		  Total_ammount=Total_ammount+Integer.parseInt(product.getFinal_price())*Integer.parseInt(Quantity);
			Total_MRP=Total_MRP+Integer.parseInt(product.getPrice())*Integer.parseInt(Quantity);
			int sid=product.getSid();
			
			 Query query2=s.createQuery("from Seller_Reg sr where sr.sid=:id").setParameter("id", sid);
			   List<Seller_Reg>list3=query2.list();
			 
			   for(Seller_Reg srg:list3){
				 store_name=srg.getStore_name(); 
				 company_name=srg.getCompany_name();
			   }
			%>
		   <section class=" pleft part" >
		  <section class="pro proimg"> <div class="pr"> <a href="particularproduct.jsp">
		         <img src= "http://localhost:8080/thriftUploads/<%= product.getTimagename() %>" alt="clothing" class ="pimg"/>
 		         
		         </a>  </div></section>
		    <section class="pro det" >     
		   <p><b  class="title"><%=product.getTitle() %>  </b></p>
		   <p style="color:grey;">Sold By <%=company_name %>(<%=store_name %>)</p>
		   <div class="qty qu"><p><form>
		   
		   
		   </form>
		   
		   
		   
		   
		   </div>
		  <div class ="qty sc"><p>  Size : <%=Size %> <span style="margin-left:3%;"> Color: <%=Colour %></span> <span style="margin-left:3%;"> Quantity:<%=Quantity %> </span></p></div>
		     <p> <b class="final">Rs.<%=product.getFinal_price() %></b><span class="price">  Rs.<%=product.getPrice() %></span><span class="discount">  (<%=product.getDiscount()%>%OFF)</span> </p>
		  

		 <form action="cart_delete_controller" method="post">
		   <input type="hidden" name="CId" value=<%=cid %>>
		     <p class="wishlist"><button type="submit" class ="wish" >REMOVE</button></p></form>
		   <form action="Wishlist_controller" method="post"> <input type="hidden" name="PId" value=<%=product.getPid() %>> 
		   <p class="wishlist"><button class ="wish wishr" href="wishlist.jsp"> MOVE TO WISHLIST</button></p></form>
		   
		 
		 
		   </section>  
		 </section>
		 
		 
		   <%
			
		}  
  }
  }
 
   
s.close();
%> 

   </section>
  
    <section class=" pright partt catt">
   <p style="color:grey;">PRICE DETAILS</p>
   <p>Total MRP  :   <%= Total_MRP %></p>
   <p>Discount on MRP :  <%= Total_MRP-Total_ammount %></p>
   
   <hr>
   <p>Total Amount   :  <%=Total_ammount %></p>
   <p><span style="color:#ff9999;">(Excluding Delivery Charges)</span></p>
   <%
   if(mail!=null)
   {
   %>
   <p class="wishlist"><a href="cartproceedtobuy.jsp"><button class ="wish wishr"  style="width:95%;background-color:#ff0066;color:white;"> <b>PROCEED TO BUY</b></button></a></p>
   <%
   }
   else{
	   %>
	   <form onsubmit="submitClick()"><button class ="wish wishr"  style="width:95%;background-color:#ff0066;color:white;"> <b>PROCEED TO BUY</b></button></form>
	   <% 
   }
   
   %>
 
   </section>
    <script type="text/javascript">
function submitClick(){
	 alert ("Login to Add product to cart");  
}
</script>
</body>
</html>