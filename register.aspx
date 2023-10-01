<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     	<meta charset="utf-8">
	<title>XYZ Institute</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<!-- css -->
	<link href="Moderna/css/bootstrap.min.css" rel="stylesheet" />
	<link href="Moderna/css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="Moderna/css/jcarousel.css" rel="stylesheet" />
	<link href="Moderna/css/flexslider.css" rel="stylesheet" />
	<link href="Moderna/css/style.css" rel="stylesheet" />


	<!-- Theme skin -->
	<link href="Moderna/skins/default.css" rel="stylesheet" />

	<!-- =======================================================
    Theme Name: Moderna
    Theme URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
	======================================================= -->
        <style type="text/css">
            .auto-style3 {
                width: 55%;
            }
            .auto-style5 {
                width: 46px;
                height: 33px;
            }
            .auto-style6 {
                height: 33px;
            }
            .auto-style7 {
                width: 46px;
                height: 49px;
            }
            .auto-style8 {
                height: 49px;
            }
            .auto-style10 {
                height: 44px;
            }
            .auto-style12 {
                height: 33px;
                width: 149px;
            }
            .auto-style13 {
                height: 49px;
                width: 149px;
            }
            .auto-style14 {
                height: 44px;
                width: 149px;
            }
            .auto-style15 {
                width: 46px;
                height: 64px;
            }
            .auto-style16 {
                height: 64px;
                width: 149px;
            }
            .auto-style17 {
                height: 64px;
                text-align: left;
            }
            .auto-style18 {
                height: 57px;
            }
            .auto-style19 {
                width: 46px;
                height: 44px;
            }
            .auto-style20 {
                height: 44px;
                text-align: left;
            }
        </style>
</head>
<body>
	  
    
    
    
    
    
    <form id="form2" runat="server">
	<div id="wrapper">
		<!-- start header -->
		<header>
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
				<a class="navbar-brand" href="index.html"><span>X</span>YZ Institute</a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li><a href="Default.aspx">Home</a></li>
							<li class="dropdown ">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Features <b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="blog.aspx">Diploma</a></li>
									<li><a href="blog.aspx">HND</a></li>
									<li><a href="blog.aspx">Degree</a></li>
								</ul>
							</li>
							<li><a href="portfolio.aspx">Gallery</a></li>
							<li class="active"><a href="exam.aspx">Exam</a></li>
							<li ><a href="contact.aspx">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="Default.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li class="active">Exam</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			
			<div class="container"  >
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						
                   <asp:Panel ID="Panel2" runat="server" BackColor="WhiteSmoke">
					<br />
                       <table class="auto-style3" align="center">
                           <tr>
                               <td align="center" class="auto-style18" colspan="3">
                                   <h5>Exam Registration Form </h5>
                               </td>
                               <caption>
                                   <h3></h3>
                               </caption>
                           </tr>
                           <tr>
                               <td class="auto-style5">&nbsp;</td>
                               <td class="auto-style12">ID :</td>
                               <td class="auto-style6">
                                   <asp:TextBox ID="txtid" runat="server" required="" Width="199px"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style7"></td>
                               <td class="auto-style13">FIRST NAME :</td>
                               <td class="auto-style8">
                                   <asp:TextBox ID="txtfname" runat="server" required="" Width="201px"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style19"></td>
                               <td class="auto-style14">LAST NAME :</td>
                               <td class="auto-style10">
                                   <asp:TextBox ID="txtlname" runat="server" required="" Width="201px"></asp:TextBox>
                               </td>
                           </tr>
                             <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style14">COURSE :</td>
                               <td class="auto-style10">


                                   <asp:DropDownList ID="cmbcourse" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                                   </asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [course]"></asp:SqlDataSource>
&nbsp;</td>
                           </tr>
                             <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style14">NIC :</td>
                               <td class="auto-style10">
                                   <asp:TextBox ID="txtnic" runat="server" required="" Width="199px"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style14">DOB :</td>
                               <td class="auto-style10">
                                   <asp:TextBox ID="txtdate" runat="server" placeholder="DD" required="" Width="42px"></asp:TextBox>
                                   <asp:TextBox ID="txtmonth" runat="server" placeholder="MM" required="" Width="39px"></asp:TextBox>
                                   <asp:TextBox ID="txtyear" runat="server" placeholder="YYYY" required="" Width="70px"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style14">EMAIL : </td>
                               <td class="auto-style10">
                                   <asp:TextBox ID="txtemail" runat="server" required="" Width="201px"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style14">GENDER :</td>
                               <td class="auto-style10">
                                   <asp:DropDownList ID="cmbgender" runat="server">
                                       <asp:ListItem>Male</asp:ListItem>
                                       <asp:ListItem>Female</asp:ListItem>
                                   </asp:DropDownList>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style14">USER NAME :</td>
                               <td class="auto-style20">
                                   <asp:TextBox ID="txtuser" runat="server" required="" Width="199px"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style15"></td>
                               <td class="auto-style16">PASSWORD :</td>
                               <td class="auto-style17">
                                   <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="199px"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style14">
                                   <asp:Button ID="Button1" runat="server" align="right" OnClick="Button1_Click" Text="Register" />
                               </td>
                               <td class="auto-style10">
                                   <asp:Button ID="Button2" runat="server" align="left" OnClick="Button2_Click" Text="Reset" />
                               </td>
                           </tr>
                          
            </table>
                       </asp:Panel>
					</div>
				</div>
			   
			</div>
		</section>
<footer>
			<!--<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Get in touch with us</h5>
							<address>
					<strong>Moderna company Inc</strong><br>
					 Modernbuilding suite V124, AB 01<br>
					 Someplace 16425 Earth </address>
							<p>
								<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
								<i class="icon-envelope-alt"></i> email@domainname.com
							</p>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Pages</h5>
							<ul class="link-list">
								<li><a href="#">Press release</a></li>
								<li><a href="#">Terms and conditions</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Career center</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Latest posts</h5>
							<ul class="link-list">
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
								<li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
								<li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
							</ul>
						</div>
					</div>
                <div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Flickr photostream</h5>
							<div class="flickr_badge">
								<script type="text/javascript" src="https://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
							</div>
							<div class="clear">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; Moderna Theme. All right reserved.</p>
								<div class="credits">
									<!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Moderna
                  -->
									<a href="">Copyright © 2018 XYZ institute.All rights reserved..</a>
								</div>
							</div>
						</div>
						<!--<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>-->
		</footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="Moderna/js/jquery.js"></script>
	<script src="Moderna/js/jquery.easing.1.3.js"></script>
	<script src="Moderna/js/bootstrap.min.js"></script>
	<script src="Moderna/js/jquery.fancybox.pack.js"></script>
	<script src="Moderna/js/jquery.fancybox-media.js"></script>
	<script src="Moderna/js/google-code-prettify/prettify.js"></script>
	<script src="Moderna/js/portfolio/jquery.quicksand.js"></script>
	<script src="Moderna/js/portfolio/setting.js"></script>
	<script src="Moderna/js/jquery.flexslider.js"></script>
	<script src="Moderna/js/animate.js"></script>
	<script src="Moderna/js/custom.js"></script>

	<script>
        jQuery(document).ready(function ($) {
            //Google Map
            var get_latitude = $('#google-map').data('latitude');
            var get_longitude = $('#google-map').data('longitude');

            function initialize_google_map() {
                var myLatlng = new google.maps.LatLng(get_latitude, get_longitude);
                var mapOptions = {
                    zoom: 14,
                    scrollwheel: false,
                    center: myLatlng
                };
                var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map
                });
            }
            google.maps.event.addDomListener(window, 'load', initialize_google_map);
        });
	</script>
	<script src="contactform/contactform.js"></script>

    </form>
</body>
</html>
