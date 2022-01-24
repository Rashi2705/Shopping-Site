<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.web.Logincontroller" %>
        <%@page import="com.util.HibernetUtil" %>
         <%@page import="org.hibernate.Session" %>
     <%@page import="com.model.User" %>
     <%@ page import="java.io.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.util.List" %>
  <%@page import="org.hibernate.Query" %>
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
.left p{
	padding:2%;
	color:grey;
	font-size:25px;
}
.left a{
	font-size:20px;
	margin-bottom:4%;
}
h1{
color:grey;
font-size:40px;
}
.right input {
      display: block;
      width: 90%;
      padding: 15px;
      margin-bottom: 10px;
      border: none;
     
      background: white;
      }
.right div{
  background:#DCDCDC;
  border:1px solid grey;
  
 /* box-shadow: rgba(100, 100, 111, 0.5) 0px 7px 29px 0px;*/
  }
  .right button{
  margin-left:45%;
  /*border:1px solid black;*/
  width:20%;
  height:20%;
  font-size: 18px;
  }
  .right label{
   font-size: 18px;
  }
  .right{
  width:50%
  }
   select {
  width: 96%;
 
  display: inline-block;
  
  
}
   .usr{
background-color:#ffe6f3;
padding:2% 2% 0 2%;
}
   
textarea{
resize:none;
  width: 95%;
}
     </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        var subcategory = {
            plants: ["potted", "indoor", "herb","flower","succelent","cactus","indoor tropical"],
         
            Footwear:["Footwear"],
            Beauty: ["lotions", "makeup", "shower & bath","haircare","skincare","personal hygiene"],
          
           homeandliving:["bed linen & furnishing","flooring","lamps & lights","home decor","kitchen & table","curtains"],
        Traditionalwear:["indian & fusion wear","festive wear"],
            Topsandtees: ["western wear","topwear","casuals"],
          Jeans:["western wear","sports wear","jeans & trousers","casuals"],
            Kids:["boys clothing","girls clothing","toys","infant","accessories","home & bath","personal care"],
            Stationary:["Stationary"],
            Dresses:["western wear","indian & fusion wear"],
            Handicraft:["jute","embroidery","woodwork","shell","metal","clay & pottery","jewelery","clothing","paintings","soaps","candels"],
             Others:["jewellery","sunglasses","scarves & more" ,"personal care","personal care & grooming","fashion accessories"]
         }

        function makeSubmenu(value) {
            if (value.length == 0) document.getElementById("categorySelect").innerHTML = "<option></option>";
            else {
                var catOptions = "";
                for (categoryId in subcategory[value]) {
                    catOptions += "<option>" + subcategory[value][categoryId] + "</option>";
                }
                document.getElementById("categorySelect").innerHTML = catOptions;
            }
        }

       

       
    </script>
</head>
<body>

<%
 
HttpSession Session=request.getSession();
String email=  (String) Session.getAttribute("email_id");
 Session s= HibernetUtil.getFactory().openSession();
 
   Query q=s.createQuery("from User user where user.email_id=:email").setParameter("email", email);
  
   List<User>list=q.list();
   %>
<%@include file="afterloginnav.jsp" %>
<section class="usr" style="margin-top:15%">
   <h1>Seller Dashboard</h1>
   <%
   Query query=s.createQuery("from User user where user.email_id=:email").setParameter("email", email);
   List<User>list1=query.list();
   for(User user:list1){
	   %>
   	<p><%=user.getName() %></p>
   	<% 
   }
   %>
   <hr>
   <section class ="left">
   
   <div>  <p> Sell At Main Page </p> 
      <a href="Add_product.jsp" >Add Product</a><br></br>
     <a href="product_delete_update.jsp">Update And Delete Products</a><br></br>
     <a href="Seller_view_product.jsp">View Products</a><br></br>
      <a href="Selling_info.jsp">Selling Info</a></div>
     <hr>
    <div > <p> Sell At thrift Store</p>
      <a href="Add_product.jsp">Add Products</a><br></br></div>
     
     
   
   </section>
   </section>
   
     <section class ="right">
    <div class = "profileright">  
               <form   action="ProductController" method="post" enctype ="multipart/form-data">
             <div class="container">
       
           <label for ="Category">Category</label>
          <select id="category" name="category" onchange="makeSubmenu(this.value)">
    <option value="" disabled selected>Choose Category</option>
      <option value="plants" >Plants</option>
      <option value="Footwear">Footwear</option>
      <option value="Beauty">Beauty</option>
      <option value="homeandliving">Home_and_Living</option>
      <option value="Traditionalwear">Traditional_Wear</option>
      <option value="Topsandtees">Tops_And_Tshirts</option>
      <option value="Jeans">Jeans/Shorts/Trousers</option>
      <option value="Kids">Kids</option>
      <option value="Stationary">Stationary</option>
      <option value="Dresses">Dresses</option>
      <option value="Handicraft">Handicraft/Handmade Items</option>
      <option value="Others">Others</option>
       
    </select>
    <select id="categorySelect" name="subcategory" size="1">
<option value="" disabled selected>Choose Subcategory</option>
<option></option>
</select>

          </div>
          
         <label>Product Title</label>
         <input  name="Ptitle"type ="text" placeholder="Enter product name with Brand if any"required>
         
         <label>Product Description</label>
          <textarea rows="4" cols="80" name="description"   placeholder="Enter product dimensions if any, items in a product if any,Enter detailed Description of your product."   required ></textarea>
         
         
            <label>Price of Product</label>
         <input name="price"type ="text" placeholder="Enter price in Rupees eg. 450(do not add Rs sign) " required>
         <label>Discount</label>
         <input name="discount" type ="text" placeholder="eg 45(enter in this formate)" required>
         <label>Final Price</label>
         <input name="final price"type ="text" placeholder="Enter price after giving discount " required>
         <label>Sizes Available if any</label>
         <input name="size"type ="text" placeholder="eg. L XL M" >
         <label>Enter Colour Available if any</label>
         <input name="Colour"type ="text" placeholder="eg. blue red pink" >
          <label>Images</label>
         <input name="Image" class="img_upload" type="file" onchange="readURL(this)" accept="Image/*" > 
        
       
         <button type="submit" >Submit</button>
         
         </form>
      </div>
     
      </section>
<footer style="margin-top:75%"><%@ include file= "ftr.jsp" %></footer>
</body>
</html>