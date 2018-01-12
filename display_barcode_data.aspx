<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display_barcode_data.aspx.cs" Inherits="display_barcode_data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bar Code Data</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
           <asp:TemplateField HeaderText="Item Name" >
           <ItemTemplate>
            <asp:Label ID="lbl_title" runat="server"  Text= '<%# Eval("p_title")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Size">
           <ItemTemplate>
            <asp:Label ID="lbl_size" runat="server" Text= '<%# Eval("sub_unit")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
           <ItemTemplate>
            <asp:Label ID="lbl_minimum_quantity" runat="server" Text= '<%# Eval("total_cost")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>     
        </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
