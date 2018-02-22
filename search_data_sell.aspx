<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="search_data_sell.aspx.cs" Inherits="search_data_sell" %>


    
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>display data</title>
     <style>
    .grid
    {
        align: center !important;
     text-align:center  !important;
               
    }

    </style>
   
    </asp:Content>

   <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" style="height: 600px;" runat="server">
    <div class="full">

             <div class="col-sm-12" style="    margin-top: 8px">
              <div class="col-sm-3"></div>
         <div class="col-sm-3 divstyle">
            <asp:Label ID="lbl_fromdate" runat="server" Text="From Date :"></asp:Label>
         </div>
         <div class="col-sm-3">
            <asp:TextBox ID="txt_fromdate"  class="form-control" runat="server"></asp:TextBox>
             
         </div>
         <div class="col-sm-3"></div>
         </div>

           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-3"></div>
         <div class="col-sm-3 divstyle">
           <asp:Label ID="lbl_enddate" runat="server" Text="End Date :"></asp:Label>
         </div>
         <div class="col-sm-3">
            <asp:TextBox ID="txt_enddate"  class="form-control" runat="server"></asp:TextBox>
             
         </div>
         <div class="col-sm-3"></div>
         </div>

           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-3"></div>
         <div class="col-sm-3 divstyle">
            <asp:Label ID="lbl_product" runat="server" Text="select product :"></asp:Label>
         </div>
         <div class="col-sm-3">
           <asp:DropDownList ID="ddl_product"   class="form-control" runat="server">
        </asp:DropDownList>
         </div>
         <div class="col-sm-3"></div>
         </div>

        <asp:Button ID="btn_display" runat="server" Text="display" 
            onclick="btn_display_Click" class="button btn btn-primary"  style=" margin-top: 15px;"/>

         <div style="margin-left: 290px; margin-top: 55px;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                  Width="634px">
        <Columns>
           <asp:TemplateField HeaderText="quantity" ItemStyle-CssClass="grid" >
           <ItemTemplate>
            <asp:Label ID="lbl_qty" runat="server"  Text= '<%# Eval("qty")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Total" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_total" runat="server" Text= '<%# Eval("total")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Cost per unit" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_cost_per_unit" runat="server" Text= '<%# Eval("cost_per_unit")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Product" ItemStyle-CssClass="grid">
           <ItemTemplate>
            <asp:Label ID="lbl_product" runat="server" Text= '<%# Eval("p_id")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>     
        </Columns>
        </asp:GridView>

        </div>
    </div>
    </form>
</asp:Content>