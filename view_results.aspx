<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_results.aspx.cs" Inherits="view_results" %>

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
				<div class="profile-usertitle-name">S1001</div>
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
			
             <li class="parent "><a data-toggle="collapse" href="#sub-item-2">
				<em class="fa fa-folder-open">&nbsp;</em> Exam <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-2">
					<li><a class="" href="#">
						<span class="fa fa-arrow-right">&nbsp;</span> Do Exam
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
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			    <asp:Panel ID="Panel1" runat="server" Height="399px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" Text="View Students Results"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Search" />
                    &nbsp;&nbsp;&nbsp;
                    
                    <br />
                    <br />
                    <div class="text-left">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="result" 
                            Height="229px" Width="1047px">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Results ID" ReadOnly="True" 
                                    SortExpression="Id" InsertVisible="False" />
                                <asp:BoundField DataField="student_id" HeaderText="Student ID" 
                                    SortExpression="student_id" />
                                <asp:BoundField DataField="module" HeaderText="Module" 
                                    SortExpression="module" />
                                <asp:BoundField DataField="wrong" HeaderText="Wrong Question" 
                                    SortExpression="wrong" />
                                <asp:BoundField DataField="skip" HeaderText="Skiped Questions" 
                                    SortExpression="skip" />
                                <asp:BoundField DataField="date" HeaderText="Date of Exam" 
                                    SortExpression="date" />
                                <asp:BoundField DataField="results" HeaderText="Results" 
                                    SortExpression="results" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="result" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [results] WHERE [Id] = @original_Id AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([module] = @original_module) OR ([module] IS NULL AND @original_module IS NULL)) AND (([results] = @original_results) OR ([results] IS NULL AND @original_results IS NULL)) AND (([wrong] = @original_wrong) OR ([wrong] IS NULL AND @original_wrong IS NULL)) AND (([skip] = @original_skip) OR ([skip] IS NULL AND @original_skip IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" 
                            InsertCommand="INSERT INTO [results] ([student_id], [module], [results], [wrong], [skip], [date]) VALUES (@student_id, @module, @results, @wrong, @skip, @date)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [results]" 
                            UpdateCommand="UPDATE [results] SET [student_id] = @student_id, [module] = @module, [results] = @results, [wrong] = @wrong, [skip] = @skip, [date] = @date WHERE [Id] = @original_Id AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([module] = @original_module) OR ([module] IS NULL AND @original_module IS NULL)) AND (([results] = @original_results) OR ([results] IS NULL AND @original_results IS NULL)) AND (([wrong] = @original_wrong) OR ([wrong] IS NULL AND @original_wrong IS NULL)) AND (([skip] = @original_skip) OR ([skip] IS NULL AND @original_skip IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_student_id" Type="String" />
                                <asp:Parameter Name="original_module" Type="String" />
                                <asp:Parameter Name="original_results" Type="String" />
                                <asp:Parameter Name="original_wrong" Type="String" />
                                <asp:Parameter Name="original_skip" Type="String" />
                                <asp:Parameter Name="original_date" Type="DateTime" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="student_id" Type="String" />
                                <asp:Parameter Name="module" Type="String" />
                                <asp:Parameter Name="results" Type="String" />
                                <asp:Parameter Name="wrong" Type="String" />
                                <asp:Parameter Name="skip" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="student_id" Type="String" />
                                <asp:Parameter Name="module" Type="String" />
                                <asp:Parameter Name="results" Type="String" />
                                <asp:Parameter Name="wrong" Type="String" />
                                <asp:Parameter Name="skip" Type="String" />
                                <asp:Parameter Name="date" Type="DateTime" />
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_student_id" Type="String" />
                                <asp:Parameter Name="original_module" Type="String" />
                                <asp:Parameter Name="original_results" Type="String" />
                                <asp:Parameter Name="original_wrong" Type="String" />
                                <asp:Parameter Name="original_skip" Type="String" />
                                <asp:Parameter Name="original_date" Type="DateTime" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="cou" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))" InsertCommand="INSERT INTO [course] ([Id], [name], [duration], [payment]) VALUES (@Id, @name, @duration, @payment)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [name] = @name, [duration] = @duration, [payment] = @payment WHERE [Id] = @original_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([payment] = @original_payment) OR ([payment] IS NULL AND @original_payment IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="String" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_duration" Type="String" />
                                <asp:Parameter Name="original_payment" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Id" Type="String" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="duration" Type="String" />
                                <asp:Parameter Name="payment" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="duration" Type="String" />
                                <asp:Parameter Name="payment" Type="String" />
                                <asp:Parameter Name="original_Id" Type="String" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_duration" Type="String" />
                                <asp:Parameter Name="original_payment" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="verifystu" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [Id] = @original_Id AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([verify] = @original_verify) OR ([verify] IS NULL AND @original_verify IS NULL)) AND (([course] = @original_course) OR ([course] IS NULL AND @original_course IS NULL))" InsertCommand="INSERT INTO [student] ([fname], [Id], [username], [password], [verify], [course]) VALUES (@fname, @Id, @username, @password, @verify, @course)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [fname], [Id], [username], [password], [verify], [course] FROM [student]" UpdateCommand="UPDATE [student] SET [fname] = @fname, [username] = @username, [password] = @password, [verify] = @verify, [course] = @course WHERE [Id] = @original_Id AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([verify] = @original_verify) OR ([verify] IS NULL AND @original_verify IS NULL)) AND (([course] = @original_course) OR ([course] IS NULL AND @original_course IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="String" />
                                <asp:Parameter Name="original_fname" Type="String" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_verify" Type="String" />
                                <asp:Parameter Name="original_course" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="fname" Type="String" />
                                <asp:Parameter Name="Id" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="verify" Type="String" />
                                <asp:Parameter Name="course" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="fname" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="verify" Type="String" />
                                <asp:Parameter Name="course" Type="String" />
                                <asp:Parameter Name="original_Id" Type="String" />
                                <asp:Parameter Name="original_fname" Type="String" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_verify" Type="String" />
                                <asp:Parameter Name="original_course" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:Panel>
			</div>
		</div><!--/.row-->
		
		






        








			<div class="col-sm-12">
								<p class="back-link"><a href="">Copyright © 2018 XYZ institute. All rights reserved.</a>
</p>
			</div>
		</div><!--/.row-->
	</div>	<!--/.main-->
	
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
