<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>>
<link href="userprofile.css" rel="stylesheet" type="text/css"/>
<link href="editprofile.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
     <script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
</head>
<body>

<%@ include file= "afterloginnav.jsp" %>
<section class="usr" style="margin-top:15%">
   <h1>Account</h1>
   username
   <hr>
   <section class ="left">
   <div><a href="userprofile.jsp" >OVERVIEW</a></div>  
     <hr>
   <div>   <a href="orders.jsp">ORDERS</a></div>
     <hr>
   <div><p>ACCOUNT</p>  
     <a href="profile.jsp">Profile</a><br></br>
     <a href="addr.jsp">Address</a></div> 
     <hr>
    <div > <p> LEGAL</p>
      <a href="terms.jsp">Terms of Use</a><br></br>
     <a href="privacypolicy.jsp">Privacy Policy</a></div> 
     
   
   </section>
   
   
     <section class ="right">
             <div class = "profileright">  <h1>Edit Address</h1><hr style="color:grey">
         <form class="frm">
        
         <input type ="text" placeholder="Name" required>
         
         <input type ="tel" placeholder="Mobile" required>
          
         <input type ="text"placeholder="Pincode" required>
          <input type ="text"placeholder="State" required>
           <input type ="text"placeholder="Address (House no. , Building , Street, Area)" required>
   <input type ="text"placeholder="Locality/Town" required>
   <input type ="text"placeholder="City/District" required>
  </form>
  
       <div class="edittt ">
           <a href="addr.jsp"><button  style="padding: 16px 45% 16px 44%;">SAVE</button></a>
      </div>
      <div class="edittt " >
           <a href="address.jsp"><button>CANCEL</button></a>
      </div></div>
     </section>

</section>
<footer style="margin-top:70%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>

