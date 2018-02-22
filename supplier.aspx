<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="supplier.aspx.cs" Inherits="supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Supplier</title>

</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<form id="form1" style="    height: 600px;" runat="server">
    <div class="full">
    <asp:HiddenField ID="hdn1" runat="server" />
          <div class="col-sm-12" style="    margin-top: 8px">
            <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_name" runat="server" Text=" Name :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="name" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3">
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-3">
         </div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_contact" runat="server" Text="Contact No :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="contact" class="form-control" runat="server"></asp:TextBox>
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
           <div class="col-sm-3"></div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_mail" runat="server" Text="E-Mail :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="mail_id" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3"></div>
         </div>
         
          <div class="col-sm-12" style="    margin-top: 8px">
            <div class="col-sm-3"></div>
         <div class="col-sm-3 divstyle">
             <asp:Label ID="lbl_gst" runat="server" Text="Gst No :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="gst_no" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3"></div>
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
                                                             Name :
                                                        </th>
                                                        <th>
                                                             Contact No:
                                                        </th>
                                                        <th>
                                                            Address :
                                                        </th>
                                                        <th>
                                                           E-Mail :
                                                        </th>
                                                        <th>
                                                           Gst No. :
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
                                                <%# Eval("name")%>
                                            </td>
                                            <td>
                                                <%# Eval("contact")%>
                                            </td>
                                            <td>
                                                <%# Eval("address")%>
                                            </td>
                                            <td>
                                                <%# Eval("mail_id")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("gst_no")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("s_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("s_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
    </div>
    </form>
</asp:Content>
