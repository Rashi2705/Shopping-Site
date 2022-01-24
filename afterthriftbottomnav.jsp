<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> <title>Shoppe & Smile</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="nav.css" rel="stylesheet" type="text/css"/>
        <link href="thrift.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
     
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
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
 
 
}

.dropdown-contentt a :hover {
  background-color:rgb(102, 255, 255);
}
.dropdown:hover .dropdown-contentt {display: block;   }

         
        </style>
    </head>
    <body>
        <section class = "nav" style="width: 90%">
             <div class ="top-nav"  >
                 
                 
            <form action="Search_controller" method="post">
                <!-- search bar -->
                <div class="search-box icon"  >   
                   <a href ="afterlogin.jsp" style="text-decoration:none;">  <img class ="icon " src="icon.jpeg" alt="img" style="width:3% ;  height:3% ;margin-right: 19%"/> </a>
                    <input type="text " name="search" style="width: 30rem" class="searchtext" placeholder ="search products here..">
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
                        <form action="Logout_controller" method="post"><button type="submit" style="border:none;font-size:17px; "><a>Logout</a></button></form>
                      </div>  </div>
       
     <a href="Cart.jsp" style="text-decoration:none;">   <i class='fa fa-shopping-cart cart' style="  margin-left: 2% ; margin-right: 2% ;color: black"></i>
          </a> 
                                  
            </div>
            </div>
            <div class="bottom-nav" style="width:120%" >
                
                    <ul>
                <div class="dropdown">
                    <a href="afterlogin.jsp"style="margin-right: 6%;margin-left: 5%">  <button class="dbutton">HOME</button></a>
                    
                    </div>
                        <div class="dropdown" style="margin-right: 3%;margin-left: 5%"> 
                             <a href="Donation.jsp">  <button class="dbutton">DONATION</button></a>
                   </div>
                        
                          <div class="dropdown"style="margin-right: 3%;margin-left:2%"> 
                            <a href="Blog.jsp"> <button class="dbutton">BLOG</button></a>
                   
                        </div>
                        
                              <div class="dropdown"style="margin-right: 4%;margin-left: 2%"> 
                                  <a href="#">   <button class="dbutton">CLOTHING</button></a>
                   <div class="dropdown-content">
                    <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "MEN"><a onclick="this.parentNode.submit();">MEN</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "WOMEN"><a onclick="this.parentNode.submit();">WOMEN</a></form>
                      
                       <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "KIDS"><a onclick="this.parentNode.submit();">KIDS</a></form>
                      
                      
                    </div>
                        </div>
                        
                        <div class="dropdown"> 
                            <a href="#"style="margin-right: 5%;margin-left: 2%">   <button class="dbutton">FURNITURE</button> </a>
                    <div class="dropdown-content">
                    <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "FURNITURE"><a onclick="this.parentNode.submit();">FURNITURE</a></form>
                      
                       
                      
                    </div>
                        </div>
                          
                        <div class="dropdown"style="margin-left:  3%"> 
                            <a href="#">   <button class="dbutton">BOOKS</button> </a>
                    <div class="dropdown-content">
                    <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "BOOKS"><a onclick="this.parentNode.submit();">BOOKS</a></form>
                      
                    </div>
                  
                        </div>
                        <div class="dropdown"style="margin-right: 2%;margin-left:3%"> 
                            <a href="#"> <button class="dbutton">OTHERS</button></a>
                     <div class="dropdown-content" >
                    <form action="Search_controller" method="post"> <input type="hidden" name="search" value= "OTHERS"><a onclick="this.parentNode.submit();">OTHERS</a></form>
                      
                     
                      
                    </div>
                        </div>
                             

                        </div>
            </ul>
             
            </div>
</section>
    </body>
</html>