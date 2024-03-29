﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="Admin_HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!------Light Box ------>
    <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<link rel="stylesheet" href="css/swipebox.css"/>
<script src="js/ios-orientationchange-fix.js"></script> 
<script src="js/jquery.swipebox.min.js"></script> 
<script type="text/javascript">
    jQuery(function ($) {
        $(".swipebox").swipebox();
    });
	</script>
	<!------Eng Light Box ------>	
</head>
<body>
    <div class="wrap-box"> </div> 
    <div class="header">	
  <div class="wrap">
	<div class="header-top">
			<div class="cssmenu">
				<ul>
				   <li class="active"><a href="HomeAdmin.aspx"><span>Dashboard</span></a></li>
				   <li><a href="Slide.aspx"><span>slide</span></a></li>
				   <li><a href="services.aspx"><span>Add Image</span></a></li>
				   <li ><a href="gallery.aspx"><span>Add Video</span></a></li>
				   <li class="last"><a href="contact.aspx"><span>File</span></a></li>
				 
				 </ul>
	          </div>
	           <div class="logo">
			     <h1><a href="HomeAdmin.aspx">Dashboard</a></h1>
		 	  </div>
		 	  <div class="clear"></div> 
	   </div>
  </div>
 </div>
    <form id="form1" runat="server">
    <div class="main">
		<div class="wrap">
			<div class="about-top">
				<div class="about">
					<div class="heading4">
				 	<h2>Our Dashboard</h2>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic16.jpg" class="swipebox" title="Image Title"> <img src="images/pic16.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic17.jpg" class="swipebox" title="Image Title"> <img src="images/pic17.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic18.jpg" class="swipebox" title="Image Title"> <img src="images/pic18.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic19.jpg" class="swipebox" title="Image Title"> <img src="images/pic19.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="clear"></div> 
		   		</div>
		   		<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic20.jpg" class="swipebox" title="Image Title"> <img src="images/pic20.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic21.jpg" class="swipebox" title="Image Title"> <img src="images/pic21.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic22.jpg" class="swipebox" title="Image Title"> <img src="images/pic22.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="images/t-pic23.jpg" class="swipebox" title="Image Title"> <img src="images/pic23.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Aenean nonummy hendrerit</h4>
						<p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta hendrerit mauris..</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="clear"></div> 
		   		</div>
			</div>
		</div>
	  </div>
	</div>
    </form>
    <div class="footer">
		<div class="wrap">
		<div class="footer-top">
				<div class="col_1_of_4 span_1_of_4">
					<h3>INFORMATION</h3>
					<ul class="first">
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms and conditions</a></li>
						<li><a href="#">Legal Notice</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>CATEGORIES</h3>
					<ul class="first">
						<li><a href="#">New products</a></li>
						<li><a href="#">top sellers</a></li>
						<li><a href="#">Specials</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>My ACCOUNT</h3>
					<ul class="first">
						<li><a href="#">Your Account</a></li>
						<li><a href="#">Personal info</a></li>
						<li><a href="#">Prices</a></li>
				    </ul>
				</div>
				<div class="col_1_of_4 span_1_of_4 footer-lastgrid">
					<h3>CONTACT US</h3>
					<ul class="follow_icon">
						<li><a href="#"><img src="images/fb.png" alt=""></a></li>
						<li><a href="#"><img src="images/rss.png" alt=""></a></li>
						<li><a href="#"><img src="images/tw.png" alt=""></a></li>
						<li><a href="#"><img src="images/g+.png" alt=""></a></li>
					</ul>
			    </div>
				<div class="clear"></div> 
		</div>
		<div class="copy">
			<p>Design by <a href="http://w3layouts.com">W3layouts</a></p>
		</div>
	</div>
</div>
</body>
</html>
