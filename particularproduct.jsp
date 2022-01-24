<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Product_Details" %>
     <%@ page import="com.web.Logincontroller"%>
     <%@ page import="com.web.Perticular_page_controller"%>
     <%@ page import="com.model.Cart"%>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
       <%@ page import="com.web.Seller_login_controller"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<style>
.cat{
margin-top:10%;
padding:2%;
margin-left:5%;
}
.pimg{
width:100%;
height:30rem;
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
font-size:1.5rem;
}
.price{
   text-decoration-line: line-through; 
   color:grey;
   margin-left:2%;
   margin-right:2%;
   font-size:1.4rem;
}
.part{
width:100%;
margin-bottom:100%;
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
width:35%;
}
.det{
margin-left:4%;
width:60%;
}
.wish{
float:left;
width:45%;
}
.wishr{
margin-left:2%;
}
.title{
font-size:1.8rem;
}
.final{
font-size:1.6rem;
}
.pdescription{
font-size:1.2rem;
color:grey;
padding:2%;
}

label{
margin:0 0 4% 5%;
}
.wishlist{
margin-top:7%;
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
   Integer id=(Integer)Session.getAttribute("proid");  
   System.out.println("it is jsp:"+id);
//int id=Perticular_page_controller.proid;
Session s=HibernetUtil.getFactory().openSession();
Query q=s.createQuery("from Product_Details p where p.pid=:id").setParameter("id",id);
List<Product_Details>list=q.list();


for(Product_Details product:list){
	String Result=product.getSizes().trim();
	String[]sizes=Result.split(" ");
	String Colour=product.getColours().trim();
	String[] colour=Colour.split(" "); 
	
	%>
   <section class="part">
  <section class="pro"> <div class="pr"> <a href="particularproduct.jsp">
         <img src= "http://localhost:8080/sellerUploads/<%= product.getSimagename() %>" alt="clothing" class ="pimg"/>
          
         </a>  </div></section>
    <section class="pro det" > 
     
                                   
                                    
          
   <p ><b  class="title"><%=product.getTitle() %>  </b></p><hr>
     <p> <b class="final">Rs.<%=product.getFinal_price() %></b><span class="price">  Rs.<%=product.getPrice() %></span><span class="discount">  (<%=product.getDiscount()%>%OFF)</span> </p>
  
   <br></br> 
    <%if(mail!=null)
	   {
	   %>
   <form action="cart_controller" method="post">
   <label for ="Category">Size</label>
          <select id="category" name="size">
                                   <%for(String a:sizes){
                                	   %>
            
      <option value=<%=a %>><%=a %></option>
                  
              <%
                                   }
                    %>
                        </select>
                         <label for ="Category">Colour</label>
          <select id="category" name="colour">
                                   <%for(String b:colour){
                                	   %>
                                   
                  
                     <option value=<%=b %>><%=b %></option>
                    
                     
                   
                    <%
                                   }
                    %>
                     </select> 
                     <label for="Quantity">Quantity</label>
                     <select id="quantity" name="Quantity" >
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     </select>
   <input type="hidden" name="PId" value=<%=product.getPid() %>>  
   <input type="hidden" name="SId" value=<%=product.getSid() %>> 
   <input type="hidden" name="amount" value=<%=product.getPrice() %>>  
   <input type="hidden" name="final_price" value=<%=product.getFinal_price() %>>  
   <%int discount=(Integer.parseInt(product.getPrice())-Integer.parseInt(product.getFinal_price() ));
                System.out.println(discount);
                %>
   <input type="hidden" name="discount" value=<%=discount %>
   >  
   
   <input type="hidden" name="product_title" value=<%=product.getTitle() %>> 
     <p class="wishlist"><button class ="wish" href="Cart.jsp">      <i class='fa fa-shopping-cart cart' style=" margin-right: 6%;font-size:20px;color: black;padding:1%;"></i>ADD TO CART</button></p></form>
 <%
	   }
    else{
    	%>
    	 <form onsubmit="cartalert()">
    
  
     <p class="wishlist"><button class ="wish" href="Cart.jsp">      <i class='fa fa-shopping-cart cart' style=" margin-right: 6%;font-size:20px;color: black;padding:1%;"></i>ADD TO CART</button></p></form>
 <%
    	
    }
 %>
 <%
 if(mail!=null)
 {
 %>
  <form action="Wishlist_controller" method="post"> <input type="hidden" name="PId" value=<%=product.getPid() %>>
   <p class="wishlist"><button class ="wish wishr" href="Wish.jsp"> <i  class="material-icons" style="  margin-right: 6%; font-size:20px;">favorite_border</i>WISHLIST</button></p></form>
  <%
 }
 else{
	 %>
	 <form onsubmit="wishalert()">
   <p class="wishlist"><button class ="wish wishr" href="Wish.jsp"> <i  class="material-icons" style="  margin-right: 6%; font-size:20px;">favorite_border</i>WISHLIST</button></p></form>
  <% 
 }
  %>
   <br></br> <br></br>
   <p><hr></p>
   <p><b>PRODUCT &nbspDETAILS</b></p>
   <p class="pdescription"><%=product.getDescription() %></p>
   </section>  

   
 
   </section>
   <%
	
}

s.close();
%>
   </section>
    <script type="text/javascript">
function cartalert(){
	 alert ("Login to Add product to Cart");  
}
function wishalert(){
	 alert ("Login to Add product to Wishlist");  
}

</script>
   <section style="margin-top:10%;"> <%@include file = "ftr.jsp" %></section>
</body>
</html>