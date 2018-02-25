<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master"  CodeFile="sell.aspx.cs" Inherits="sell" %>  
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title> Transaction Sell</title>
</asp:Content>
    
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" style="height:600px">
     <div  class="full">
      <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
             Customer 
         </div>
         <div class="col-sm-1 col-sm-padding">
             Customer name
         </div>
          
          <div class="col-sm-1 col-sm-padding">
            State 
         </div>
          <div class="col-sm-1 col-sm-padding">
             Bill No 
         </div>
          <div class="col-sm-1 col-sm-padding">
             Total Cost 
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
             Date 
         </div>
          <div class="col-sm-1 col-sm-padding">
             total with tax
         </div>
          <div class="col-sm-1 col-sm-padding">
             Discount 
         </div>
         </div>

<div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
    <asp:HiddenField ID="hdn1" runat="server" />

             <asp:DropDownList ID="ddl_customer" class="text" Width="100px" runat="server" 
                    onselectedindexchanged="ddl_customer_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
         </div>
         <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="cs_name" runat="server" Width="100px" class="text"></asp:TextBox>  
         </div>
          <div class="col-sm-1 col-sm-padding">
              <asp:DropDownList ID="ddl_state" class="text" width="100px" runat="server">
             </asp:DropDownList>
         </div>
          
          <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="b_no" class="text"  runat="server"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="total_cost" class="text" runat="server"></asp:TextBox>  
         </div>
          <div class="col-sm-1 col-sm-padding">
               <asp:TextBox ID="cgst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="sgst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
           <asp:TextBox ID="igst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="ugst" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="date" runat="server" class="text"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="gt_with_tax" class="text" runat="server"></asp:TextBox>
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="discount" runat="server" class="text"></asp:TextBox>
              
         </div>
         </div>


   
    
        

        <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
             p_id 
         </div>
         <div class="col-sm-1 col-sm-padding">
             Qty
         </div>
          
          <div class="col-sm-1 col-sm-padding">
            cost per unit
         </div>
          <div class="col-sm-1 col-sm-padding">
             total 
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
          <div class="col-sm-1 col-sm-padding">
            
         </div>
          <div class="col-sm-1 col-sm-padding">
             
         </div>
         </div>
                   

                   <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
    <asp:HiddenField ID="hdn2" runat="server" />

             <asp:DropDownList ID="ddl_product" class="text" Width="100px" runat="server" 
                    onselectedindexchanged="ddl_product_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
         </div>
         <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="qty" runat="server" Width="100px"  class="text" 
                 ontextchanged="qty_TextChanged" AutoPostBack="true"></asp:TextBox>  
         </div>
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="cost_per_unit" class="text"  runat="server"></asp:TextBox>
         </div>
          
          <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="total" class="text" runat="server"></asp:TextBox>
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
          <div class="col-sm-1 col-sm-padding">
            
         </div>
          <div class="col-sm-1 col-sm-padding">
          
             
         </div>
         </div>



                                                      

    

                                                            <%-- list view for transaction_sell detail--%>
                                                   <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
    <asp:ListView ID="ListView2" runat="server" 
          onitemcommand="ListView2_ItemCommand" GroupPlaceholderID="groupPlaceHolder2"
                                        ItemPlaceholderID="itemPlaceHolder2" 
                                        onitemdatabound="ListView2_ItemDataBound" >
                         <LayoutTemplate>
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            S.No :
                                                        </th>
                                                        <%--<th>
                                                           Bill No. :
                                                        </th>--%>
                                                        
                                                        <th>
                                                           p_id :
                                                        </th>
                                                        
                                                        <th>
                                                            QTY :
                                                        </th>
                                                        
                                                        <th>
                                                        cost pr unit :
                                                        </th>
                                                        <th>
                                                            Total  :
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
                                            <%--<td>
                                               <%# Eval("bill_no")%>
                                            </td>--%>
                                           
                                            <td>
                                                <%# Eval("p_id")%>
                                            </td>
                                            <td>
                                                <%# Eval("qty")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("cost_per_unit")%>
                                            </td>
                                            <td>
                                               
                                                <asp:Label ID="lbl_total1" runat="server" Text='<%# Eval("total")%>'></asp:Label>
                                            </td>
                                            
                                            <td>
                                                
                                                <asp:Label ID="lbl_cgst1" runat="server" Text='<%# Eval("cgst")%>'></asp:Label>
                                            </td>
                                            
                                            <td>
                                                
                                                <asp:Label ID="lbl_sgst1" runat="server" Text='<%# Eval("sgst")%>'></asp:Label>
                                            </td>
                                            
                                            <td>
                                                
                                                <asp:Label ID="lbl_igst1" runat="server" Text='<%# Eval("igst")%>'></asp:Label>
                                            </td>
                                            
                                            <td>
                                                
                                                <asp:Label ID="lbl_ugst1" runat="server" Text='<%# Eval("ugst")%>'></asp:Label>
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
                                                   <%--end details for list view--%>


                             <asp:Button ID="btn_final" class="button btn btn-primary"  style="margin-top: 38px;" runat="server" Text="Save" 
                                  onclick="btn_final_Click"/>

                              <a href="bill.aspx" style ="   margin-left: 123px;
    color: black;"> Print Bill.
                              </a> 

                                 </div>
    </form>

</asp:Content>
    
