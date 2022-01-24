<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
 <link href="slidecss.css" rel="stylesheet" type="text/css"/>
<link href="nav.css" rel="stylesheet" type="text/css"/>
<link href="thrift.css" rel="stylesheet" type="text/css"/>
 <title>Shoppe & Smile</title>
</head>
<body>
                       
                            
     <section>   <%@include file = "thriftbottomnav.jsp" %>
        </section>  
   <section style="margin-top: 12%"> <%@include file= "thriftslide.jsp" %></section>
   <section > <%@include file= "thriftbody.jsp" %></section>
<br>
<br>
<br>

<%@ include file= "ftr.jsp" %>

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