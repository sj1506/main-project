<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <title>Login </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" style="height:600px" runat="server">
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
									<a href="#">forgot password?</a>
								</div>
								<div class="clearfix"> </div>
							</div>
						</form>
					</div>
				</div>
                </div>
                </div>

    </form>
</asp:Content>

