<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="exam" %>

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
</head>
<body>
	<form id="form1" runat="server">
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
				<a class="navbar-brand" href="Default.aspx"><span>X</span>YZ Institute</a>
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
			
			<div class="container" align="center">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						
                   <asp:Panel ID="Panel1" runat="server" BackColor="WhiteSmoke">
					<br />
                       	<br />
						<h3>Login / Signup Here to Do the Exam</h3>
                       <br />
                       <br />
                       <h5>
                           <asp:Label ID="Label2" runat="server" Text="Username : "></asp:Label>
                           <asp:TextBox ID="txtuser" runat="server" required="" Width="204px"></asp:TextBox>
                           &nbsp;<br />&nbsp;<br /><asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
                           &nbsp;<asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="203px"></asp:TextBox>
                           &nbsp;<br />
                           <br />
                       </h5>
                           <font style="bold">
                       <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Login" 
                           style="height: 26px" />
                       &nbsp;&nbsp;&nbsp; </font>
                       <asp:Button ID="Button5" runat="server" Text="Cancel" />
                       &nbsp;</h5><h5>If you don&#39;t have the account register here :&nbsp; 
                           <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Register" />
                       </h5>
                       <br />
                       <br />
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
									<a href="">Copyright © 2018 XYZ institute.All rights reserved.</a>
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
		jQuery(document).ready(function($) {
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
