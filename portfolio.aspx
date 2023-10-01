<%@ Page Language="C#" AutoEventWireup="true" CodeFile="portfolio.aspx.cs" Inherits="Moderna_portfolio" %>

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
								<li ><a href="Default.aspx">Home</a></li>
							<li class="dropdown ">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Courses <b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="blog.aspx">Diploma</a></li>
									<li><a href="blog.aspx">HND</a></li>
									<li><a href="blog.aspx">Degree</a></li>
								</ul>
							</li>
							<li class="active"><a href="portfolio.aspx">Gallery</a></li>
							<li ><a href="exam.aspx">Exam</a></li>
							<li><a href="contact.aspx">Contact</a></li>
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
							<li class="active">Portfolio</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="portfolio-categ filter">
							<li class="all active"><a href="#">All</a></li>
							<li class="web"><a href="#" title="">Web design</a></li>
							<li class="icon"><a href="#" title="">Icons</a></li>
							<li class="graphic"><a href="#" title="">Graphic design</a></li>
						</ul>
						<div class="clearfix">
						</div>
						<div class="row">
							<section id="projects">
								<ul id="thumbs" class="portfolio">
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/9.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/9.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-1" data-type="icon">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/12.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/12.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="graphic">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/11.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/11.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/10.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/10.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-4" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/5.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/5.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-5" data-type="icon">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/6.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/6.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/7.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/7.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="graphic">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="XYZ Gallery" href="Moderna/img/works/8.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="Moderna/img/works/8.jpg" alt="Copyrights to XYZ institute photography team.">
									</li>
									<!-- End Item Project -->
								</ul>
							</section>
						</div>
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
									<a href="">Copyright © 2018 XYZ institute. All rights reserved.</a>
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
</body>
</html>



