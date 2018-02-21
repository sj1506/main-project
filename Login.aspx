<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Login </title>
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
<form id="form1" style="height:600px" runat="server">

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
          <div class="widget-shadow">
					<div class="login-top">
						<h4>Welcome  <%--<br> Not a Member? <a href="signup.html">  Sign Up »</a>--%> </h4>
					</div>
					<div class="login-body">
						<form>
							
                            <asp:TextBox  inputtype="email"  class="user" ID="txtuser"  placeholder="Enter your email" runat="server" Width="100%" required autofocus></asp:TextBox>
							
                             <asp:TextBox ID="txtpass" runat="server" type="password" class="lock" placeholder="password" required="true" Width="100%"></asp:TextBox>
                              <asp:Button ID="btn_login" runat="server" Text="Login" 
                            onclick="btn_login_Click" class="login_button" style="margin-top: 10px;"/>
							
							<div class="forgot-grid">
								<label class="checkbox"> <asp:CheckBox ID="chck_1" runat="server" OnClick="Login_Click" /><i></i>Remember me</label>
								<div class="forgot">
									<a href="change_password.aspx">forgot password?</a>
								</div>
								<div class="clearfix"> </div>
							</div>
						</form>
					</div>
				</div>
                </div>
                </div>

                 <div class="footer">
		   <p>&copy;  Design by <a href="https://www.megnisoft.com/" target="_blank">Megnisoft</a></p>
		</div>

    </form>
    </body>
</html>

