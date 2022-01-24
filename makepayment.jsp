<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Product_Details" %>
      <%@page import="com.model.Seller_Reg" %>
       <%@page import="com.model.User" %>
    <%@ page import="com.web.Logincontroller"%>
     <%@ page import="com.model.Cart"%>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
p{
text-transform:capitalize;
font-size:1rem;
}
b{
font-size:1rem;

}

.wish{
width:100%;
padding:2%;
text-align:center;
border-style:none;
box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
background-color:white;
}

.wish{
float:left;
width:45%;
padding:3.4%;
}
.wishr{
margin-left:2%;
}


.pright{
width:29.3%;
padding:2%;

margin-left:10%;
margin-right:5%;

border-style: groove;
border-width:0.7px 0 0 0.7px ;
}

</style>
</head>
<body>
<%
  HttpSession Session=request.getSession();
String e_mail=  (String) Session.getAttribute("email_id");

Session s=HibernetUtil.getFactory().openSession();

Query q=s.createQuery("from Cart c where c.email=:email").setParameter("email", e_mail);
List<Cart>list=q.list();
int Total_ammount=0;
int Total_MRP=0;
int discount=0;
int prid=0;
String Quantity="";
String product_title="";
                         for(Cart cart:list){
prid=cart.getProduct_id();
Quantity=cart.getQuantity();

Query query=s.createQuery("from Product_Details p where p.pid=:pid").setParameter("pid", prid);
List<Product_Details>list2=query.list();


for(Product_Details product:list2){
	Total_ammount=Total_ammount+Integer.parseInt(product.getFinal_price())*Integer.parseInt(Quantity);
	Total_MRP=Total_MRP+Integer.parseInt(product.getPrice())*Integer.parseInt(Quantity);
	int sid=product.getSid();
	product_title=product.getTitle()+",";	
}
}

%> 


      <h1 style="font-size:2rem; margin-top:6%;margin-right:10%;margin-left:5%;"><i>MAKE PAYMENT</i></h1><hr style="margin:0 10% 0 10%">
 
    <section class=" pright partt catt">
   <p style="color:grey;">PRICE DETAILS</p>
   <p>Total MRP : <%=Total_MRP %> </p>
   <p>Discount on MRP :- <%=Total_MRP-Total_ammount %></p>
   <p>Delivery Charges</p>
   <hr>
   <p>Total Amount : <%=Total_ammount %></p>
   <p><span style="color:#ff9999;">(Including Delivery Charges)</span></p>
   <% 
   Query qu=s.createQuery("from User u where u.email_id=:Eid").setParameter("Eid", e_mail);
   List<User>list4=qu.list();
   for(User user:list4){
   %>
   <p class="wishlist"><a href="payuform.jsp?amount=<%=Total_ammount %>&firstname=<%=user.getName() %>&email=<%=e_mail %>&phone=<%=user.getPhone_no() %>&productinfo=<%=product_title %>&surl=http://localhost:8080/mavenhibernate/Payment_Success.jsp&furl=https://www.payumoney.com/merchant.html&lastname=<%=user.getName() %>&address1=<%=user.getLocation() %>&city=<%=user.getCity() %>&state=<%=user.getState() %>&zipcode=<%=user.getPincode() %>" > <b>PROCEED TO PAYMENT GATEWAY</b></a></p>
   
 <%
   }
   s.close();
 %>
   </section>
</body>
</html>