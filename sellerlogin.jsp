<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
     <title>Shoppe & Smile</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style> .login {display: none}; .cart{margin-left: 25%}</style>
        <link href="login.css" rel="stylesheet" type="text/css"/>
      <style>  .section{
margin:10%;
margin-top:15%;
box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;	
padding:4% 15% 4% 15%;
}
.frm input{
	width:93%;
	display:flex;
	margin-bottom:4%;
	padding:2%;
	align:center;
	font-size:20px;
}
.checkbox label{

       font-size:20px;
         
    
        
}
.checkbox{
 padding:2%;
 margin-bottom:2%;
}
.checkbox div{
float:left;

}
.lb{
width : 90%;
}
.checkinput{
width : 7%;
}
.checkbox input{
   width: 15px;
 
        height: 15px;
 
      

}
.btn{
padding-bottom:10%;
padding-top:4%;
}
.btn div{
float:left;
width:43%;
}
.cancel button{
   padding:4%;
   padding:16px 32% 16px 32%;
   margin-left:14%;

}
.register button{
   padding:4%;
padding:16px 32% 16px 32%;
}
.btn button{
	  background-color: #f7e6ff;
    color: black;
      box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
     font-size: 18px;
    border: none;
}

</style>
    </head>
    <body style="margin-top:5%;height:1000px;">
   
        
      
<div class="container" id="container" style="height:400%; width:90%; ">
	<div class="form-container sign-up-container">
		<form action="Seller_reg_controller" method="post">
			<h1>Register as a seller</h1>
			
	    	<input name="S_email" type="email" placeholder="Email" id="email_id" required/>
			<input name="S_password" type="password" placeholder="Password" id="password"  pattern ="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required />
            <input name="confirm_password" type="password" placeholder="Confirm Password" id="confirm_password" required/>
		  <label>STORE NAME<input name="store_name" type ="text" placeholder="Store Name" required></label>
       
               <label> ADDRESS  <input name="store_address"type ="text"placeholder="Address (House no. , Building , Street, Area)" required>
              <input name="state"type ="text"placeholder="State" required>
 <input name="town" type ="text"placeholder="Locality/Town" required>
         <input name="pincode" type ="text"placeholder="Pincode" required>

   <input  name="city"type ="text"placeholder="City/District" required></label> 
      <label>COMPANY/BUSINESS NAME<input name="company_name" type ="text" placeholder="Store Name" required></label>
   <div class="checkbox"> <div class ="checkinput"><input type ="checkbox"  required></div><div class="lb"><label>  I agree to the Seller Agreement.And to the Terms & Conditions.</label> </div></div>
  <div class="btn">
     <div class="register ">
           <a href="#"><button >REGISTER</button></a>
      </div>
      
        </div> 
		</form>
	</div>
	<div class="form-container sign-in-container"  style="margin-top:-15%;">
		<form action="Seller_login_controller" method="post">
			<h1>Sign in as a seller</h1>
			
			<input name="S_email"type="email" placeholder="Email" required />
			<input name="S_password" type="password" placeholder="Password" required/>
			<a href="Sellerforgotpassword.jsp">Forgot your password?</a>
	<a 	>  	<button>Sign In</button></a>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left"  style="margin-top:-15%;">
				<h1>Welcome Back!</h1>
				<p>Already have a account?</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right" style="margin-top:-15%;">
				<h1></h1>
				<p>Don't have an account ?</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>


      <script>
          
          const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
//password validation
var password = document.getElementById("password")
, confirm_password = document.getElementById("confirm_password");

function validatePassword(){
if(password.value != confirm_password.value) {
  confirm_password.setCustomValidity("Password Don't Match");
} else {
  confirm_password.setCustomValidity('');
}
}
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
      </script>
    </body>
</html>

    