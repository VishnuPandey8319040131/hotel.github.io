<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<head runat="server">  

    <title>index</title>

    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--slider-->
    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
</head>
<body>
    <div class="wrap-box"></div>
    <div class="header">
        <div class="wrap">
            <div class="header-top">
                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="index.aspx"><span>Home</span></a></li>
                        <li><a href="about.aspx"><span>About us</span></a></li>
                        <li class="has-sub"><a href="services.aspx"><span>Services</span></a></li>
                        <li class="has-sub">
                            <span class="submenu-button">
                                ::before
                                ::after
                            </span>
                            <a href="#" title>Gallery</a>
                            <ul style="display:none;">
                                <li>
                                    <a href="gallery.aspx" title>photo</a>
                                </li>
                                <li><a href="gallery.aspx" title>video</a></li>
                            </ul>
                            </li>
                        
                        <li class="last"><a href="contact.aspx"><span>Contact</span></a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
                <div class="logo">
                    <h1><a href="index.aspx">HOTEL</a></h1>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!------ Slider ------------>
        <div class="slider">
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider" style="height:300px" >
                    <asp:Repeater ID="rptTemplete" runat="server" OnItemCommand="rptTemplete_ItemCommand" >

                        <ItemTemplate >

                            <img id="img" runat="server" src='<%# Eval("Image") %>' />
                        </ItemTemplate>

                    </asp:Repeater>


                </div>
            </div>
        </div>
    </div><br /><br />
    <!------End Slider ------------>
    <form id="form1" runat="server">
       
                    
        <div class="main">
            <div class="wrap">

                

                    
                <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">

                    <ItemTemplate>
                        
                            
                                  
                                        <div class="col_1_of_3 span_1_of_3">
					<div class="thumb-pad2">
	                    <div class="thumbnail">
	                       <h4>Lorem ipsum dolor sit</h4>
                          


                                                    
                                                        <img id="img28" runat="server" src='<%# Eval("Image2") %>' />
                                               <div class="caption">
	                            <p>Super Delux Double Bed Room</p>
                                                     <p style="color:red; font-size:xx-large">Rs. 1.00/-</p>
	                            <a href="#" class="btn-default btn1"><script src="https://checkout.razorpay.com/v1/payment-button.js" data-payment_button_id="pl_KegRxK7I9tGUE7" async> </script> </a><br /><br /><br /><br />
	                        </div>
	                    </div>
	                </div>
				</div>
                                    

                       
                            


                    </ItemTemplate>

                </asp:Repeater>

                        
               

                    <div class="content-middle">
                        <div class="section group example">
                            <div class="col_1_of_2 span_1_of_2">
                                <img src="images/hotal img.jpg" alt="" />
                                <h4>Hotel and Restaurant  </h4>
                                <p>providing platefrom for Hotel and Restaurant exploration of his Bussiness.</p>
                                <a href="#" class="btn-default btn1"><script src="https://checkout.razorpay.com/v1/payment-button.js" data-payment_button_id="pl_KegRxK7I9tGUE7" async> </script>  
</a>
                            </div>
                            <div class="col_1_of_2 span_1_of_2">
                                 <center><div> <h4 style="background-color:blue">news & event</h4></div></center>

                                
                                     <marquee id="news" direction="up" height="311px" loop="infinite" scrollamount="2" onMouseOver="document.getElementById('news').stop();"  onMouseOut="document.getElementById('news').start();">  
                                        <asp:Repeater ID="rptNews" runat="server" >

                        <ItemTemplate>
                             <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="post-holder">

                             
                               <h3><span class="meta-icon"><i class="fa fa-bullhorn"></i></span> <%# Eval("Heading") %></h3><br />
                               <h5  style="margin-top:-10px"><span class="meta-icon"><i class="fa fa-reorder"></i></span> <%# Eval("Description") %></h5><br />
                               
                               <div class="meta"  style="margin-top:-10px"> <span class="meta-icon"><i class="fa fa-calendar"></i></span> <span class="meta-date"> <%# Eval("EndDate") %></span> </div><br /><br /><br />
                                
                                           
                                       </div>
          </div>      
                                       
                             
                           
                        </ItemTemplate>

                    </asp:Repeater>
                                     </marquee>
                                   
                                    <div class="clear"></div>
                                
                               
                               
                              
                            </div>
                            <div class="clear"></div>
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
                        <li><a href="#">
                            <img src="images/fb.png" alt=""></a></li>
                        <li><a href="#">
                            <img src="images/rss.png" alt=""></a></li>
                        <li><a href="#">
                            <img src="images/tw.png" alt=""></a></li>
                        <li><a href="#">
                            <img src="images/g+.png" alt=""></a></li>
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
