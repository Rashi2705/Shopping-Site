<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>Shoppe & Smile</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="nav.css" rel="stylesheet" type="text/css"/>
        <link href="thrift.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymo
     us">
         <link href="home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <section class = "nav" style="width: 90%">
             <div class ="top-nav"  >
                 
            
                <!-- search bar -->
                <div class="search-box icon">   
                   <a href ="index.jsp" style="text-decoration:none;">  <img class ="icon " src="icon.jpeg" alt="img" style="width:3% ;  height:3% ;margin-right: 19%"/> </a>
                    <input  name="search" style="width: 27rem" class="searchtext" placeholder ="search products here..">
                   <button type="submit" style="border:none; background-color:white; height:3%"> <i class='fa fa-search'></i></button>
                
                      
                
                
         <i class='fa fa-shopping-cart' style="  margin-left: 20% ; margin-right: 2% ;color: black"></i>
          
                
                <a href="login.jsp">  <button class="login">LOGIN</button></a>
                                      
            </div>
            </div>
             <div class="bottom-nav" style="width:120%" >
                
                    <ul>
                <div class="dropdown">
                    <a href="index.jsp"style="margin-right: 10%;margin-left: 5%">  <button class="dbutton">HOME</button></a>
                    
                    </div>
                        <div class="dropdown" style="margin-right: 5%;margin-left: 7%"> 
                             <a href="#">  <button class="dbutton">DONATION</button></a>
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