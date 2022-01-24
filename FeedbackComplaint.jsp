<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback/Complaint</title>
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
<section class="don">
   <p >Feedback/Complaint Form</p><hr>
   <div style="margin-bottom:15%">
   <form action="FeedbackComplaintController" method="post">

   <label>First Name<input type ="text" name ="fname" required></label> 
   <label>Last Name<input type ="text" name="lname" ></label> 
        
        <label>Email<input type ="email" name="emailf" required></label> 
            


 
    <label>Feedback/Complaint</label><br></br>
    <textarea rows="5" cols="80" name="query" required></textarea>
     <div class="edittt " >
           <button type="submit"> SUBMIT</button>
      </div>
  </form>
      </div>
   

</section>
</body>
</html>