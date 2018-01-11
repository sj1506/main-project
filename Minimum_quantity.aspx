<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Minimum_quantity.aspx.cs" Inherits="Minimum_quantity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Minimum Quantity</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
           <asp:TemplateField HeaderText="Title" >
           <ItemTemplate>
            <asp:Label ID="lbl_title" runat="server"  Text= '<%# Eval("p_title")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Brand">
           <ItemTemplate>
            <asp:Label ID="lbl_brand" runat="server" Text= '<%# Eval("brand")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Minimum Quantity">
           <ItemTemplate>
            <asp:Label ID="lbl_minimum_quantity" runat="server" Text= '<%# Eval("minimum_quantity")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Unit">
           <ItemTemplate>
            <asp:Label ID="lbl_unit" runat="server" Text= '<%# Eval("unit")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Bar Code">
           <ItemTemplate>
            <asp:Label ID="lbl_barcode" runat="server" Text= '<%# Eval("bar_code")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="qty in stock">
           <ItemTemplate>
            <asp:Label ID="lbl_qtyinstock" runat="server" Text= '<%# Eval("qty_in_stock")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>     
        </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
