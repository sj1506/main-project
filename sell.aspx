﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master"  CodeFile="sell.aspx.cs" Inherits="sell" %>  
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title> Transaction Sell</title>
       
     
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="Admin/assets/css/bootstrap.min.js" type="text/javascript"></script>
       <script type="text/javascript">
           function showModal() {

               $("#myModal").modal('show');
               
                 }
            </script>
            

             <script type="text/javascript">
           function printdiv() {
               var divContents = document.getElementById("print").innerHTML;
               var printWindow = window.open('', '', 'height=400,width=800');
               printWindow.document.write('<html>');
               printWindow.document.write('<body >');
               printWindow.document.write(divContents);
               printWindow.document.write('</body></html>');
               printWindow.document.close();
               printWindow.print();
           }
    </script>

    
    
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 75px;
        }
        .style3
        {
            width: 98px;
        }
       
    </style>

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
              Product name
         </div>
         <div class="col-sm-1 col-sm-padding">
             Qty
         </div>
          <div class="col-sm-1 col-sm-padding">
             Unit
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
         </div>
                   

                   <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-1  col-sm-padding">
    <asp:HiddenField ID="hdn2" runat="server" />

             <asp:DropDownList ID="ddl_product" class="text" Width="100px" runat="server" 
                    onselectedindexchanged="ddl_product_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
         </div>
          <div class="col-sm-1 col-sm-padding">
              <asp:TextBox ID="txt_p_title" class="text"  runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-1 col-sm-padding">
             <asp:TextBox ID="qty" runat="server" Width="100px"  class="text" 
                 ontextchanged="qty_TextChanged" AutoPostBack="true"></asp:TextBox>  
         </div>
         <div class="col-sm-1 col-sm-padding">
            <asp:TextBox ID="txt_unit" class="text"  runat="server"></asp:TextBox>
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
                                                        <td>
                                                           Title
                                                        </td>
                                                        <th>
                                                            QTY :
                                                        </th>
                                                        <td>
                                                            unit :
                                                          </td>
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
                                                <%# Eval("p_title")%>
                                            </td>

                                            <td>
                                                <%# Eval("qty")%>
                                            </td>
                                            <td>
                                                <%# Eval("unit")%>
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
                                  onclick="btn_final_Click" />

                              <a href="bill.aspx" style ="   margin-left: 123px;
    color: black;"> Print Bill.
                              </a> 

                                 </div>

                                               
              <div id="myModal" class="modal fade" style="margin-left: 1PX; width: 100%;" data-toggle="modal"
        data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" style="width: 85%;">
            <!-- Modal content-->
            <div class="modal-content" style="height: 700px; width:auto; overflow-y: scroll;">
                <div class="modal-body" style=" height: 50px;">
                    <button type="button" class="close" data-dismiss="modal" style="background: #2e6da4;
                        border-radius: 50% 50% 50% 50%; -webkit-border-radius: 50% 50% 50% 50%; font-size: 18px;
                        font-weight: bold; position: absolute; right: 15px; text-align: center; top: 10px;
                        width: 30px; height: 30px; line-height: 30px; color: white; opacity: 1;">
                        &times;
                    </button>
                    <div class="lightbox-inner">
                                            
                    </div>
                    <div class="container">
                           <div id="Div1">
                                        
                                        <div id="print">
                                      <table style="border: thin solid black;
	border-collapse:collapse;
	    width: 1000px;">
               <tr style="border: thin solid black;">
                   <td colspan="10" align="center" style="border: thin solid black; margin-top: 25px;   font-size: 24px;">
                       <h1>
                       ABC
                       <asp:Label ID="lbl_heading" runat="server" ></asp:Label>
                       </h1>
                       </td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="10" align="center" style="border: thin solid black;    font-size: 16px;">
                      &nbsp;<asp:Label ID="lbl_shopaddress" runat="server" ></asp:Label>
                         &nbsp;<asp:Label ID="lbl_shopcity" runat="server" Text="Label"></asp:Label> - 
                       <asp:Label ID="lbl_shopstate" runat="server" Text="Label"></asp:Label>Mob :-  <asp:Label ID="lbl_mobile" runat="server" ></asp:Label></td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="6" style="border: thin solid black;    font-size: 16px;">
                       Gst No. : <asp:Label ID="lbl_gstno" runat="server" ></asp:Label></td>
                   <td colspan="4" style="border: thin solid black; font-size: 16px;" align="center">
                       Original recipt</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="6" rowspan="2" style="border: thin solid black;     font-size: 22px;" align="center">
                       <h3> INVOICE </h3></td>
                   <td colspan="4" style="border: thin solid black; font-size: 16px;" align="center">
                       Supplier recipt</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black; font-size: 16px;" align="center">
                       transporter reciept</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black; font-size: 16px;">
                       Reverse Charge</td>
                   <td colspan="6" style="border: thin solid black; font-size: 16px;">
                       Transport Mode</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;font-size: 16px;">
                       Invoice No.  <asp:Label ID="lbl_invoice_no" runat="server" ></asp:Label></td>
                   <td colspan="6" style="border: thin solid black; font-size: 16px;">
                       Vehcile No.</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;font-size: 16px;">
                       Invoice Date  <asp:Label ID="lbl_invoice_date" runat="server" ></asp:Label></td>
                   <td colspan="6" style="border: thin solid black;font-size: 16px;">
                       Date of Supply  <asp:Label ID="lbl_date_supply" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;font-size: 16px;">
                       State  <asp:Label ID="lbl_state" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                       State Code</td>
                   <td colspan="6" style="border: thin solid black;font-size: 16px;">
                       Place of Supply</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" align="center" style="border: thin solid black;font-size: 16px;">
                       Details of Reciever</td>
                   <td colspan="3" align="center" style="border: thin solid black;font-size: 16px;">
                       Shipped to :</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" style="border: thin solid black; font-size:18px;">
                   
                        <asp:Label ID="lbl_buyer_name" runat="server" ></asp:Label></td>
                   <td colspan="3" rowspan="3" style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" style="border: thin solid black;font-size: 16px;">
                        <asp:Label ID="lbl_buyer_place" runat="server" ></asp:Label><br />
                       MOB :- <asp:Label ID="lbl_buyer_mobile" runat="server" ></asp:Label></td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;font-size: 16px;">
                       GSTIN : <asp:Label ID="lbl_gstin" runat="server" ></asp:Label></td>
                   <td colspan="6" style="border: thin solid black;font-size: 16px;">
                       URD:</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;font-size: 16px;">
                       State </td>
                   <td colspan="2" style="border: thin solid black;font-size: 16px;">
                        <asp:Label ID="lbl_buyer_state" runat="server" ></asp:Label></td>
                   <td class="style2" colspan="2" style="border: thin solid black;font-size: 16px;">
                       State Code</td>
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                        <asp:Label ID="lbl_state_code" runat="server" ></asp:Label></td>
                   <td colspan="3" style="border-collapse: collapse;border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black; font-size:large">
                       <b>Sr. No</b></td>
                   <td width="400px" style="border: thin solid black; font-size:large">
                       <b>Description</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Quantity</b></td>
                   <td class="style2" colspan="2" style="border: thin solid black;font-size:large">
                       <b>Unit</b></td>
                   <td class="style3" style="border: thin solid black;font-size:large" colspan="2">
                       <b>Rate</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Amount</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Discount</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Taxable Amount</b></td>
               </tr>
               <tr style="height:200px;">
                   <td colspan="8" class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                          <Columns>
                          <asp:TemplateField HeaderText="" Visible="false" >
           <ItemTemplate>
            <asp:Label ID="lblid" runat="server"  Text= ' <%# Container.DataItemIndex+1 %>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
              

           <asp:TemplateField  >
           <ItemTemplate>
            <asp:Label ID="lbl_title" runat="server"  Text= '<%# Eval("p_title")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>

           <asp:TemplateField  >
           <ItemTemplate>
            <asp:Label ID="lbl_qty" runat="server"  Text= '<%# Eval("qty")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>

           <asp:TemplateField HeaderText="" >
           <ItemTemplate>
            <asp:Label ID="lbl_unit" runat="server"  Text= '<%# Eval("unit")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>

           <asp:TemplateField HeaderText="" >
           <ItemTemplate>
            <asp:Label ID="lbl_rate" runat="server"  Text= '<%# Eval("total")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>

           <asp:TemplateField HeaderText="" >
           <ItemTemplate>
            <asp:Label ID="lbl_amount" runat="server"  Text= '<%# Eval("total")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>

         <%--  <asp:TemplateField HeaderText="" >
           <ItemTemplate>
            <asp:Label ID="lbl_discount" runat="server"  Text= '<%# Eval("discount")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>--%>

           <asp:TemplateField HeaderText="" >
           <ItemTemplate>
            <asp:Label ID="lbl_taxable_amount" runat="server"  Text= '<%# Eval("total")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
                          
                          
                          
                          </Columns>
                       </asp:GridView>



                       &nbsp;</td>
                   <%--<td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>--%>
               </tr>
              <%-- <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
              <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>--%>
               <tr style="border: thin solid black;font-size: 16px;">
                   <td class="style1" colspan="5" rowspan="4"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       Sub Total</td>
                   <td colspan="3">
                       <asp:Label ID="lbl_subtotal" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       CGST</td>
                   <td colspan="3">
                       &nbsp;<asp:Label ID="lbl_cgst" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       SGST</td>
                   <td colspan="3" >
                       <asp:Label ID="lbl_sgst" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       IGST</td>
                   <td colspan="3" style="border: thin solid black;">
                       &nbsp;<asp:Label ID="lbl_igst" runat="server" ></asp:Label></td>
                   </tr>
                <tr style="border: thin solid black;">
                   <td class="style1" colspan="5" style="border: thin solid black;font-size: 16px;">
                       Bank Name :&nbsp; <asp:Label ID="lbl_bankname" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp; Bank A/C No. :   <asp:Label ID="lbl_bank_account_no" runat="server" ></asp:Label>&nbsp; 
                       Ifsc Code : 
                       <asp:Label ID="lbl_ifsc" runat="server" Text="Label"></asp:Label>
                      </td>
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       Total</td>
                   <td colspan="3" style="border: thin solid black;">
                       &nbsp;<asp:Label ID="lbl_total" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" colspan="10" style="border: thin solid black;font-size: 16px;">
                       <br />
                       Terms and Conditions:<br />
                       <br />
                       1.Goods once sold will not be taken 
                       back.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                       For :&nbsp;&nbsp;&nbsp;&nbsp; CUBE HEAP
                       <br />
                       2. Interest @24 % p.a will be charged on overdue payments.<br />
                       3. Cheques Bouncing penalty Rs. 500/-.<br />
                       4. The sale is Subject to Jaipur Jurisdiction.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Authorised Signature<br />
&nbsp;&nbsp; E &amp; O. E</td>
                   </tr>
               
               
           </table>
           </div>

    </div>
      <input type="button" onclick="printdiv();" value="Print" />  
                                        
                                             
                          </div>
                      
                </div>
                    </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>

    </form>

</asp:Content>
    
