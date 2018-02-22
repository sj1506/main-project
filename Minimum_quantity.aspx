<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Minimum_quantity.aspx.cs" Inherits="Minimum_quantity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Minimum Quantity</title>
    <style>
    .grid
    {
        align: center !important;
     text-align:center  !important;
               
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 290px; margin-top: 55px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
           <asp:TemplateField HeaderText="Title" ItemStyle-CssClass="grid" >
           <ItemTemplate>
            <asp:Label ID="lbl_title" runat="server"  Text= '<%# Eval("p_title")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
               <ItemStyle Width="100px" />
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Brand" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_brand" runat="server" Text= '<%# Eval("brand")%>'></asp:Label>
           </ItemTemplate>

<ItemStyle CssClass="grid" Width="100px"></ItemStyle>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Minimum Quantity" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_minimum_quantity" runat="server" Text= '<%# Eval("minimum_quantity")%>'></asp:Label>
           </ItemTemplate>

<ItemStyle CssClass="grid" Width="100px"></ItemStyle>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Unit" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_unit" runat="server" Text= '<%# Eval("unit")%>'></asp:Label>
           </ItemTemplate>

<ItemStyle CssClass="grid" Width="100px"></ItemStyle>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Bar Code" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_barcode" runat="server" Text= '<%# Eval("bar_code")%>'></asp:Label>
           </ItemTemplate>

<ItemStyle CssClass="grid" Width="100px"></ItemStyle>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity In Stock" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_qtyinstock" runat="server" Text= '<%# Eval("qty_in_stock")%>'></asp:Label>
           </ItemTemplate>

<ItemStyle CssClass="grid" Width="100px"></ItemStyle>
           </asp:TemplateField>     
           
        </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
