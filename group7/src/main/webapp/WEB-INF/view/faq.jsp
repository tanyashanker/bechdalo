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
<title>BechDalo FAQS</title>


	
	
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
<script>
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
		<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <script src="js/easyResponsiveTabs.js"></script>
	
	<!-- FAQs Style -->
	<style>
	
	.cd-faq {
	width: 90%;
	max-width: $L; // breakpoints inside partials > _layout.scss
	margin: 2em auto;
	box-shadow: 0 1px 5px rgba(#000, .1);
	@include clearfix;

	@include MQ(M) {
		position: relative;
		margin: 4em auto;
		box-shadow: none;
	}
}

.cd-faq-categories {
	a {
		position: relative;
		display: block;
		overflow: hidden;
		height: 50px;
		line-height: 50px;
		padding: 0 28px 0 16px;
		background-color: $color-1;
		@include font-smoothing;
		color: $color-5;
		white-space: nowrap;
		border-bottom: 1px solid lighten($color-1, 3%);
		text-overflow: ellipsis;

		&::before, &::after {
			/* plus icon on the right */
			position: absolute;
			top: 50%;
			right: 16px;
			display: inline-block;
			height: 1px;
			width: 10px;
			background-color: lighten($color-1, 20%);
		}

		&::after {
			@include transform(rotate(90deg));
		}
	}

	li:last-child a {
		border-bottom: none;
	}

	@include MQ(M) {
		width: 20%;
		float: left;
		box-shadow: 0 1px 2px rgba(#000, .08);

		a {
			@include font-size(13px);
			font-weight: 600;
			padding-left: 24px;
			padding: 0 24px;
			@include transition(background .2s, padding .2s);

			&::before, &::after {
				display: none;
			}

			.no-touch &:hover {
				background: lighten($color-1, 3%);
			}
		}

		.no-js & {
			width: 100%;
			margin-bottom: 2em;
		}
	}

	@include MQ(L) {
		position: absolute;
		top: 0;
		left: 0;
		width: 200px;
		z-index: 2;

		a::before {
			/* decorative rectangle on the left visible for the selected item */
			display: block;
			top: 0;
			right: auto;
			left: 0;
			height: 100%;
			width: 3px;
			background-color: $color-2;
			opacity: 0;
			@include transition(opacity .2s);
		}

		.selected {
			background: darken($color-1, 5%) !important;

			&::before {
				opacity: 1;
			}
		}

		&.is-fixed {
			/* top and left value assigned in jQuery */
			position: fixed;
		}

		.no-js & {
			position: relative;
		}
	}
}

.cd-faq-items {
	position: fixed;
	height: 100%;
	width: 90%;
	top: 0;
	right: 0;
	background: $color-5;
	padding: 0 5% 1em;
	overflow: auto;
	-webkit-overflow-scrolling: touch;
	z-index: 1;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	@include transform(translateZ(0) translateX(100%));
	-webkit-transition: -webkit-transform .3s;
	-moz-transition: -moz-transform .3s;
	transition: transform .3s;

	&.slide-in {
		@include transform(translateZ(0) translateX(0%));
	}

	.no-js & {
		position: static;
		height: auto;
		width: 100%;
		@include transform(translateX(0));
	}

	@include MQ(M) {
		position: static;
		height: auto;
		width: 78%;
		float: right;
		overflow: visible;
		@include transform(translateZ(0) translateX(0));
		padding: 0;
		background: transparent;
	}

	@include MQ(L) {
		float: none;
		width: 100%;
		padding-left: 220px;

		.no-js & {
			padding-left: 0;
		}
	}
}

.cd-close-panel {
	position: fixed;
	top: 5px;
	right: -100%;
	display: block;
	height: 40px;
	width: 40px;
	overflow: hidden;
	text-indent: 100%;
	white-space: nowrap;
	z-index: 2;
	/* Force Hardware Acceleration in WebKit */
	@include transform(translateZ(0));
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	@include transition(right .4s);

	&::before, &::after {
		/* close icon in CSS */
		position: absolute;
		top: 16px;
		left: 12px;
		display: inline-block;
		height: 3px;
		width: 18px;
		background: $color-4;
	}

	&::before {
		@include transform(rotate(45deg));
	}

	&::after {
		@include transform(rotate(-45deg));
	}

	&.move-left {
		right: 2%;
	}

	@include MQ(M) {
		display: none;
	}
}

.cd-faq-group {
	/* hide group not selected */
	display: none;

	&.selected {
		display: block;
	}

	.cd-faq-title {
		background: transparent;
		box-shadow: none;
		margin: 1em 0;

		.no-touch &:hover {
			box-shadow: none;
		}

		h2 {
			text-transform: uppercase;
			@include font-size(12px);
			font-weight: 700;
			color: darken($color-3, 20%);
		}
	}

	.no-js & {
		display: block;
	}

	@include MQ(M) {
		/* all groups visible */
		display: block;

		> li {
			background: $color-5;
			margin-bottom: 6px;	
			box-shadow: 0 1px 2px rgba(#000, .08);
			@include transition(box-shadow .2s);

			.no-touch &:hover {
				box-shadow: 0 1px 10px rgba($color-4, .3);
			}
		}

		.cd-faq-title {
			margin: 2em 0 1em;
		}

		&:first-child .cd-faq-title {
			margin-top: 0;
		}
	}
}

.cd-faq-trigger {
	position: relative;
	display: block;
	margin: 1.6em 0 .4em;
	line-height: 1.2;

	@include MQ(M) {
		@include font-size(24px);
		font-weight: 300;
		margin: 0;
		padding: 24px 72px 24px 24px;

		&::before, &::after {
			/* arrow icon on the right */
			position: absolute;
			right: 24px;
			top: 50%;
			height: 2px;
			width: 13px;
			background: lighten($color-2, 20%);
			-webkit-backface-visibility: hidden;
			backface-visibility: hidden;
			@include transition-property(transform);
			@include transition-duration(.2s);
		}

		&::before {
			@include transform(rotate(45deg));
			right: 32px;
		}

		&::after {
			@include transform(rotate(-45deg));
		}

		.content-visible &::before {
			@include transform(rotate(-45deg));
		}

		.content-visible &::after {
			@include transform(rotate(45deg));
		}
	}
}

.cd-faq-content {

	p {
		@include font-size(14px);
		line-height: 1.4;
		color: $color-4;
	}

	@include MQ(M) {
		display: none;
		padding: 0 24px 30px;

		p {
			line-height: 1.6
		}

		.no-js & {
			display: block;
		}
	}
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

<!-- End of FAQs Style-->
</head>
<body>
<jsp:include page="header.jsp"/>
 <!-- Header -->
	 
   <!--  <div id="header">
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
	<!-- Faq -->
	<div class="faq main-grid-border">
		<div class="container">
			<h2 class="head" style="margin-top:100px;">FAQS</h2>
		<!-- FAQ Collapse-->
			
	<div class="panel-group" id="accordion">

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
        Q. How do I change my password?</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse">
      <div class="panel-body">STEP 1:Log in to your account.<br/>STEP 2: Go to your 'Profile' tab and click 'Change password'.<br/>STEP 3: Enter and retype your new password then click 'Change password'.<br/>STEP 4: Check your email's inbox for the the password confirmation and click 'Activate Password'. Alternatively, you may also follow the instructions sent to you via SMS.
</div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
        Q. How do I sign up?</a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">STEP 1: Visit the website and click the 'Register' button in the upper right corner of the page.<br/>STEP 2: Enter your details and agree to BechDalo!'s Terms and Conditions by checking the corresponding tick box.<br/>Alternatively, you may connect using either your Facebook or Google accounts.
</div>
    </div>
  </div>
















  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
       Q. How to post an Ad?</a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
      <div class="panel-body">Post an ad in 30 seconds in just 3 simple steps. 

Step 1 - Upload a photo 
<br/>Just click on the Sell button at the center-bottom of the main page.
<br/>
Upload photos by either taking instant photos or choosing from your gallery.            
<br/>
Note: Photos are mandatory for posting an ad on BechDalo!.                       
<br/>
Step 2 - Set a right price  
<br/>Set an appropriate price for the product you are selling.
<br/>
Step 3 - Submit the Ad
<br/>Select the right category and tap 'Post Your Ad'.
</div>
    </div>
  </div>
 
 <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
       Q. How do reviews work?</a>
      </h4>
    </div>
    <div id="collapse4" class="panel-collapse collapse">
      <div class="panel-body">In addition to providing unbiased information people can rely on, people also like reviews because they provide third party insight into the quality and experience your product provides.
</div>
    </div>
  </div>
  
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
       Q. Find anything suspicious? </a>
      </h4>
    </div>
    <div id="collapse5" class="panel-collapse collapse">
      <div class="panel-body">Step 1
 <br/>
At the end of every Ad, there’s an option: Report This Ad.
<br/>Step 2
<br/>
On clicking it, a pop-up with reasons will appear. Select your reason for reporting the ad and tap Send Report.
</div>
    </div>
  </div>
  
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
       Q. Why do I see different prices for the same product?</a>
      </h4>
    </div>
    <div id="collapse6" class="panel-collapse collapse">
      <div class="panel-body">You could see different prices for the same product, as it could be listed by many Sellers.</div>
    </div>
  </div>
  
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">
       Q. Is it necessary to have an account to shop on BechDalo!?</a>
      </h4>
    </div>
    <div id="collapse7" class="panel-collapse collapse">
      <div class="panel-body">Yes, it's necessary to log into your BechDalo! account to shop. Shopping as a logged-in user is fast & convenient and also provides extra security.You'll have access to a personalised shopping experience including recommendations and quicker check-out.
</div>
    </div>
  </div>
  
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">
       Q. How do I edit phone number in Ad?</a>
      </h4>
    </div>
    <div id="collapse8" class="panel-collapse collapse">
      <div class="panel-body">
      Edit your phone number in two simple steps.
<br/>
- First, change the phone number in your profile 
<br/>
- After it is done, follow the instructions below for phone number to reflect in the ad.
<br/>
Go to the ‘Selling’ tab of ‘My Ads’ and tap on the respective ad.
<br/>Next, select ‘Edit Ad’ option after which you can ‘Update Ad’.
<br/>Note: This phone number cannot be associated with any other OLX account.
</div>
    </div>
  </div>
  

  
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">
       Q. Why do I see different prices for books with the same title?</a>
      </h4>
    </div>
    <div id="collapse10" class="panel-collapse collapse">
      <div class="panel-body">You can find various editions of books with the same title on BechDalo! -- from paperbacks or hardcovers to collector's editions. Some of them are re-published/printed within India, while some editions are imported. The price of the titles varies based on this and the seller offering it.<br/>All other available editions and their prices for a particular title are mentioned on the respective product page under 'Other Editions'.
</div>
    </div>
  </div>
  

  
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse12">
        Q. What is Free Limit?</a>
      </h4>
    </div>
    <div id="collapse12" class="panel-collapse collapse">
      <div class="panel-body">Free Limit defines how many Ads you can post for Free on BechDalo! in 30/60 days (differs by category) across India. This means that you can only post an Ad today if in the last 30/60 days you did not cross your Free Limit (unless you pay for it).
</div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse13">
       Q. Why do Free Limits exist?</a>
      </h4>
    </div>
    <div id="collapse13" class="panel-collapse collapse">
      <div class="panel-body">Free Limits are incorporated to benefit both sellers and buyers.<br/>Without limits, some users flood our platform with countless Ads including duplicates.<br/>This creates clutter which spoils buyer experience, and in turn hampers a genuine, committed sellerâs chances of selling.
</div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse14">
        Q. If I delete my current Ad, can I post another Ad for free?</a>
      </h4>
    </div>
    <div id="collapse14" class="panel-collapse collapse">
      <div class="panel-body">No. Free Limits and Paid Ads are both on the basis of Ad âpostedâ and not âactiveâ Ads.<br/>
This means if you âpostedâ 3 Ads in last 30/60 days and the limit is 3, you cannot further post for free ads regardless of these Ads being live or deleted by you. In case you have deleted a pending ad, the free limit will be further delayed by 30/60 days from the date of deletion.
<br/>
To post for free, you will have to wait for these Ads to complete their validity period (30/60 days from posting date).
<br/>
Similarly, deleting a Paid Ad does not mean you can use another Ad in its place. Once your Paid Ad goes active, one unit from your Paid Ad Package is used up.</div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse15">
      Q. How can I purchase Paid Ads after crossing the Free Limit?</a>
      </h4>
    </div>
    <div id="collapse15" class="panel-collapse collapse">
      <div class="panel-body">You will be notified when you try to post an Ad after your Free Limits are over.
This takes you directly to buy Single Paid Ads or Packages of Paid Ads.  We recommend buying Packages for bulk discount.
You can also go to âPending Adsâ in âMy Adsâ to activate by making payment.</div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse16">
       Q. How long will my Ad stay live?</a>
      </h4>
    </div>
    <div id="collapse16" class="panel-collapse collapse">
      <div class="panel-body">Your Ad will stay live for 30 days from posting, regardless of when you post it within the validity period of your Paid Ad Package.
It means package for unlimited ads offer unlimited ads within a period of 30 days from the day package is bought. Once the package expires all the corresponding ads will also expire irrespective of their tenure.
</div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse17">
       Q. Can I cancel after making the payment?</a>
      </h4>
    </div>
    <div id="collapse17" class="panel-collapse collapse">
      <div class="panel-body">No, Paid Ads are non-refundable. You can use these till 30 days after which they expire.</div>
    </div>
  </div>
  
</div>
		<!-- FAQ Collapse-->	
		</div>	
	</div>
	<jsp:include page="footer.jsp"/>
	<!-- // Faq -->
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
					<p> Â© 2018 BechDalo! All Rights Reserved | Design by Group 7</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer> -->
        <!--footer section end-->
</body>
</html>