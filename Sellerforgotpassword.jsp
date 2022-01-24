<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
<style>
form{
font-size:1.3rem;
box-shadow: rgba(0, 0, 0, 0.12) 0px 1px 3px, rgba(0, 0, 0, 0.24) 0px 1px 2px;
padding:4%;
}
.d{
float:left;
width:50%;
}
</style>
</head>
<body>
<p style="font-size:1.7rem;text-align:center;margin:5%;box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 50px;padding:1%;"><i>Enter Details to get your Seller account password</i></p>
<div style=" margin:10% 5% 15% 5%;" >
<form action="SellerForgotPasswordController" method="post">
 
      <div class="d" style="text-align:right;margin-bottom:2%">
  <label for="email_address" style="padding-bottom:2%;" >Enter Seller Account Email id<font color="red">*</font></label>
 </div> 
  <div class="d" style="margin-bottom:2%" >
     <input style="padding: 1.4%  ; margin-left:2%; width:22rem;" type="text" id="email"  class="form-control" placeholder="Enter Email id" name="S_email" value="" >
      <font  color="red"></font>
  </div>         
 <div style="text-align:center;">
 <input type="submit"  value="Get your password" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;  outline: none;padding:0.6rem 2rem 0.6rem 2rem;font-size:1.2rem;margin-top:2%; background-color:#ff0066;color:white;">
   </div>
</form></div>

</body>
</html>