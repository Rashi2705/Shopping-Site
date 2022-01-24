<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.web.Logincontroller" %>
        <%@page import="com.util.HibernetUtil" %>
         <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.User" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>

<link href="userprofile.css" rel="stylesheet" type="text/css"/>
<link href="editprofile.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
     <script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
     <style>
.don{
box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;	
padding:4% 5% 4% 5%;
	margin:5% 20% 5% 20%;
	background:white;
}
.donate{
background-color:#f2f2f2;
padding:2%;
}

 input{
	width:93%;
	display:flex;
	margin-bottom:4%;
	padding:2%;
}
body{
background:#f7e6ff;
}
p{
font-size:40px;
text-align:center;
}
label{
font-size:20px;
}
.edittt button{
		  background-color: #f7e6ff;
    color: black;
    padding: 16px 42% 16px 42%;
    font-size: 18px;
    border: none;
    margin-top:5%;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
    
    
}
textarea{
resize:none;
}

</style>
        
</head>
<body>
<%
 HttpSession Session=request.getSession();
String email=  (String) Session.getAttribute("email_id"); 
Session s= HibernetUtil.getFactory().openSession();

%>


 
  
   <section class="don">
    <p >Update Product Details</p><hr>
    <div style="margin-bottom:15%">
               <form   action="UpdateProductInfoController" method="post">
            
 
        
        
            <label>Price of Product</label>
         <input name="price"type ="text" placeholder="Enter price in Rupees eg. 450(do not add Rs sign) " required>
         <label>Discount</label>
         <input name="discount"type ="text" placeholder="eg 45% OFF(enter in this formate)" required>
         <label>Final Price</label>
         <input name="final_price"type ="text" placeholder="Enter price after giving discount " required>
         <label>Sizes Available</label>
         <input name="sizes"type ="text" placeholder="eg. L XL M" >
         <label>Enter Colour Available</label>
         <input name="colours"type ="text"  >
      <div class="edittt " >   
       <a href="#">  <button type="submit">Update</button></a>
         </div>
         </form>
  </div>
     </section>
    

</body>
</html>