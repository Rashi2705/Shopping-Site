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
       <a href="Verify_password.jsp">Change Password</a><br></br>
     <hr>
    <div > <p> LEGAL</p>
      <a href="terms.jsp">Terms of Use</a><br></br>
     <a href="privacypolicy.jsp">Privacy Policy</a></div> 
     
   
   </section>
   
   
     <section class ="right">
        <div class = "profileright">  <h1>Edit Details</h1><hr style="color:grey">
         <form class="frm" action="UpdateUserInfoController" method="post">
         
        
         
         <label>Mobile Number</label>
         <input name="mobile number" type ="text">
         
            <label>Full Name</label>
         <input name="full name"type ="text" >
           
         <div class="container">
       
           <label for ="gender">Gender</label>
          <select id="gender" name="gender">
      <option value="female">Female</option>
      <option value="male">Male</option>
      <option value="trans">Trans</option>
    </select>
          </div><br></br>
          <label>Address</label> 
         <input name="address"type ="text" placeholder="Enter house no and area ">
          <label>Town</label> 
         <input name="town"type ="text" placeholder="Enter name of town">
          <label>City</label> 
         <input name="city"type ="text" >
          <label>State</label> 
         <input name="state"type ="text">
          <label>Pincode</label> 
         <input name="pincode"type ="text">
           <label>Alternate Mobile Number</label>
            <input name="alt mobile no" type ="text" >
            <label>Alternate location</label>
            <input name="alt location"type ="text" >
         
          <div class="editt">
           <a href="#"><button>SAVE DETAILS </button></a>
      </div>
         
         </form>
             
             
            <div class="btn-p">
           <a href="Verify_password.jsp"><button>CHANGE PASSWORD </button></a>
      </div>
  </div>
     
  
     
     </section>

</section>
<footer style="margin-top:100%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>