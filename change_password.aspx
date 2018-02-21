<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="change_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />

<link href="css/font-awesome.css" rel="stylesheet"> 

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <div class="sticky-header header-section ">
     
			<div class="header-left">
				<!--toggle button start-->
				
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					
						
				</div>
				<!--//logo-->
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
            
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							
							
						</li>
						<li class="dropdown head-dpdn">
							
							
						</li>	
						<li class="dropdown head-dpdn">
							
							
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
					
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>	
	




    <div id="page-wrapper">
			<div class="main-page login-page ">
				<h3 class="title1">SignIn </h3>
				<div class="widget-shadow">
					<div class="login-top">
						
					</div>
					<div class="login-body">
                        <div>
                           <asp:Label ID="mobile" runat="server" Text="">Please enter Mobile no</asp:Label>
                        <asp:TextBox ID="mobile_no" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="lbl_password" runat="server"> Please enter Password</asp:Label>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="lbl_confirmpass" runat="server" Text="">Confirm Password</asp:Label>
                        <asp:TextBox ID="confirm_password" runat="server" type="password"></asp:TextBox>
                        </div>
                          <asp:CompareValidator runat="server" id="cmppass" controltovalidate="password" controltocompare="confirm_password"
                           operator="Equal" type="String" errormessage="Password must be equal with confirm password" />
                          <div>
                              <asp:Button ID="btn_submit" runat="server" Text="Enter" 
                                  onclick="btn_submit_Click" />
                          </div>
							
						
					</div>
				</div>
				
				
			</div>
		</div>
        <div class="footer">
		   <p>&copy;  Design by <a href="https://www.megnisoft.com/" target="_blank">Megnisoft</a></p>
		</div>
    </div>
    </form>
</body>
</html>
