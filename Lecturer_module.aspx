<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lecturer_module.aspx.cs" Inherits="Lecturer_module" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XYZ Institute</title>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link href="lumino/css/bootstrap.min.css" rel="stylesheet">
	<link href="lumino/css/font-awesome.min.css" rel="stylesheet">
	<link href="lumino/css/datepicker3.css" rel="stylesheet">
	<link href="lumino/css/styles.css" rel="stylesheet">
	
	<!--Custom Font
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
    <style type="text/css">
        .auto-style1 {
            height: 60px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 35px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            height: 41px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            height: 27px;
        }
        .auto-style14 {
            height: 29px;
        }
        </style>
    </head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="#"><span>XYZ Institute </span>Admin</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						<em class="fa fa-envelope"></em><span class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box"><a href="profile.html" class="pull-left">
									<img alt="image" class="img-circle" src="Images/fff.png">
									</a>
									<div class="message-body"><small class="pull-right">3 mins ago</small>
										<a href="#"><strong>John Doe</strong> commented on <strong>your photo</strong>.</a>
									<br /><small class="text-muted">1:24 pm - 25/03/2015</small></div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box"><a href="profile.html" class="pull-left">
									<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body"><small class="pull-right">1 hour ago</small>
										<a href="#">New message from <strong>Jane Doe</strong>.</a>
									<br /><small class="text-muted">12:27 pm - 25/03/2015</small></div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button"><a href="#">
									<em class="fa fa-inbox"></em> <strong>All Messages</strong>
								</a></div>
							</li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						<em class="fa fa-bell"></em><span class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
								<div><em class="fa fa-envelope"></em> 1 New Message
									<span class="pull-right text-muted small">3 mins ago</span></div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
								<div><em class="fa fa-heart"></em> 12 New Likes
									<span class="pull-right text-muted small">4 mins ago</span></div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
								<div><em class="fa fa-user"></em> 5 New Followers
									<span class="pull-right text-muted small">4 mins ago</span></div>
							</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Username</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		<ul class="nav menu">
			<!--<li class="active"><a href="index.html"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li><a href="widgets.aspx"><em class="fa fa-calendar">&nbsp;</em> Widgets</a></li>
			<li><a href="charts.aspx"><em class="fa fa-bar-chart">&nbsp;</em> Charts</a></li>
			<li><a href="elements.aspx"><em class="fa fa-toggle-off">&nbsp;</em> UI Elements</a></li>
			<li><a href="panels.aspx"><em class="fa fa-clone">&nbsp;</em> Alerts &amp; Panels</a></li>-->
			
            <li class="parent "><a data-toggle="collapse" href="#sub-item-5">
				<em class="fa fa-laptop">&nbsp;</em> Courses <span data-toggle="collapse" href="#sub-item-5" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-5">
					<li><a class="" href="course_add.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> Add Courses
					</a></li>
					<li><a class="" href="view_course.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> Manage Courses
					</a></li>
					
				</ul>
			</li>
              

              <li class="parent "><a data-toggle="collapse" href="#sub-item-1">
				<em class="fa fa-plus-square">&nbsp;</em> Modules <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="Module_add.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> Add Modules
					</a></li>
					<li><a class="" href="view_module.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> Manage Modules
					</a></li>
					
				</ul>
			</li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-8">
				<em class="fa fa-id-card">&nbsp;</em> Lecturers <span data-toggle="collapse" href="#sub-item-8" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-8">
					<li><a class="" href="Lecturer_add.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> Add Lecturers
					</a></li>
					<li><a class="" href="view_lecturer.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> View Lecturers
					</a></li>
					
				</ul>
			</li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-2">
				<em class="fa fa-folder-open">&nbsp;</em> Questions <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-2">
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Add Questions
					</a></li>
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Manage Questions
					</a></li>
					
				</ul>
			</li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-3">
				<em class="fa fa-graduation-cap">&nbsp;</em> Students <span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-3">
					<li><a class="" href="View_Stu.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> View Students
					</a></li>
					<li><a class="" href="verify_stu.aspx">
						<span class="fa fa-arrow-right">&nbsp;</span> Verify Students
					</a></li>
					
				</ul>
			</li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-4">
				<em class="fa fa-id-badge">&nbsp;</em> Results <span data-toggle="collapse" href="#sub-item-4" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-4">
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> View Results
					</a></li>
					
				</ul>
			</li>
			<li><a href="exam.aspx"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-plus-square"></em>
				</a></li>
				<li class="active">Lecturer</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
						
                   <asp:Panel ID="Panel2" runat="server" BackColor="WhiteSmoke">
					<br />
                       <table class="auto-style3" align="center">
                           <tr>
                               <td align="center" class="auto-style18" colspan="3">
                                   <h5><strong>Lecturer Course Selection</strong></h5>
                               </td>
                               <tr>
                                   <td class="auto-style5">&nbsp;</td>
                                   <td class="auto-style12">ID :</td>
                                   <td class="auto-style6">
                                       <asp:TextBox ID="txtid" runat="server" required="" Width="199px" ReadOnly="True"></asp:TextBox>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="auto-style1"></td>
                                   <td class="auto-style1">COURSE : </td>
                                   <td class="auto-style1">
                                       <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                                       </asp:CheckBoxList>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [module]"></asp:SqlDataSource>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="auto-style19">&nbsp;</td>
                                   <td class="auto-style14">&nbsp;</td>
                                   <td class="auto-style10">
                                       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                                   </td>
                               </tr>
                               <tr>
                                   <td>
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                       <br />
                                   </td>
                               </tr>
                               <tr>
                                   <td>
                                       <br />
                                   </td>
                               </tr>
                           </tr>
                          
            </table>
                       </asp:Panel>
					</div>
		</div><!--/.row-->
		
		






        








			
		</div><!--/.row-->
	</div>	<!--/.main-->
	<div class="col-sm-12">
								<p class="back-link"><a href="">Copyright © 2018 XYZ institute. All rights reserved.</a>
</p>
			</div>
	<script src="lumino/js/jquery-1.11.1.min.js"></script>
	<script src="lumino/js/bootstrap.min.js"></script>
	<script src="lumino/js/chart.min.js"></script>
	<script src="lumino/js/chart-data.js"></script>
	<script src="lumino/js/easypiechart.js"></script>
	<script src="lumino/js/easypiechart-data.js"></script>
	<script src="lumino/js/bootstrap-datepicker.js"></script>
	<script src="lumino/js/custom.js"></script>
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
	</script>
		
    </form>
		
</body>
</html>