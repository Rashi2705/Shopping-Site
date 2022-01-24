<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
     h1{
     text-align:center;
    color:#606060;
     }
     .main{
     margin-top:13%;
margin-left:10%;
margin-right:10%;
font-size:18px;
     }
     p{
     color:#606060;
    padding-top: 15px;  
     }
     .ques{
     padding-top: 15px;
     }
     
    </style>
</head>
<body>
<%@ include file= "afterloginnav.jsp" %>
<section class="main">
<h1>Frequently Asked Questions</h1>
<hr>

<details class="ques">
    <summary>When I try to enter same email address while registration which I used earlier while Registration it does not allow me to register , why?  </summary>
    <ul> <p>You are not allow to register with same email again and again. Only unique email which is not registered by anyone will be able to register while registration.If you make any mistake in other entries while registration other than email then you can simply login to the website and from user dashboard you can change your profile details and can also change the password.</p></ul>
        </details>
        <details class="ques">
<summary>Why there are two sections in the website ?</summary>
<ul><p>Our website have two sections and each section is different. At tha main page customer can buy fresh and new products but at the thrift section customer can buy second hand products according to their need and at thrift section users can also donate items by filling a donation form.</p></ul>
</details>
<details class="ques">
<summary>Why cart and wishlist icon in not visible on the main page if I am not logged in to the system?</summary>
<ul><p>You are only allowed to add any product in wishlist and cart if you are logged in to the system. Whatever product you add to the wishlist or cart are stored in the database of Shoppe & Smile, so if you are not logged in you details are not fetched by the server and we are not able to show you what you keep in cart and wishlist.</p></ul>
</details>
<details class="ques">
<summary>How to Register ourself as a seller on Shoppe & Smile</summary>
<ul><p>It is very easy. First of all you need to make a seller account on Shoppe & Smile. Then there is an option in user profile for seller registration. You can enter your details and details of your business and shop and can simply register yourself as a seller. Then from there also you can login to your seller account.</p></ul>
</details>
<details class="ques">
<summary>Why I am not receiving my forget password after entering my email in forgot password section?</summary>
<ul><p>You have to enter the email which you entered at the time of registration. Check if you are entering some different or invalid email. </p></ul>
</details>
<details class="ques">
<summary>From where can I get information about donation?</summary>
<ul><p>Whatever donation will me made , a blog related to that will be posted in the blog section of thrift store. You can check there, the name of doner will also mention there. You can check where your donation is used.</p></ul>
</details>
<details class="ques">
<summary>How  can I contact you, ask some queries and give feedback?</summary>
<ul><p>In the Feedback and Complaint section of footer you can write your queries, complaints and any feedback. We will try to reply you as soon as possible.</p></ul>
</details>
<details class="ques">
<summary>After filling the Donation form what are next steps, how my items are donated?</summary>
<ul><p>After you fill the donation form and give us your address you have to just prepare the things you mention in donation and your work is done. Then members from our team will collect those items from your specified address.</p></ul>
</details>
<details class="ques">
<summary>How can I change the details I fill at the time of registration?</summary>
<ul><p>You can not change your email address, other than that you can update any information. You have to simply visit your user dashboard and there is section of view profile details, when you visit that section there you can see your current information and then at the bottom there will be an option of edit profile, from there you can change profile details. Or on the dashboard you will se a button of edit profile in front you can edit your profile details from there also.</p></ul>
</details>
<details class="ques">
<summary>How to use seller account?</summary>
<ul><p>Once you registered as a seller then from the same page you will get a login and sign in option. Simply enter your seller email and password and enter to the seller dashboard. In seller dashboard you will see many options. If you want to add some product click on add product block and enter the details. </p>
<p>Keep in mind whatever category and subcategory you will choose your product will be shown in that category on the website. And once you submit the product you can not change its category, you can update other details like price , discount etc from the update and delete block on the dashboard.</p>
<p>You can view your added product in the view product block of dashboard and you can also view your placed orders in the selling info section of dashboard. </p></ul>
</details>
<details class="ques">
<summary>I am a seller at Shoppe & Smile, how will i get the amount of my sold products?</summary>
<ul><p>The amount will be distributed weekly to the sellers. At the end of the week you will amount of your sold product in your respective account. You can verify the amount by checking your selling info of that period of time.</p></ul>
</details>
<details class="ques">
<summary>Whenever I make a purchase, all items from my cart disappeard, how can I see them now ?</summary>
<ul><p>You can view those product in order section of your user dashboard or if you want to save them for future we better suggest you to put then in wishlist before making a purchase.</p></ul>
</details>
<details class="ques">
<summary>How to sell product at thrift store.</summary>
<ul><p>You have to make a seller acount if you want to sell at the thrift store also. At your seller dashboard on the left side at the bottom you will see a link of add product to the thirft store. You can add your second hand product at thrift store from there.</p></ul>
</details>
<details class="ques">
<summary>Every time I make a purchase I thrown out of the website. How can I return back to the website.</summary>
<ul><p>This happens because of the integerated payment gateway. Each time you make a payment you will be tansfered to the payment gateway.But can return back to the website by clicking login link on the payment success page, it will direct you to the login page of website.</p></ul>
</details>

</section>
</body>
</html>