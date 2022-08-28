<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Masra_Group.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <title>Login</title>
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
		<!--[if lt IE 9]>
			<script src="js//html5shiv.min.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <div class="main-wrapper">
			<div class="account-page">
				<div class="container">
					<h4 class="account-title">Admin Panel</h4>
					<div class="account-box">
						<div class="account-wrapper">
							<div class="account-logo">
								<a href="admin.aspx"><img src="images/Masra logo .png" alt="Focus Technologies"></a>
							</div>
							<form >
								<div class="form-group form-focus">
									<label class="control-label">Username</label>
									 <asp:TextBox ID="Email" class="form-control floating" runat="server" />
								</div>
								<div class="form-group form-focus">
									<label class="control-label">Password</label>
						     <asp:TextBox  ID="password" class="form-control floating" type="password" runat="server"/>
                                 </div>
								<div class="form-group text-center">
					
								<asp:Button  class="btn btn-primary btn-block account-btn" runat="server" onclick="Submit" type="submit" Text="Login" />
                                </div>
							</form>
						</div>
					</div>
				</div>
			</div>
        </div>
		<div class="sidebar-overlay" data-reff="#sidebar"></div>
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/app.js"></script>
    
        </div>
    </form>
</body>
</html>
