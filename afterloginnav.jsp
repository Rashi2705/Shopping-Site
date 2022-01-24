<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.web.Logincontroller" %> 
<!DOCTYPE html>
<html>
 <head>
 <title>Shoppe & Smile</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
     
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <link href="nav.css" rel="stylesheet" type="text/css"/>
        <link href="home.css" rel="stylesheet" type="text/css"/>
    <style>
        .dropdown-content {
        width:340px;
        padding:2%;
        
        }
        .nav{
        width:100%;
        }
        .dropdown-content button {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 450px;
  font-size: 18px;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);

}

.dropdown-content button {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content button:hover {
  background-color: rgba(230, 255, 255,0.726);
}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dbutton {background-color:#f2f2f2;}
         
.dropdown-contentt {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 200px;
 
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;

}
.dropdown-contentt a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
 font-size:1.2rem;
 
}

.dropdown-contentt a :hover {
  background-color:rgb(102, 255, 255);
}
.dropdown:hover .dropdown-contentt {display: block;   }

         
        </style>
 
 </head>
    <body>
         <section class = "nav">
               <div class ="top-nav"  >
                 
            <form action="Search_controller" method="post">
                <!-- search bar -->
                <div class="search-box icon">   
                   <a href ="afterlogin.jsp" style="text-decoration:none;">  <img class ="icon " src="icon.jpeg" alt="img" style="width:3% ;  height:3% ;margin-right: 19%"/> </a>
                    <input  name="search" style="width: 27rem" class="searchtext" placeholder ="search products here..">
                   <button type="submit" style="border:none; background-color:white; height:3%"> <i class='fa fa-search'></i></button>
                
                        </form>       
                   <a href="Wish.jsp" style="text-decoration:none;"> <i  class="material-icons" style="  margin-left:17%;font-size:25px;color:black;">favorite_border</i>  
                       </a>
           
            <div class="dropdown   userprofile ">
                 <a href ="userprofile.jsp" class=" userprofile dbutton">     <i class="fa fa-user-circle" aria-hidden="true" style="color:black;margin-left:20%;"></i></a>
                <div class="dropdown-contentt" style="font-size:17px;" >
                      <a href="orders.jsp">Orders</a>
                      <a href="Wish.jsp">Wishlist</a>
                      <a href="userprofile.jsp" class="editprofile">Edit Profile</a>
                      <a href="sellerlogin.jsp">Seller Registration</a>
          <form action="Logout_controller" method="post">             <button type="submit" style="border:none;font-size:17px; ">Logout</button>
               </form>       </div>  </div>
       
            <a href="Cart.jsp" style="text-decoration:none;">   <i class='fa fa-shopping-cart cart' style="  margin-left: 2% ; margin-right: 2% ;color: black"></i>
          </a> 
               
              </div>
        </div>
            
       <div class="bottom-nav">
                
                  <ul>
                <div class="dropdown">
                    <a href="#">  <button class="dbutton">WOMEN</button></a>  
                    <div class="dropdown-content" >
                      <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "JEWELLERY"><a onclick="this.parentNode.submit();">JEWELLERY</a></form>
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "SUNGLASSES"><a onclick="this.parentNode.submit();">SUNGLASSES</a></form>
                     
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "PERSONAL CARE"><a onclick="this.parentNode.submit();">PERSONAL CARE</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "INDIAN & FUSION WEAR"><a onclick="this.parentNode.submit();">INDIAN & FUSION WEAR</a></form>
                        
                         <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "WESTERN WEAR"><a onclick="this.parentNode.submit();">WESTERN WEAR</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "SPORTS WEAR"><a onclick="this.parentNode.submit();">SPORTS WEAR</a></form>
                      
                       
                      </div> 
                    </div>
                         <div class="dropdown"> 
                              <a href="#">  <button class="dbutton">MEN</button></a>         
                             <div class="dropdown-content"> 
                              <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "JEANS & TROUSERS"><a onclick="this.parentNode.submit();">JEANS & TROUSERS</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "TOPWEAR"><a onclick="this.parentNode.submit();">TOPWEAR</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "FESTIVE WEAR"><a onclick="this.parentNode.submit();">FESTIVE WEAR</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "PERSONAL CARE & GROOMING"><a onclick="this.parentNode.submit();">PERSONAL CARE & GROOMING</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "FASHION ACCESSORIES"><a onclick="this.parentNode.submit();">FASHION ACCESSORIES</a></form>
                       
                        <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "CASUALS"><a onclick="this.parentNode.submit();">CASUALS</a></form>
                     
                    </div></div>
                        
                        <div class="dropdown"> 
                            <a href="#"> <button class="dbutton">KIDS</button></a>
                    <div class="dropdown-content">
                     <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "BOYS CLOTHING"><a onclick="this.parentNode.submit();">BOYS CLOTHING</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "GIRLS CLOTHING"><a onclick="this.parentNode.submit();">GIRLS CLOTHING</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "TOYS"><a onclick="this.parentNode.submit();">TOYS</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "INFANTS"><a onclick="this.parentNode.submit();">INFANTS</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "ACCESSORIES"><a onclick="this.parentNode.submit();">ACCESSORIES</a></form>
                       
                        <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "HOME & BATH"><a onclick="this.parentNode.submit();">HOME & BATH</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "PERSONAL CARE"><a onclick="this.parentNode.submit();">PERSONAL CARE</a></form>
                      
                    </div>
                        </div>
                        
                              <div class="dropdown"> 
                                  <a href="#">   <button class="dbutton">HOME & LIVING</button></a>
                    <div class="dropdown-content">
                     <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "BED LINEN & FURNISHING"><a onclick="this.parentNode.submit();">BED LINEN & FURNISHING</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "FLOORING"><a onclick="this.parentNode.submit();">FLOORING</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "LAMPS & LIGTHS"><a onclick="this.parentNode.submit();">LAMPS & LIGTHS</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "HOME DECOR"><a onclick="this.parentNode.submit();">HOME DECOR</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "KITCHEN & TABLE"><a onclick="this.parentNode.submit();">KITCHEN & TABLE</a></form>
                      
                        <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "CURTAINS"><a onclick="this.parentNode.submit();">CURTAINS</a></form>
                     
                    </div>
                        </div>
                        
                        <div class="dropdown"> 
                            <a href="#">   <button class="dbutton">BEAUTY</button> </a>
                    <div class="dropdown-content">
                     <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "LOTIONS"><a onclick="this.parentNode.submit();">LOTIONS</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "MAKEUP"><a onclick="this.parentNode.submit();">MAKEUP</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "SHOWER & BATH"><a onclick="this.parentNode.submit();">SHOWER & BATH</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "HAIRCARE"><a onclick="this.parentNode.submit();">HAIRCARE</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "SKINCARE"><a onclick="this.parentNode.submit();">SKINCARE</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "PERSONAL HYGIENE"><a onclick="this.parentNode.submit();">PERSONAL HYGIENE</a></form>
                      
                    </div>
                        </div>
                          
                        <div class="dropdown"> 
                            <a href="#">   <button class="dbutton">HANDICRAFTS</button> </a>
                    <div class="dropdown-content">
                     <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "JUTE"><a onclick="this.parentNode.submit();">JUTE</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "EMBROIDERY"><a onclick="this.parentNode.submit();">EMBROIDERY</a></form>
                   
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "WOODWORK"><a onclick="this.parentNode.submit();">WOODWORK</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "SHELL"><a onclick="this.parentNode.submit();">SHELL</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "METAL"><a onclick="this.parentNode.submit();">METAL</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "CLAY & POTTERY"><a onclick="this.parentNode.submit();">CLAY & POTTERY</a></form>
                      
                    </div>
                        </div>
                            
                        <div class="dropdown"> 
                            <a href="#">    <button class="dbutton">HANDMADE ITEMS</button> </a>
                    <div class="dropdown-content">
                     <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "Jewellery"><a onclick="this.parentNode.submit();">JEWELRY</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "Jewellery"><a onclick="this.parentNode.submit();">CLOTHING</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "Jewellery"><a onclick="this.parentNode.submit();">PAINTINGS</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "Jewellery"><a onclick="this.parentNode.submit();">SOAPS</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "Jewellery"><a onclick="this.parentNode.submit();">CANDELS</a></form>
                       
                    
                    </div>
                        </div>
                               <div class="dropdown"> 
                                   <a href="#">      <button class="dbutton">PLANTS</button> </a>
                    <div class="dropdown-content">
                     <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "POTTED"><a onclick="this.parentNode.submit();">POTTED</a></form>
                      
                     <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "INDOOR"><a onclick="this.parentNode.submit();">INDOOR</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "HERB"><a onclick="this.parentNode.submit();">HERB</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "FLOWER"><a onclick="this.parentNode.submit();">FLOWER</a></form>
                        
                         <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "SUCCULENT"><a onclick="this.parentNode.submit();">SUCCULENT</a></form>
                        <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "CACTUS"><a onclick="this.parentNode.submit();">CACTUS</a></form>
                     
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "INDOOR  TROPICAL"><a onclick="this.parentNode.submit();">INDOOR  TROPICAL</a></form>
                     
                    </div>
                        </div>
                                 
                 <div class="dropdown"> 
                            <a href="afterthriftjsp.jsp">      <button class="dbutton" >THRIFT STORE</button></a>
                 
                </div>
                        
            </ul>
            </div>
    </section>
   
    </body>
</html>