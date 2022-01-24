<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
@charset "ISO-8859-1";

.editt{
width:98%;
padding:3%;
text-align:center;
border-style:none;
box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
background-color:#ff0066;color:white;
font-size:1.2rem;
}
.frm input{
	width:93%;
	display:flex;
	margin-bottom:1%;
	padding:1.5%;
}

.container label{
	float:left;
	width:33%;

  
}

.right{
padding:5%;
margin:10% 25% 5% 20%;
width:50%;
margin-top:-5%;
box-shadow: rgba(255, 255, 255, 0.1) 0px 1px 1px 0px inset, rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;

}

</style>
</head>
<body>
  <section class ="right">
        <div class = "profileright">  <h1>Edit Address Details</h1><hr style="color:grey">
         <form class="frm" action="UpdateUserInfoController" method="post">
         
        
         
         <label>Mobile Number</label>
         <input name="mobile number" type ="text">
           
        
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
         
          <div >
           <a href="cartproceedtobuy.jsp"><button class="editt">SAVE ADDRESS </button></a>
      </div>
         
         </form>
             
          
  </div></section>
</body>
</html>