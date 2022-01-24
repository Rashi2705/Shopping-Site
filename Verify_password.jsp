<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
     .nav{
     width:100%;
     }
    .right button{
    width:98%;
    }
     </style>
        
</head>
<body>

<%@ include file= "afterloginnav.jsp" %>
<section class="usr" style="margin-top:15%">
   <h1>Account</h1>
  
   <hr>
   <section class ="left">
   <div><a href="userprofile.jsp" >OVERVIEW</a></div>  
     <hr>
   <div>   <a href="orders.jsp">ORDERS</a></div>
     <hr>
   <div><p>ACCOUNT</p>  
     <a href="profile.jsp">Profile</a><br></br>
      <a href="Verify_password.jsp">Change Password</a><br></br></div>
     
     <hr>
    <div > <p> LEGAL</p>
      <a href="terms.jsp">Terms of Use</a><br></br>
     <a href="privacypolicy.jsp">Privacy Policy</a></div> 
     
   
   </section>
   
   
     <section class ="right">
        <div class = "profileright">  <h1 style="text-align:center">Verify Existing Password </h1>
        <br>
         <form class="frm" action="PasswordController" method="post">
      <h3>   <label>Enter Existing Password</label></h3>
         
         
         <input name="password" type ="text" placeholder="enter password entered at the time of registration" required>
         
          <div class="editt">
           <a href="#"><button>Verify </button></a>
      </div>
         
         </form>
             
         </div>
     </section>

</section>
<footer style="margin-top:50%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>