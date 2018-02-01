<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="purchase.aspx.cs" Inherits="purchase" %>  
      <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <title>Transaction Buy</title>
</asp:Content>
   
   <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <form id="form1" style="height:600px" runat="server">
     <div  class="full">
      <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
             Bill No : 
         </div>
         <div class="col-sm-1 col-sm-padding">
             WS_id :
         </div>
          
          <div class="col-sm-1 col-sm-padding">
            Total Cost : 
         </div>
          <div class="col-sm-1 col-sm-padding">
             Ugst
         </div>
          <div class="col-sm-1 col-sm-padding">
             Sgst 
         </div>
          <div class="col-sm-1 col-sm-padding">
             Cgst
         </div>
          <div class="col-sm-1 col-sm-padding">
             Igst
         </div>
          <div class="col-sm-1 col-sm-padding">
             Date :
         </div>
          <div class="col-sm-1 col-sm-padding">
              total with tax :
         </div>
          <div class="col-sm-1 col-sm-padding">
              Discount 
         </div>
          <div class="col-sm-1 col-sm-padding">
            
         </div>
          <div class="col-sm-1 col-sm-padding">
             
         </div>
         </div>
      

      <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
    <asp:HiddenField ID="hdn1" runat="server" />

 <asp:TextBox ID="b_id" runat="server" Width="100px" class="text"></asp:TextBox>
         </div>
         <div class="col-sm-1 col-sm-padding">
               <asp:DropDownList ID="ddl_ws" class="text" Width="100px" runat="server" AutoPostBack="true" 
                 onselectedindexchanged="ddl_ws_SelectedIndexChanged">
             </asp:DropDownList>
         </div>
          <div class="col-sm-1 col-sm-padding">
              <asp:TextBox ID="total_cost" class="text"  runat="server"></asp:TextBox>
         </div>
          
          <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="ugst" class="text" runat="server"></asp:TextBox> 
         </div>
          <div class="col-sm-1 col-sm-padding">
              <asp:TextBox ID="sgst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
               <asp:TextBox ID="cgst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="igst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="date" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="gt_with_tax" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="discount" class="text" runat="server"></asp:TextBox>
             
         </div>
          <div class="col-sm-1 col-sm-padding">
             
         </div>
          <div class="col-sm-1 col-sm-padding">
             
         </div>
         </div>


         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
             Bar Code 
         </div>
         <div class="col-sm-1 col-sm-padding">
             Product Title
         </div>
          
          <div class="col-sm-1 col-sm-padding">
            Qty
         </div>
          <div class="col-sm-1 col-sm-padding">
             Selling Price 
         </div>
          <div class="col-sm-1 col-sm-padding">
             Per unit cost
         </div>
          <div class="col-sm-1 col-sm-padding">
            Total cost 
         </div>
          <div class="col-sm-1 col-sm-padding">
            Cgst 
         </div>
          <div class="col-sm-1 col-sm-padding">
             Sgst
         </div>
          <div class="col-sm-1 col-sm-padding">
              Igst
         </div>
          <div class="col-sm-1 col-sm-padding">
             Ugst
         </div>
          <div class="col-sm-1 col-sm-padding">
            
         </div>
          <div class="col-sm-1 col-sm-padding">
             
         </div>
         </div>
   
               <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
    <asp:HiddenField ID="hdn2" runat="server" />

             <asp:TextBox ID="barcode" runat="server" Width="100px" class="text"></asp:TextBox>  
         </div>
         <div class="col-sm-1 col-sm-padding">
             <asp:DropDownList ID="ddl_product" class="text" Width="100px" runat="server">
                             </asp:DropDownList>
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="qty" class="text"  runat="server"></asp:TextBox>
         </div>
          
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="selling_price" class="text" runat="server"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
              <asp:TextBox ID="per_unit_cost" runat="server"  ontextchanged="per_unit_cost_TextChanged" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
               <asp:TextBox ID="txt_total_cost" runat="server" ontextchanged="txt_total_cost_TextChanged"  AutoPostBack="true"  class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="txt_cgst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
           <asp:TextBox ID="txt_sgst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
          <asp:TextBox ID="txt_igst" runat="server" class="text"></asp:TextBox>
             
         </div>
          <div class="col-sm-1 col-sm-padding">
          <asp:TextBox ID="txt_ugst" runat="server" class="text"></asp:TextBox> 
         </div>
          <div class="col-sm-1 col-sm-padding">
            <asp:Button ID="btn_addmore" class="button btn btn-primary" runat="server" Text="Add More" style=" margin-top: 2px;" 
                               onclick="btn_addmore_Click" />
         </div>
          <div class="col-sm-1 col-sm-padding">
          
         </div>
         </div>


    
                                             <%-- list view for transaction_buy detail--%>
                                                   <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
    <asp:ListView ID="ListView2" runat="server" 
          onitemcommand="ListView2_ItemCommand" GroupPlaceholderID="groupPlaceHolder2"
                                        ItemPlaceholderID="itemPlaceHolder2">
                         <LayoutTemplate>
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            S.No :
                                                        </th>
                                                        <th>
                                                             Bar Code. :
                                                        </th>
                                                       <%-- <th>
                                                           Bill No. :
                                                        </th>--%>
                                                        <th>
                                                             Product Title:
                                                        </th>
                                                        <th>
                                                            QTY :
                                                        </th>
                                                        <th>
                                                            Selling Price :
                                                        </th>
                                                        <th>
                                                            Per unit cost :
                                                        </th>
                                                        <th>
                                                            Total Cost :
                                                        </th>
                                                        
                                                        <th>
                                                            CGST :
                                                        </th>
                                                        <th>
                                                            SGST :
                                                        </th>
                                                        
                                                        <th>
                                                            IGST :
                                                        </th>
                                                        
                                                        <th>
                                                            UGST :
                                                        </th>
                                                        <th>
                                                            Edit :
                                                        </th>
                                                        <th>
                                                            Delete :
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder2"></asp:PlaceHolder>
                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <tr>
                                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder2"></asp:PlaceHolder>
                                            </tr>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <td>
                                                <%# Container.DataItemIndex+1 %>
                                            </td>
                                            <td>
                                                <%# Eval("barcode")%>
                                            </td>
                                            <%--<th>
                                                <%# Eval("bill_no") %>
                                            </th>--%>
                                            <td>
                                                <%# Eval("p_id")%>
                                            </td>
                                            <td>
                                                <%# Eval("qty")%>
                                            </td>
                                            <td>
                                                <%# Eval("selling_price_per_product")%>
                                            </td>
                                            <td>
                                                <%# Eval("per_unit_cost")%>
                                            </td>
                                            <td>
                                                <%# Eval("total_cost")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("cgst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("sgst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("igst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("ugst")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("t_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("t_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                                                 
                                                    </div>
                                                   <%--end details for list view--%>
                             <asp:Button ID="btn_final" class="button btn btn-primary" runat="server" Text="Save" 
                                  onclick="btn_final_Click"/>

                                 </div>
    </form>
      
</asp:Content>
