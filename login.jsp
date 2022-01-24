<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
     <title>Shoppe & Smile</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style> .login {display: none}; .cart{margin-left: 25%}</style>
        <link href="login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
   
        
      
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="Userregcontroller" method="post">
		
			<h1>Create Account</h1>
			
			<input name="name" type="text" placeholder="Name" id="name" pattern="[a-zA-Z\s]+" title="Please enter your name" required />
			<input name="email_id" type="email" placeholder="Email" id="email_id" required/>
			<input name="password" type="password" placeholder="Password" id="password"  pattern ="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required />
            <input name="confirm_password" type="password" placeholder="Confirm Password" id="confirm_password" required/>
			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="Logincontroller" method="post">
			<h1>Sign in</h1>
			
			<input name="email_id"type="email" placeholder="Email" required />
			<input name="password" type="password" placeholder="Password" required/>
			<a href="forgotpassword.jsp">Forgot your password?</a>
	<button>Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>Already have a account?</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
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

    