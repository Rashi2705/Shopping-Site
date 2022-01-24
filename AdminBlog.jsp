<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Shoppe & Smile</title>
 <style>
      * {
      box-sizing: border-box;
      }
      html, body {
      min-height: 100vh;
      padding: 0;
      margin: 0;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px; 
      color: white;
      }
      input, textarea { 
      outline: none;
      }
      body {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
      background: white;
      }
      h1 {
      margin-top: 0;
      font-weight: 500;
      }
      form {
      position: relative;
      width: 80%;
      border-radius: 30px solid 2px black;
      background: #fff;
      }
      
      
      .form-inner {
      padding: 40px;
      }
      .form-inner input,
      .form-inner textarea {
      display: block;
      width: 80%;
      padding: 15px;
      margin-bottom: 10px;
      border: none;
      border-radius: 20px;
      background: #d0dfe8;
      }
      .form-inner textarea {
      resize: none;
      }
      button {
      width: 80%;
      padding: 10px;
      margin-top: 20px;
      border-radius: 20px;
      border: none;
      border-bottom: 4px ;
      background: #d0dfe8; 
      font-size: 16px;
      font-weight: 400;
      color: grey;
      }
     
      @media (min-width: 568px) {
      form {
      width: 60%;
      }
      }
    </style>
</head>
<body>
  <form action="Blogcontroller" method="post" class="decor">
      <div class="form-left-decoration"></div>
      <div class="form-right-decoration"></div>
      <div class="circle"></div>
      <div class="form-inner">
        <h1>Contact us</h1>
        <input name="Items"type="text" placeholder="Items Donated" required>
        <input name="Image" class="img_upload" type="file" onchange="readURL(this)" accept="Image/*">
        <textarea name="Content"placeholder="Message..." rows="5" required></textarea>
        <input name="Customer_names" type="text" placeholder="Customer who donated" required>
        
        <button type="submit" href="afterthriftjsp.jsp">Submit</button>
      </div>
    </form>
</body>
</html>