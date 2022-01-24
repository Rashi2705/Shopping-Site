<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.web.Logincontroller" %>
        <%@page import="com.util.HibernetUtil" %>
         <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.Admin" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="userprofile.css" rel="stylesheet" type="text/css"/>
<link href="editprofile.css" rel="stylesheet" type="text/css"/>
 <title>Shoppe & Smile</title><style >
.left p{
	padding:2%;
	color:grey;
	font-size:25px;
}
.left a{
	font-size:20px;
	margin-bottom:4%;
}
h1{
color:grey;
font-size:40px;
}
 .nav{
     width:100%;
     }
  .right div{
  background:#DCDCDC;
  border:1px solid grey;
  
 /* box-shadow: rgba(100, 100, 111, 0.5) 0px 7px 29px 0px;*/
  }
  .right button{
  margin-left:45%;
  /*border:1px solid black;*/
  width:20%;
  height:20%;
  font-size: 18px;
  }
  .right label{
   font-size: 18px;
  }
  .right textarea,
  .right input {
      display: block;
      width: 90%;
      padding: 15px;
      margin-bottom: 10px;
      border: none;
     
      background: white;
      }
      .usr{
background-color:#ffe6f3;
padding:2% 2% 0 2%;
}
      
      
</style>
</head>
<body>
 <%
 
   HttpSession Session=request.getSession();
 String email=  (String) Session.getAttribute("email_id"); 
 Session s= HibernetUtil.getFactory().openSession();
 
   Query q=s.createQuery("from Admin user where user.email=:email").setParameter("email", email);
  
   List<Admin>list=q.list();
   %>
<section style="display:none;"><%@include file="afterloginnav.jsp" %></section>
<section class="usr" style="margin-top:5%">
   <h1>Admin Dashboard</h1>
   
  <%
   Query qq=s.createQuery("from Admin user where user.email=:email").setParameter("email", email);
   List<Admin>listt=qq.list();
   for(Admin user:listt){
	   %>
   	<p style="font-size:1.4rem;font-transform:capitalize;"><%=user.getName() %></p>
   	<% 
   }
   %>
   <hr>
   <section class ="left">
   
   <div><p>View Details</p>  
     <a href="Customer_info.jsp" >Customers</a><br></br>
      <a href="Seller_info.jsp">Sellers</a><br></br>
     <a href="viewproducts.jsp">Products</a><br></br>
      <a href="donationinfo.jsp">Donation Items</a><br></br>
        <a href="FCinfo.jsp" >Feedback/Complaint</a></div>
     <hr>
     <div > <p> Post</p>
      <a href="Blogpost.jsp">Post a Blog</a><br></br></div><hr>
      <div > <p> Logout</p>
     <form action="Logout_controller" method="post">             <button type="submit" style="border:none;font-size:17px;background-color:white; ">Logout</button>
               </form>   <br></br></div>
     
     
  </section>
   <section class ="right">
        <div class = "profileright">  <h2>Post a Blog</h2><hr style="color:grey">
         <form   action="Blogcontroller" method="post"class="frm" enctype ="multipart/form-data">
         
         <label>Items Donated</label>
         <input  name="Items"type ="text" required/>
        
         <label>Details of Donation</label>
         <textarea name="Content" type="text" rows="5" required></textarea>
         
            <label>User Name who Donated</label>
         <input name="Customer_names"type ="text" required/>
           
         <label>Images</label>
         <input name="Image" class="img_upload" type="file"/>
       
          
         
         <button type="submit" >Submit</button>
         
         </form>
             
     </div>
  
     
     </section>

</section>
 
</body>
</html>