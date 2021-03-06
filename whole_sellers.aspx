﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="whole_sellers.aspx.cs" Inherits="whole_sellers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Whole Sellers</title>

</asp:Content>

   <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<form id="form1" style="    height: 600px;" runat="server">
    <div class="full">
    <asp:HiddenField ID="hdn1" runat="server" />
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_wsellername" runat="server" Text=" Whole Seller Name :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="ws_name" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
             <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_address" runat="server" Text=" Address :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="address" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_contact1" runat="server" Text=" Contact No.1 :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="contact1" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
            <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_contact2" runat="server" Text=" Contact No.2 :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="contact2" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
            <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_mobile1" runat="server" Text=" Mobile No.1 :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="mobile1" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
          <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_mobile2" runat="server" Text=" Mobile No.2 :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="mobile2" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
            <div class="col-sm-3">
         </div>
          <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_mail" runat="server" Text=" Mail_Id :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="mail_id" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         
                  <asp:Button ID="btn_submit" class="button btn btn-primary" runat="server" Text="insert" 
          onclick="btn_submit_Click" />

       <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300"
                                                    runat="server" Text=""></asp:Label><br />
                    <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
    <asp:ListView ID="ListView1" runat="server" 
          onitemcommand="ListView1_ItemCommand" GroupPlaceholderID="groupPlaceHolder1"
                                        ItemPlaceholderID="itemPlaceHolder1">
                         <LayoutTemplate>
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            S.No :
                                                        </th>
                                                        <th>
                                                             W_Seller Name :
                                                        </th>
                                                        <th>
                                                             Address:
                                                        </th>
                                                        <th>
                                                            Contact No.1 :
                                                        </th>
                                                        
                                                        <th>
                                                            Contact No.2 :
                                                        </th>
                                                        
                                                        <th>
                                                            Mobile No.1 :
                                                        </th>
                                                        
                                                        <th>
                                                            Mobile No.2 :
                                                        </th>
                                                        
                                                        <th>
                                                            Mail-Id :
                                                        </th>
                                                        <th>
                                                            Edit :
                                                        </th>
                                                        <th>
                                                            Delete :
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <tr>
                                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                                            </tr>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <td>
                                                <%# Container.DataItemIndex+1 %>
                                            </td>
                                            <td>
                                                <%# Eval("ws_name")%>
                                            </td>
                                            <td>
                                                <%# Eval("address")%>
                                            </td>
                                            <td>
                                                <%# Eval("contact1")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("contact2")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("mobile1")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("mobile2")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("mail_id")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("ws_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("ws_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
    </div>
    </form>
</asp:Content>
