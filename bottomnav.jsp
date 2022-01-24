<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
     
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <link href="nav.css" rel="stylesheet" type="text/css"/>
        <link href="home.css" rel="stylesheet" type="text/css"/>
        <style>
        .dropdown-content{
        width:340px;
        padding:2%;
        
        }
        
        </style>
    </head>
    <body>
         <section class = "nav">
               <div class ="top-nav"  >
                 
           
                <!-- search bar -->
                <div class="search-box icon">   
                   <a href ="index.jsp" style="text-decoration:none;">  <img class ="icon " src="icon.jpeg" alt="img" style="width:3% ;  height:3% ;margin-right: 19%"/> </a>
                    <input  name="search" style="width: 27rem" class="searchtext" placeholder ="search products here..">
                   <button type="submit" style="border:none; background-color:white; height:3%"> <i class='fa fa-search'></i></button>
                
                          
                
                
        <a href="Cart.jsp" style="text-decoration:none;">  <i class='fa fa-shopping-cart cart' style="  margin-left: 20% ; margin-right: 2% ;color: black"></i>
          </a>
                
                <a href="login.jsp">  <button class="login">LOGIN</button></a>
            
                
                       
              </div>
            </div>
            
       <div class="bottom-nav" style="margin-top:-1.4%;background-color:white;box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;">
                
                   <div class="dropdown">
                    <a href="#">  <button class="dbutton">WOMEN</button></a>  
                    <div class="dropdown-content" >
                      <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "JEWELLERY"><a onclick="this.parentNode.submit();">JEWELLERY</a></form>
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "SUNGLASSES"><a onclick="this.parentNode.submit();">SUNGLASSES</a></form>
                     
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "PERSONAL CARE"><a onclick="this.parentNode.submit();">PERSONAL CARE</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "INDIAN & FUSION WEAR"><a onclick="this.parentNode.submit();">INDIAN & FUSION WEAR</a></form>
                        
                         <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "WESTERN WEAR"><a onclick="this.parentNode.submit();">WESTERN WEAR</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "Jewellery"><a onclick="this.parentNode.submit();">SPORTS WEAR</a></form>
                      
                       
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
                            <a href="thriftjsp.jsp">      <button class="dbutton" >THRIFT STORE</button></a>
                 
                </div>
                        
            </ul>
             
            </div>
    </section>
    </body>
</html>