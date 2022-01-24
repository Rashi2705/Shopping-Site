<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
   <%@page import="com.util.HibernetUtil" %>
    <%@page import="org.hibernate.Session" %>
   <%@page import="com.model.Product_Details" %>
     <%@page import="com.model.Order_details" %>
      <%@page import="com.model.Seller_Reg" %>
    <%@ page import="com.web.Logincontroller"%>
     <%@ page import="com.model.Cart"%>
      <%@ page import="com.dao.UserDao"%>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
p{
  font-size:2rem;
  margin:15%;
  box-shadow: rgba(255, 255, 255, 0.1) 0px 1px 1px 0px inset, rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
 padding:4%;
}
span{
color:black;
}

</style>
</head>
<body>

   
   <section class="cat partt">
 
  
   <%
   System.out.println(request.getParameter("email"));
   String mail=request.getParameter("email");
 System.out.println("Before email");
   Session s=HibernetUtil.getFactory().openSession();
   Query q=s.createQuery("from Cart c where c.email=:email").setParameter("email", mail);
   List<Cart>list=q.list();
  UserDao userDao=new UserDao();
   for(Cart cart:list){
	   System.out.println("after email");
	   Order_details order=new Order_details(cart.getSize(),cart.getColour(),cart.getQuantity(),cart.getT_amount(),cart.getF_amount(),cart.getDiscount(),cart.getSid(),cart.getProduct_id(),cart.getProduct_title(),cart.getEmail());                	  
              userDao.saveOrder(order);      	   
              Query query=s.createQuery("from Product_Details p where p.pid=:pid").setParameter("pid", cart.getProduct_id());
              List<Product_Details>list2=query.list();
            userDao.DeleteCart(cart);

       
             }
 
   
s.close();
%> 
    <p style="color:#ff6699;">Your Payment Was Successful. <br></br><span>Please check your orders page for your placed order details. 
    click here to go to login to website again. </span><a href="login.jsp">Login</a></p>
</body>
</html>