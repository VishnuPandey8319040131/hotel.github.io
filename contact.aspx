﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>contact</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
     <div class="wrap-box"> </div> 
    <div class="header">	
  <div class="wrap">
	<div class="header-top">
			<div class="cssmenu">
				<ul>
				   <li><a href="index.aspx"><span>Home</span></a></li>
				   <li><a href="about.aspx"><span>About us</span></a></li>
				   <li><a href="services.aspx"><span>Services</span></a></li>
				   <li><a href="gallery.aspx"><span>Gallery</span></a></li>
				   <li class="active"><a href="contact.aspx"><span>Contact</span></a></li>
				   <div class="clear"></div>
				 </ul>
	          </div>
	           <div class="logo">
			     <h1><a href="index.aspx">Smarty</a></h1>
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
					<div class="map">
					   	<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
					</div>			
				<div class="contact">	
					<div class="col1 span_1_of_contact">
						<div class="company_address">
		      				<div class="contact-left">
								<h3>Address 1</h3>	
								<p>Telephone:1-22-5555</p>
								<p>Fax:1-22-5555</p>
								<a href="#"><p>Email:smarty(at)mail.com</p></a>
							</div>
						    <div class="contact-left1">
								<h3>Address 2</h3>	
								<p>Telephone:1-22-5555</p>
								<p>Fax:1-22-5555</p>
								<a href="#"><p>Email:smarty(at)mail.com</p></a>
						    </div>
							<div class="clear"></div> 	
						</div>
					</div>				
					<div class="col1 span_2_of_contact">
					  <div class="contact-form">
					  	<h3>Contact Us</h3>
						   <table>

                <tr>
                    <td>  Name:</td>
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                                
                    <td>  EMail:</td>
                    <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                                
                    <td>  Subject:</td>
                   <td><asp:TextBox ID="txtsubject" runat="server"></asp:TextBox></td>
                                  
                </tr>
           
               </table><br /><br /><br /><br />
               
          <table>
                <tr>
                 
                    <td><asp:Button ID="btnsave" runat="server" Text="Save Information" OnClick="btnsave_Click"/></td>

                   <td> <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click"/></td>
                </tr>

        </table>

						</div>
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
			<p>Design by <a href="http://w3layouts.com">vishnu pandey & Yuvraj sen</a></p>
		</div>
	</div>
</div>
</body>
</html>
