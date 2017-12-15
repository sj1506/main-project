<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>product</title>
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap.min.js" type="text/javascript"></script>
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="jquery.min.js" type="text/javascript"></script>
</head>
<body>
     <h3>Product</h3>
    <form id="form1" runat="server">
    <div>
          <asp:HiddenField ID="hdn1" runat="server" />
          <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_title" runat="server" Text="Product Title :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="p_title" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_brand" runat="server" Text="Brand :"></asp:Label>
         </div>
         <div class="col-sm-6">
              <asp:DropDownList ID="ddl_Brandname" class="form-control" runat="server">
                                                    </asp:DropDownList>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_min_qty" runat="server" Text="Minimum Quantity :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="min_qty" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_unit" runat="server" Text="Unit :"></asp:Label>
         </div>
         <div class="col-sm-6">
              <asp:DropDownList ID="ddl_unit" class="form-control" runat="server">
                                                    </asp:DropDownList>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_barcode" runat="server" Text="Bar Code :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="bar_code" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_qtyinstock" runat="server" Text="Qty in stock :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_qtyinstock" runat="server"></asp:TextBox>
         </div>
         </div>
                  <asp:Button ID="btn_submit" runat="server" Text="insert" 
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
</body>
</html>
