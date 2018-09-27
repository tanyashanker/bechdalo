<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Bech Dalo Home Page</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/css/font-awesome.min.css" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/js/bootstrap.min.js"></script>
<script src="/js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<script type="text/javascript" src="/js/jquery.leanModal.min.js"></script>
<link href="/css/jquery.uls.css" rel="stylesheet"/>
<link href="/css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="/css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="/js/jquery.uls.data.js"></script>
<script src="/js/jquery.uls.data.utils.js"></script>
<script src="/js/jquery.uls.lcd.js"></script>
<script src="/js/jquery.uls.languagefilter.js"></script>
<script src="/js/jquery.uls.regionfilter.js"></script>
<script src="/js/jquery.uls.core.js"></script>
<style>
#top { height:480px; background:grey; }
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
	
	<jsp:include page="header.jsp"/>
	 <!-- Header -->
	 
    <%-- <div id="header">
	<div class="container">
      <h1 id="logo"><a href="#"><img src="images/logo.png" height="60px" width="240px"></img></a></h1>
	  
	  
	  
      <div id="navigation" class="header-right">
      <c:if test="${sessionScope.name == null}">
        <ul>
		  <li><a href="/home" style="font-size:15px;">Home</a></li>
          <li><a href="/register" style="font-size:15px;">SignUp</a></li>
          
          <li><a href="/login" style="font-size:15px;">SignIn</a></li>
        </ul>
        </c:if>
        <c:if test="${sessionScope.name != null}">
        <ul>
    <li><a>Welcome ${sessionScope.name}!</a></li>
    <li><a href="/logout">Log out</a></li>
    </ul>
  </c:if>
        
      </div>
    </div>
	</div> --%>
	
    <!-- End Header -->
	<!-- 
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
	  <li class="disabled"><a href="#">About Us</a></li>
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">About Us</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">All Categories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Cars</a></li>
          <li><a href="#">Mobiles</a></li>
          <li><a href="#">Furnitures</a></li>
        </ul>
      </li>
    </ul>
	
    <ul class="nav navbar-nav navbar-right">
	
      <li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="register.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
	<form class="navbar-form navbar-right" action="/action_page.php">
      <div class="form-group">
        <input type="text" size="20px" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="inverse btn btn-default">Search</button>
    </form>
  </div>
</nav>
	 -->

  
  
 <!-- <div id="myCarousel" class="carousel slide" data-ride="carousel" style="min-width: 300px;">
    <!-- Indicators 
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol> -->
<style>
.mySlides {display: none}
img {vertical-align: middle;}

.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 5s;
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
</style>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="mySlides fade">
        <img src="images/slide1.jpeg" alt="" style="width:100%;">
      </div>
	  <div class="mySlides fade">
        <img src="images/slide2.jpeg" alt="" style="width:100%;">
      </div>
		<div class="mySlides fade">
        <img src="images/slide3.jpeg" alt="" style="width:100%;">
      </div>
    
      <div class="mySlides fade">
        <img src="images/slide4.jpeg" alt="" style="width:100%;">
      </div>
	  <div class="mySlides fade">
        <img src="images/slide5.jpeg" alt="" style="width:100%;">
      </div>
	  <div class="mySlides fade">
        <img src="images/slide6.jpeg" alt="" style="width:100%;">
      </div>
	  <div class="mySlides fade">
        <img src="images/slide7.jpeg" alt="" style="width:100%;">
      </div>
	    <div class="mySlides fade">
        <img src="images/slide8.jpeg" alt="" style="width:100%;">
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
    setTimeout(carousel, 4000);
}
</script>

    <!-- Left and right controls 
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>-->
 
 

	
	 
		<!-- content-starts-here -->
		<div class="content">
		
			<div class="categories container-fluid">
			<div class="col-md-2" style="margin-top:20px;"><a href="https://www.cafecoffeeday.com/"><img src="images/add3.jpg"></img></a></div>
				<div class="container col-md-8" style="max-width:850px;">
				
					<div class="col-md-3 focus-grid">
						<a href="/category">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-mobile"></i></div>
									<h4 class="clrchg">Mobiles</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-3 focus-grid">
						<a href="/category#parentVerticalTab2">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-laptop"></i></div>
									<h4 class="clrchg"> Electronics & Appliances</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-3 focus-grid">
						<a href="/category#parentVerticalTab3">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-car"></i></div>
									<h4 class="clrchg">Cars</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-3 focus-grid">
						<a href="/category#parentVerticalTab4">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-motorcycle"></i></div>
									<h4 class="clrchg">Bikes</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-3 focus-grid">
						<a href="/category#parentVerticalTab5">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-wheelchair"></i></div>
									<h4 class="clrchg">Furnitures</h4>
								</div>
							</div>
						</a>
					</div>
					
					
					
					<div class="col-md-3 focus-grid">
						<a href="/category#parentVerticalTab6">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-paw"></i></div>
									<h4 class="clrchg">Pets</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-3 focus-grid">
						<a href="/category#parentVerticalTab7">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-book"></i></div>
									<h4 class="clrchg">Books, Sports & Hobbies</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-3 focus-grid">
						<a href="/category#parentVerticalTab8">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-asterisk"></i></div>
									<h4 class="clrchg">Fashion</h4>
								</div>
							</div>
						</a>
					</div>	
			
				
			
					<div class="clearfix"></div>
				</div>
				<div class="col-md-2" style="margin-top:20px;"><a href="https://www.cafecoffeeday.com/"><img src="images/add3.jpg"></img></a></div>
			</div>
			
				<div class="container-fluid">
				
				
				
				<div class="col-md-6  text-center">
				<div class="containr">    
			<h1>Sell or Advertise   <span class="segment-heading">    anything online </span> with BechDalo</h1>
			<p>India Bole Bech Dalo</p>
			<a href="post-ad.html">Post Free Ad</a>
				</div>
		   </div>
		   
		<div class="col-md-6 main-banner banner text-center">
	             <div class="containr">    
			<h1>Sell or Advertise   <span class="segment-heading">    anything online </span> with BechDalo</h1>
			<p>India Bole Bech Dalo</p>
			<a href="post-ad.html">Post Free Ad</a>
	  </div>
	</div>
				
				
				
				
			</div>
			
		
		<jsp:include page="footer.jsp"/>
		<!--footer section start-->		
		<!-- <footer>
			<div class="footer-top">
				<div class="container">
					<div class="foo-grids">
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Who We Are</h4>
							<p>BechDalo is a free local classifieds site.<br/> Sell anything from used cars to mobiles, furniture, laptops, clothing and more. Submit ads for free and without creating an account. If you want to buy something - here you will find interesting items, cheaper than in the store. Start buying and selling in the most easy way on BechDalo</p>
							
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Help</h4>
							<ul>
								
								<li><a href="/faq">FAQ</a></li>
								<li><a href="/feedback">Feedback</a></li>
								<li><a href="/contact">Contact</a></li>
								
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Information</h4>
							<ul>
								
								<li><a href="/terms">Terms of Use</a></li>
								
								<li><a href="/privacy">Privacy Policy</a></li>	
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Contact Us</h4>
							<span class="hq">Our headquarters</span>
							<address>
								<ul class="location">
									<li><span class="glyphicon glyphicon-map-marker"></span></li>
									<li>Akshay Tech Park, Whitefield, Bangalore</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-earphone"></span></li>
									<li>+9876543210</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-envelope"></span></li>
									<li><a href="mailto:info@example.com">BechDalo@gmail.com</a></li>
									<div class="clearfix"></div>
								</ul>						
							</address>
						</div>
						<div class="clearfix"></div>
					</div>						
				</div>	
			</div>	
			<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="/home"><span>Bech</span>Dalo!</a>
				</div>
				<div class="footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li><a class="instagram" href="#"><span>instagram</span></a></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
						
					</ul>
				</div>
				<div class="copyrights">
					<p> © 2018 BechDalo! All Rights Reserved | Design by Group 7</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer> -->
        <!--footer section end-->
</body>
</html>