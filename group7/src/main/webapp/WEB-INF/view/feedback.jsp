<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>BechDalo Feedback</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
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
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.js"></script>
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
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="js/jquery.uls.data.js"></script>
<script src="js/jquery.uls.data.utils.js"></script>
<script src="js/jquery.uls.lcd.js"></script>
<script src="js/jquery.uls.languagefilter.js"></script>
<script src="js/jquery.uls.regionfilter.js"></script>
<script src="js/jquery.uls.core.js"></script>

		<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <script src="js/easyResponsiveTabs.js"></script>
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
	 
    <!-- <div id="header">
	<div class="container">
      <h1 id="logo"><a href="#"><img src="images/logo.png" height="60px" width="240px"></img></a></h1>
	  
	  
	  
      <div id="navigation" class="header-right">
        <ul>
		  <li><a href="#" style="font-size:15px;">Home</a></li>
          <li><a href="#" style="font-size:15px;">Profile</a></li>
          <li><a href="#" style="font-size:15px;">Feedback</a></li>
          <li><a href="#" style="font-size:15px;">Logout</a></li>
        </ul>
      </div>
    </div>
	</div> -->
	
    <!-- End Header -->
	<!-- Feedback -->
	<!-- Feedback -->
       <div class="feedback main-grid-border" style="margin-top:80px;">
              <div class="container">
                     <h2 class="head">Feedback</h2>
                     <div class="feed-back">
                           <h3>Tell us what you think of us</h3>
                           <P>Your feedback is valuable for us.
                           <div class="feed-back-form">
                           <section id="hire">  
                                  <form style="width: 60%; margin-left:20%; " class="submit" action="submitFeedback" method="post">
                                  <span>User Details</span>
                                  
                                  <form id="filldetails">
                                    <div class="field name-box">
                                                <input type="text" name="firstName" placeholder="First Name" required="" >
                                                <label for="name" style="text-align:center;">First Name</label>
                                                <span class="ss-icon">FName</span>
                                    </div>
                                    
                                    <div class="field name-box">
                                                <input type="text" name="lastName" placeholder="Last Name" required="" >
                                                <label for="email" style="text-align:center;">Last Name</label>
                                                <span class="ss-icon">LName</span>
                                    </div>
                                    
                                   
                                    
                                    <div class="field email-box ">
                                                <input type="text" name="email" placeholder="Email" required="" >
                                                <label for="email" style="text-align:center;">Email</label>
                                                <span class="ss-icon">Email</span>
                                    </div>

                                    <div class="field phonenum-box ">
                                                <input type="text" name="phone" placeholder="Phone Number" required="" >
                                                <label for="phone" style="text-align:center;">Phone</label>
                                                <span class="ss-icon">Phone</span>
                                    </div>
                                    <span>Is there anything you would like to tell us?</span>
                                    <div class="field msg-box">
                                                
                                                <textarea type="text" name="message" placeholder="Message..." ></textarea>
                                                <label for="msg" style="text-align:center;">Your message...</label>
                                                <span class="ss-icon">Text</span>
                                    </div>
                                  
              <input type="submit" value="submit" align="center" style="margin-left:0%; background: #01a185;" >
       
                       </form>
                       
                       <div class="clear"></div>
              
                                  
                                  
                                  <!-- 
                                                <input type="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}">
                                                <input type="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}">
                                                <input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
                                                <input type="text" value="Phone No" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone No';}">
                                                <span>Is there anything you would like to tell us?</span>
                                                <textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
                                                <input type="submit" value="submit">  -->
                                         </form>
                                         </section>
                           </div>
                     </div>
              </div> 
       </div>
       
       
       <script>
                             $('textarea').blur(function () {
                           $('#hire textarea').each(function () {
                                  $this = $(this);
                                  if (this.value != '') {
                                         $this.addClass('focused');
                                         $('textarea + label + span').css({ 'opacity': 1 });
                                  } else {
                                         $this.removeClass('focused');
                                         $('textarea + label + span').css({ 'opacity': 0 });
                                  }
                           });
                     });
                     $('#hire .field:first-child input').blur(function () {
                           $('#hire .field:first-child input').each(function () {
                                  $this = $(this);
                                  if (this.value != '') {
                                         $this.addClass('focused');
                                         $('.field:first-child input + label + span').css({ 'opacity': 1 });
                                  } else {
                                         $this.removeClass('focused');
                                         $('.field:first-child input + label + span').css({ 'opacity': 0 });
                                  }
                           });
                     });
                     $('#hire .field:nth-child(2) input').blur(function () {
                           $('#hire .field:nth-child(2) input').each(function () {
                                  $this = $(this);
                                  if (this.value != '') {
                                         $this.addClass('focused');
                                         $('.field:nth-child(2) input + label + span').css({ 'opacity': 1 });
                                  } else {
                                         $this.removeClass('focused');
                                         $('.field:nth-child(2) input + label + span').css({ 'opacity': 0 });
                                  }
                           });
                     });
                     $('#hire .field:nth-child(3) input').blur(function () {
                           $('#hire .field:nth-child(3) input').each(function () {
                                  $this = $(this);
                                  if (this.value != '') {
                                         $this.addClass('focused');
                                         $('.field:nth-child(3) input + label + span').css({ 'opacity': 1 });
                                  } else {
                                         $this.removeClass('focused');
                                         $('.field:nth-child(3) input + label + span').css({ 'opacity': 0 });
                                  }
                           });
                     });
                     $('#hire .field:nth-child(4) input').blur(function () {
                           $('#hire .field:nth-child(4) input').each(function () {
                                  $this = $(this);
                                  if (this.value != '') {
                                         $this.addClass('focused');
                                         $('.field:nth-child(4) input + label + span').css({ 'opacity': 1 });
                                  } else {
                                         $this.removeClass('focused');
                                         $('.field:nth-child(4) input + label + span').css({ 'opacity': 0 });
                                  }
                           });
                     });
                     $('#hire .field:nth-child(5) input').blur(function () {
                           $('#hire .field:nth-child(5) input').each(function () {
                                  $this = $(this);
                                  if (this.value != '') {
                                         $this.addClass('focused');
                                         $('.field:nth-child(5) input + label + span').css({ 'opacity': 1 });
                                  } else {
                                         $this.removeClass('focused');
                                         $('.field:nth-child(5) input + label + span').css({ 'opacity': 0 });
                                  }
                           });
                     });
                //@ sourceURL=pen.js
              </script>    
       
       <!-- // Feedback -->

	<jsp:include page="footer.jsp"/>
	<!-- // Feedback -->
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
								
								<li><a href="faq.html">FAQ</a></li>
								<li><a href="feedback.html">Feedback</a></li>
								<li><a href="contact.html">Contact</a></li>
								
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Information</h4>
							<ul>
								
								<li><a href="terms.html">Terms of Use</a></li>
								
								<li><a href="privacy.html">Privacy Policy</a></li>	
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
					<a href="index.html"><span>Bech</span>Dalo!</a>
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