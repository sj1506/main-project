<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_data_buy.aspx.cs" Inherits="search_data_buy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Search Data</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="lbl_fromdate" runat="server" Text="From Date :"></asp:Label><br />
        <asp:TextBox ID="txt_fromdate" runat="server"></asp:TextBox> <br />


        <asp:Label ID="lbl_enddate" runat="server" Text="End Date :"></asp:Label><br />
        <asp:TextBox ID="txt_enddate" runat="server"></asp:TextBox><br />

        <asp:Label ID="lbl_product" runat="server" Text="select product :"></asp:Label><br />
        <asp:DropDownList ID="ddl_product" runat="server">
        </asp:DropDownList><br />
        <asp:Button ID="btn_display" runat="server" Text="display" 
            onclick="btn_display_Click"  style=" margin-top: 15px;"/>

             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
           <asp:TemplateField HeaderText="quantity" >
           <ItemTemplate>
            <asp:Label ID="lbl_qty" runat="server"  Text= '<%# Eval("qty")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="per_unit_cost">
           <ItemTemplate>
            <asp:Label ID="lbl_per_unit_cost" runat="server" Text= '<%# Eval("per_unit_cost")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="total_cost">
           <ItemTemplate>
            <asp:Label ID="lbl_" runat="server" Text= '<%# Eval("selling_price_per_product")%>'></asp:Label>
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
