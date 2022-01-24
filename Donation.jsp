<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donate</title>
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

<style>
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: white;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
</style>
</head>
<body>
<section class="don">
   <p >Item Donation Form</p><hr>
   <div style="margin-bottom:15%">
   <form action="Donatecontroller" method="post">

   <label>First Name<input type ="text" name ="fname" required></label> 
   <label>Last Name<input type ="text" name="lname" required></label> 
        
        <label>Email<input type ="email" name="email" required></label> 
         
         <label>Mobile Number<input type ="tel" name="mno" required></label>
         <label>Address
                  
    <input type ="text" name="addr" placeholder="Address (House no. , Building , Street, Area)" required>
 
           <input type ="text" name="pincode" placeholder="Pincode" required>
          <input type ="text" name="state"  placeholder="State" required>
   <input type ="text" name="town"  placeholder="Locality/Town" required>
   <input type ="text" name = "city" placeholder="City/District" required>
         </label>
         <section class = "donate">
        <h1>Type of Donation</h1>
        <div class ="container"> 
        <label class="container">Shoes and Bags
  <input type="radio" checked="checked" name="donationtype" value="Shoes and Bags">
  <span class="checkmark"></span>
</label>
<label class="container">Clothing
  <input type="radio" name="donationtype" value="Clothing" >
  <span class="checkmark"></span>
</label>
<label class="container">Kitchenware
  <input type="radio" name="donationtype" value="Kitchenware">
  <span class="checkmark"></span>
</label>
<label class="container">Books
  <input type="radio" name="donationtype" value="Books">
  <span class="checkmark"></span>
</label>
<label class="container">Arts
  <input type="radio" name="donationtype" value="Arts">
  <span class="checkmark"></span>
</label>
<label class="container">Hygiene Essentials
  <input type="radio" name="donationtype" value="Hygiene Essentials">
  <span class="checkmark"></span>
</label>
<label class="container">Others
  <input type="radio" name="donationtype" value="Others">
  <span class="checkmark"></span>
</label>
   </div>
   </section>
   <label>What would you like to donate?</label><br></br>
    <textarea rows="2" cols="80" name="donatewhat" ></textarea>
    <label>Notes</label><br></br>
    <textarea rows="5" cols="80" name="notes"></textarea>
     <div class="edittt " >
           <a  href="afterthriftjsp.jsp"> <button type="submit" onclick=""> SUBMIT</button></a>
      </div>
   </form>
   
   </div>

</section>
</body>
</html>