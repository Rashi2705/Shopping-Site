<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <link href="slidecss.css" rel="stylesheet" type="text/css"/>
        
    
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        
      
    </head>
    <body class="body" >
          
        
        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 6</div>
  <a href="">
      <img src="https://s-media-cache-ak0.pinimg.com/736x/a5/19/bc/a519bc969c601965c506ee1551a152c7.jpg" style="width:1000px;height: 400px"></a>
  
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 6</div>
  <a href=""> <img src="https://www.ruglaundry.com.au/wp-content/uploads/2018/11/shutterstock_791663341.jpg" style="width:1000px;height: 400px"></a>
  
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 6</div>
  <a href=""> <img src="https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2012/5/28/0/Original_Elsie-Larson-clothing-rack_s4x3.jpg.rend.hgtvcom.966.644.suffix/1400970149073.jpeg" style="width:1000px;height: 400px"></a>
 
</div>
    <div class="mySlides fade">
  <div class="numbertext">4 / 6</div>
  <a href=""> <img src="https://th.bing.com/th/id/R.82f2865ad5a64b0cb79b40df8bd38a7a?rik=mg1Gid1gAD%2bSqg&riu=http%3a%2f%2fbetterphotography.in%2fwp-content%2fcontest_uploads%2f13%2f0010725%2f13_0010725_020291.jpg&ehk=Um2a%2b7XOA1npxsDXtLNz8poSYL2gnDhchYzoNTls%2f%2bE%3d&risl=&pid=ImgRaw&r=0" style="width:1000px;height: 400px"></a>
  
</div>
    <div class="mySlides fade">
  <div class="numbertext">5 / 6</div>
  <a href=""> <img src="https://ak.jogurucdn.com/media/image/p15/media_gallery-2015-10-9-6-johari_bazar_47390547b5d1c5d08cc81db9e1299452.jpg" style="width:1000px;height: 400px"></a>
  
    </div>
    <div class="mySlides fade">
  <div class="numbertext">6 / 6</div>
  <a href=""> <img src="https://www.worldcraftindustries.com/media/wysiwyg/worldcraftindustries/Horizontal13.jpg" style="width:1000px;height: 400px"></a>
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>
        
      <script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1;} ;   
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 7000);
}
</script>  
    </body>
</html>