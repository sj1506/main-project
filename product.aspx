<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form1" class="input" runat="server">
    <h3>
        Product</h3>
    <div class="full">
        <asp:HiddenField ID="hdn1" runat="server" />
        <div class="col-sm-12" style="margin-top: 8px">
            <div class="col-sm-3"></div>
            <div class="  col-sm-3 divstyle">
                <asp:Label ID="lbl_title" runat="server" Text="Product Title :"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="p_title" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="col-sm-12" style="margin-top: 8px">
        <div class="col-sm-3"></div>
            <div class="  col-sm-3 divstyle">
                <asp:Label ID="lbl_brand" runat="server" Text="Brand :"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddl_Brandname" class="form-control" runat="server">
                </asp:DropDownList>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="col-sm-12" style="margin-top: 8px">
        <div class="col-sm-3"></div>
            <div class=" col-sm-3 divstyle">
                <asp:Label ID="lbl_min_qty" runat="server" Text="Minimum Quantity :"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="min_qty" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="col-sm-12" style="margin-top: 8px">
        <div class="col-sm-3"></div>
            <div class=" col-sm-3 divstyle">
                <asp:Label ID="lbl_unit" runat="server" Text="Unit :"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddl_unit" class="form-control" runat="server" AutoPostBack="true"
                    OnSelectedIndexChanged="ddl_unit_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="col-sm-12" style="margin-top: 8px">
        <div class="col-sm-3"></div>
            <div class="col-sm-3 divstyle">
                <%--<asp:Label ID="Label1" runat="server" Text="Unit :"></asp:Label>--%>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddl_sub_unit" class="form-control" runat="server">
                </asp:DropDownList>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="col-sm-12" style="margin-top: 8px">
        <div class="col-sm-3"></div>
            <div class=" divstyle col-sm-3">
                <asp:Label ID="lbl_barcode" runat="server" Text="Bar Code :"></asp:Label>
            </div>
            <div class="col-sm-3 ">
                <asp:TextBox ID="bar_code" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="col-sm-12" style="margin-top: 8px">
               <div class="col-sm-3"></div>
            <div class="  col-sm-3 divstyle">
                <asp:Label ID="lbl_qtyinstock" runat="server" Text="Qty in stock :"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txt_qtyinstock" class="form-control" runat="server"></asp:TextBox>
            </div>
         <div class="col-sm-3"></div>
        </div>
        
        <asp:Button ID="btn_submit" class="button btn btn-primary" runat="server" Text="insert" OnClick="btn_submit_Click" />
        <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300"
            runat="server" Text=""></asp:Label><br />
        <div class="row">
            <div class="col-lg-12">
                <div class="table-responsive">
                    <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand"
                        GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">
                        <LayoutTemplate>
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>
                                            S.No :
                                        </th>
                                        <th>
                                            Product Title :
                                        </th>
                                        <th>
                                            Brand :
                                        </th>
                                        <th>
                                            Minimum quantity :
                                        </th>
                                        <th>
                                            Unit :
                                        </th>
                                        <th>
                                            Bar Code :
                                        </th>
                                        <th>
                                            Quantity in stock :
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
                                <%# Eval("p_title")%>
                            </td>
                            <td>
                                <%# Eval("brand")%>
                            </td>
                            <td>
                                <%# Eval("minimum_quantity")%>
                            </td>
                            <td>
                                <%# Eval("unit")%>
                            </td>
                            <td>
                                <%# Eval("bar_code")%>
                            </td>
                            <td>
                                <%# Eval(" qty_in_stock")%>
                            </td>
                            <td>
                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                    Text="Edit" CommandArgument='<%# Eval("p_id")%>' />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                    Text="Delete" CommandArgument='<% #Eval("p_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                            </td>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
