<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_data_sell.aspx.cs" Inherits="search_data_sell" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>display data</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txt_fromdate" runat="server"></asp:TextBox> <br />


        <asp:Label ID="lbl_enddate" runat="server" Text="End Date :"></asp:Label><br />
        <asp:TextBox ID="txt_enddate" runat="server"></asp:TextBox><br />
        <asp:Button ID="btn_display" runat="server" Text="display" 
            onclick="btn_display_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
           <asp:TemplateField HeaderText="quantity">
           <ItemTemplate>
            <asp:Label ID="lbl_qty" runat="server"  Text= '<%# Eval("qty")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Total">
           <ItemTemplate>
            <asp:Label ID="lbl_total" runat="server" Text= '<%# Eval("total")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Cost per unit">
           <ItemTemplate>
            <asp:Label ID="lbl_cost_per_unit" runat="server" Text= '<%# Eval("cost_per_unit")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Product">
           <ItemTemplate>
            <asp:Label ID="lbl_product" runat="server" Text= '<%# Eval("p_id")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>     
        </Columns>
        </asp:GridView>


    </div>
    </form>
</body>
</html>
