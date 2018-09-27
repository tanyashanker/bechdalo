<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,700,300'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>

<style>
html { overflow-y: scroll; }
body {
  font: 100% / 1.414 "Open Sans", "Roboto", arial, sans-serif;
  background: #e9e9e9;
}
a,
[type="submit"] {
  transition: all .25s ease-in;
}
.signup__container {
  position: absolute;
  top: 60%;
  right: 0;
  left: 0;
  align-y: center;
  bottom: 500px;
  margin-top: 11px;
  margin-right: auto;
  margin-left: auto;
  margin-bottom: 10px;
  -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 50rem;
  height: 30rem;
  border-radius: 0.1875rem;
  box-shadow: 0px 0.1875rem 0.4375rem rgba(0, 0, 0, 0.25);
}
.signup__overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.76);
}
.container__child {
  width: 50%;
  height: 100%;
  color: #fff;
}
.signup__thumbnail {
  position: relative;
  padding: 2rem;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  background: url(http://ultraimg.com/images/spectre-login.jpg);
  background-repeat: no-repeat;
  background-position: top center;
  background-size: cover;
}
.thumbnail__logo,
.thumbnail__content,
.thumbnail__links {
  position: relative;
  z-index: 2;
}
.thumbnail__logo {
  align-self: flex-start;
}
.logo__shape {
  fill: #fff;
}
.logo__text {
  display: inline-block;
  font-size: .8rem;
  font-weight: 700;
  vertical-align: bottom;
}
.thumbnail__content {
  align-self: center;
}
h1,
h2 {
  font-weight: 300;
  color: white;
}
.heading--primary {
  font-size: 1.999rem;
}
.heading--secondary {
  font-size: 1.414rem;
}
.thumbnail__links {
  align-self: flex-end;
  width: 100%;
}
.thumbnail__links a {
  font-size: 1rem;
  color: #fff;
}
.thumbnail__links a:focus, .thumbnail__links a:hover {
  color: rgba(255, 255, 255, 0.5);
}
.signup__form {
  padding: 2.5rem;
  background: #fafafa;
}
label {
  font-size: .85rem;
  text-transform: uppercase;
  color: #ccc;
}
.form-control {
  background-color: transparent;
  border-top: 0;
  border-right: 0;
  border-left: 0;
  border-radius: 0;
}
.form-control:focus {
  border-color: #111;
}
#uname{
       color:  #7ed321;
}
#pass{
color:  #7ed321;
}
.btn--form {
  padding: .5rem 2.5rem;
  font-size: .95rem;
  font-weight: 600;
  text-transform: uppercase;
  color: #fff;
  background: #111;
  border-radius: 2.1875rem;
}
.btn--form:focus, .btn--form:hover {
  background: #7ed321;
}
.signup__link {
  font-size: 0.95rem;
  font-weight: 600;
  text-decoration: underline;
  color: grey;
}
.signup__link:focus, .signup__link:hover {
  color: red;
}
h6{
color: grey;
}
/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}
/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
.mySlides {display: none}
img {vertical-align: middle;}
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2.5s;
  animation-name: fade;
       overflow: hidden;
}
@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
.header{
    overflow: hidden;
    background-color: white;
    border-color: #9ecaed;
       box-shadow: 0 0 10px #7ed321;
}
.header-left{
       padding-top: 10px;
       padding-left:25px;
    float: left;
}
.container-fluid{
       background-color: #3c3d41;
       
       height: 150px;
       box-shadow: 0 0 10px #7ed321;
}
.fa {
    padding: 8px;
    font-size: 15px;
    width: 30px;
       border-radius:3px;
    text-align: center;
    text-decoration: none;
}
.fa:hover {
    opacity: 0.7;
}
.fa-facebook {
    background: #3B5998;
    color: white;
}
.fa-twitter {
    background: #55ACEE;
    color: white;
}
.fa-linkedin {
    background: #0077B5;
    color: white;
}
.fa-instagram {
    background: #9b6954;
    color: white;
}
ul#horizontal-list {
       min-width: 600px;
       list-style: none;
       padding-top: 20px;
       }
       ul#horizontal-list li {
              display: inline;
       }
       .text-col{
       color:#e6e8ed;
       margin-top:10px;
       }
       .tag{
         margin-top:30px;
         padding-left:50px;
       }
       
       .header-right{
              
              float: right;
              
       }
       .header-right a{
              text-decoration: none;
              padding-left: 10px;
              padd: 10px;
              font-size: 25px;
              font-size:2vw;
       }
       #connection li{
       padding-left:8px;
       
       }
       #header { 

    position: fixed;
    top: 0;
    right: 0;
    left: 0;
       height:70px;
    z-index: 1030;
    min-height: 50px;
    margin-bottom: 20px;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
    padding-left: 15px;
    padding-right: 15px;
       background-color: black;
       opacity:.7;

}
h1#logo { font-size:0; padding-top: 5px; line-height:0; width:202px; height:62px; float:left; }
h1#logo a{ display:block; height:62px; }
#navigation { float:right; white-space:nowrap; }
#navigation ul{ list-style-type: none; padding-top:30px;}
#navigation ul li{ float:left; display:inline; border-right:solid 1px #5f5f5f; padding-right:8px; margin-right:8px;}
#navigation ul li.last{ border-right:0; padding-right:0; margin-right:0;}
#navigation ul li a{ color:#fff;}
#navigation ul li a:hover,
#navigation ul li a.active { color:#ffd900; }
</style>
</head>
<body>
<!--
<div class="container">
-->
<table class="new-container">
<tr>
<header id="header-container">
        <!-- Header -->
       
    <div id="header">
       <div class="container">
      <h1 id="logo"><a href="home"><img src="images/logo.png" height="60px" width="240px"></img></a></h1>
         
         
         
      <div id="navigation" class="header-right">
        <ul>
                <li><a href="/home" style="font-size:15px;">Home</a></li>
        <!--  <li><a href="" style="font-size:15px;">Profile</a></li>
        
          <li><a href="#" style="font-size:15px;">Logout</a></li>  -->  
        </ul>
      </div>
    </div>
       </div>
       
    <!-- End Header -->
       </header>
</tr>
<tr>
  <div class="signup__container" style="overflow: hidden;
    background-color: white;
    border-color: #9ecaed;
       box-shadow: 0 0 10px #7ed321;
       position: absolute;
       margin-top: 0%;
       ">
  

  <div class="container__child signup__thumbnail">
    <div class="thumbnail__logo">
       <div class="mySlides fade">
      <img src="\images\laptop.jpg" style="width:100%">
                </div>
                <div class="mySlides fade">
      <img src="\images\bike1.jpg" style="width:100%">
                </div>
                <div class="mySlides fade">
      <img src="\images\mobile.jpg" style="width:100%">
                </div>
                <div class="mySlides fade">
      <img src="\images\dog.jpg" style="width:100%">
                </div>
                <div class="mySlides fade">
      <img src="\images\books.jpg" style="width:100%">
                </div>
                <div class="mySlides fade">
      <img src="\images\car.jpg" style="width:100%">
                </div>
                <div class="mySlides fade">
      <img src="\images\shoes.jpg" style="width:100%">
                </div>
                <div class="mySlides fade">
      <img src="\images\fashion1.jpg" style="width:100%">
                </div>

       <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
       <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
       <br>

<script>
var slideIndex = 1;
showSlides(slideIndex);
function plusSlides(n) {
  showSlides(slideIndex += n);
}
function currentSlide(n) {
  showSlides(slideIndex = n);
}
function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");

  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }

  slides[slideIndex-1].style.display = "block";  
  
}
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000);
}
</script>

       
       
    <div class="thumbnail__content text-center">
      <h1 class="heading--primary">Welcome to BechDalo!</h1>
      <h2 class="heading--secondary">SHOP NOW AND ENJOY</h2>
    </div>
    
    <div class="signup__overlay"></div>
  </div>
  <div class="container__child signup__form">
    <form action="/submit_login" method="post">
      <div class="form-group">
         <br>
         <br>
         <br>
        <label id="uname" for="username"><b>Username</b></label>
        <input class="form-control" type="text" name="username" id="username" placeholder="username" required />
      </div>
      <div class="form-group">
        <label id="pass" for="password"><b>Password</b></label>
        <input class="form-control" type="password" name="password" id="password" placeholder="********" required />
      </div>
      <div class="m-t-lg">
        <ul class="list-inline">
          <li>
            <input class="btn btn--form" type="submit" value="LOGIN" />
          </li>
          <li>
                <br>
                <br>
                <h6>New User? Register
            <a class="signup__link" href="/register">Here</a></h6>
          </li>
        </ul>
      </div>
    </form>  
       
  </div>
  
     
</div>
</tr>
<tr>
<!--FOOTER-->
         <footer class="footer page-footer font-small blue pt-4" >
              <div class="container-fluid text-center text-md-left" style="position:absolute; margin-top: 41.5%; width:100%;">
      <!-- Grid row -->
      <div class="row">

        <!-- Grid column -->
        <div class="col-md-6 mt-md-0 mb-3 tag" style="width:40%;">

          <!-- Content -->
          <h2 class="text-col">BechDalo!</h2>
          <p class="text-col">India Bole Bech Dalo</p>

        </div>
        

        <!-- Grid column -->
        <div class="col-md-3 mb-md-0 mb-3" style="width:35%; padding-top:5px;">

            <!-- Links -->
            <h4 class="text-col">Links</h4>

            <ul class="list-unstyled">
              <li>
                <a href="/terms">Terms Of Use</a>
              </li>
              <li>
                <a href="/faq">Help & FAQ</a>
              </li>
              <li>
                <a href="/contact">Contact Us</a>
              </li>
              <li>
                <a href="/feedback">Feedback</a>
              </li>
            </ul>

          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 mb-md-0 mb-3" id="connection" style="padding-top:10px;">

            <!-- Links -->
            <h4 class="text-col">Connect With Us</h4>

            <ul class="list-unstyled" id="horizontal-list">
              <li>
                <a href="#" class="fa fa-facebook"></a>
              </li>
              <li>
                <a href="#" class="fa fa-twitter"></a>
              </li>
              <li>
                <a href="#" class="fa fa-linkedin"></a>
              </li>
              <li>
                <a href="#" class="fa fa-instagram"></a>
              </li>
            </ul>

          </div>
          <!-- Grid column -->

      </div>
      <!-- Grid row -->

    
    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3" style="height: 30px; ">© 2018 Copyright:
      <a href="/home"> BechDalo.com</a>
    </div>
    <!-- Copyright -->


              
              </div>
              
         </footer>
         </tr>
       <!--  </div>  -->
       
       </table>
         
</body>
</html>
