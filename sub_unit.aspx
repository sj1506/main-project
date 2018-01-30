<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="sub_unit.aspx.cs" Inherits="sub_unit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Sub Unit</title>

    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<form id="form1" style="    height: 600px;" runat="server">
    <div class="full">
    <asp:HiddenField ID="hdn1" runat="server" />
          <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_unitid" runat="server" Text=" Unit :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:DropDownList ID="ddl_unit" class="form-control" runat="server">
             </asp:DropDownList>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_subunit_name" runat="server" Text=" Sub Unit Name :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="subunit_name" class="form-control" runat="server" ></asp:TextBox>
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
                                                             Unit :
                                                        </th>
                                                        <th>
                                                             Sub Unit Name:
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
                                                <%# Eval("unit_id")%>
                                            </td>
                                            <td>
                                                <%# Eval("subunit_name")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
    </div>
    </form>

</asp:Content>