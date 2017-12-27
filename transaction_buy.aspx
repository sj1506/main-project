<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transaction_buy.aspx.cs" Inherits="transaction_buy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transaction Buy</title>
     <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap.min.js" type="text/javascript"></script>
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="jquery.min.js" type="text/javascript"></script>
    <style type ="text/css">
    .set
    {
        list-style:none;
        float: left;
    }
    .set li
    {
        float: left;
    }
    .first
    {
        width: 200%;
    }
    .second
    {
        width: 200%;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:HiddenField ID="hdn1" runat="server" />
    <div class="first">
         <ul class="set">
         <li>
            <div>
             <asp:Label ID="lbl_billno" runat="server" Text=" Bill No :"></asp:Label><br />
             <asp:TextBox ID="b_id" runat="server" style="width: 80px;"></asp:TextBox>   
         </div>
         </li>
         
         <li>
         <div>
             <asp:Label ID="lbl_ws_id" runat="server" Text=" WS_id :"></asp:Label><br />
         
                     <asp:TextBox ID="ws_id" runat="server"  style="width: 80px;"></asp:TextBox>
                     </div>
         </li>
         <li>
                  <div>
             <asp:Label ID="lbl_total_cost" runat="server" Text=" Total Cost :" style="width: 80px;"></asp:Label><br />
         
         
             <asp:TextBox ID="total_cost" runat="server"></asp:TextBox>
         
         </div>
         </li>
         <li>
         <div >
             <asp:Label ID="lbl_ugst" runat="server" Text=" Ugst :"></asp:Label><br />
         
                      <asp:TextBox ID="ugst" runat="server" style="width: 80px;"></asp:TextBox>
         
         </div>
         </li>
         <li>
         <div >
             <asp:Label ID="lbl_sgst" runat="server" Text=" Sgst :"></asp:Label><br />
             <asp:TextBox ID="sgst" runat="server" style="width: 80px;"></asp:TextBox>
         
         </div>
         </li>
         <li>
         <div>
             <asp:Label ID="lbl_cgst" runat="server" Text="Cgst :"></asp:Label><br />
             <asp:TextBox ID="cgst" runat="server" style="width: 80px;"></asp:TextBox>
                  </div>
                  </li>
         <li>
         <div>
             <asp:Label ID="lbl_igst" runat="server" Text="Igst :"></asp:Label><br />
             <asp:TextBox ID="igst" runat="server" style="width: 80px;"></asp:TextBox>
                  </div>
               </li>
         <li>
         <div>
             <asp:Label ID="lbl_date" runat="server" Text="Date :"></asp:Label><br />
             <asp:TextBox ID="date" runat="server" style="width: 90px;"></asp:TextBox>
         </div>
         </li>
         <li>
              <div>
             <asp:Label ID="lbl_gt_withtax" runat="server" Text="Grand total with tax :"></asp:Label><br />   
             <asp:TextBox ID="gt_with_tax" runat="server"></asp:TextBox>
         </div>
         </li>
    
         
         <li>
         <div>
             <asp:Label ID="lbl_discount" runat="server" Text="Discount :"></asp:Label><br />
         
             <asp:TextBox ID="discount" runat="server" style="width: 80px;"></asp:TextBox>
         </div>
         </li>
         <li>
         <div>
         <asp:Button ID="btn_submit" runat="server" Text="insert" style="     margin-top: 20px;
    margin-left: 15px;"
          onclick="btn_submit_Click" />
         </div>
         </li>
          </ul>
          </div>
       <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300"
                                                    runat="server" Text=""></asp:Label><br />


                                                 

                                                    <%--show details from here--%>

                                                           <%--  <div class="row">
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
                                                             Bill No. :
                                                        </th>
                                                        <th>
                                                             WS-Id:
                                                        </th>
                                                        <th>
                                                            Total Cost :
                                                        </th>
                                                        <th>
                                                            UGST :
                                                        </th>
                                                        <th>
                                                            SGST :
                                                        </th>
                                                        
                                                        <th>
                                                            CGST :
                                                        </th>
                                                        
                                                        <th>
                                                            IGST :
                                                        </th>
                                                        
                                                        <th>
                                                            Date :
                                                        </th>
                                                        
                                                        <th>
                                                            GT with tax :
                                                        </th>
                                                        
                                                        <th>
                                                            Discount :
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
                                                <%# Eval("b_id")%>
                                            </td>
                                            <td>
                                                <%# Eval("ws_id")%>
                                            </td>
                                            <td>
                                                <%# Eval("total_cost")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("ugst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("sgst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("cgst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("igst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("date")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("gt_with_tax")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("discount")%>
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
                        </div>--%>

                                                      <%--end details --%>

                        <div >
                            <asp:HiddenField ID="hdn2" runat="server" />
                        <table id="tblData" >	
                        <thead>
                         <tr> 
                         <th><asp:Label ID="lbl_barcode" runat="server" Text="Bar Code"></asp:Label></th> 
                         <th><asp:Label ID="lbl_p_title" runat="server" Text="Product Title"></asp:Label></th>
                          <th><asp:Label ID="lbl_qty" runat="server" Text="Qty"></asp:Label></th>
                           <th><asp:Label ID="lbl_selling_price" runat="server" Text="Selling Price"></asp:Label></th> 
                           <th><asp:Label ID="lbl_per_unit_cost" runat="server" Text="Per unit cost"></asp:Label> </th>
                           <th> <asp:Label ID="lbl_totalcost" runat="server" Text="Total cost"></asp:Label></th>
                           <th><asp:Label ID="lbl_ugst1" runat="server" Text="Ugst"></asp:Label></th>
                           <th><asp:Label ID="lbl_cgst1" runat="server" Text="Cgst"></asp:Label></th>
                           <th><asp:Label ID="lbl_igst1" runat="server" Text="Igst"></asp:Label></th>
                           <th><asp:Label ID="lbl_sgst1" runat="server" Text="Sgst"></asp:Label></th>
                           <th></th>
                           <th></th>
                           </tr>
                           <tr>
                              <td>
                              <asp:TextBox ID="barcode" runat="server" style="     width: 110px;"></asp:TextBox>
                              </td>
                               <th>
                             <asp:DropDownList ID="ddl_product" runat="server">
                             </asp:DropDownList>
                         </th>
                              <%--<td><asp:TextBox ID="p_title" runat="server" style="     width: 110px;"></asp:TextBox></td>--%>
                           <td><asp:TextBox ID="qty" runat="server" style="     width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="selling_price" runat="server" style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="per_unit_cost" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_total_cost" runat="server"  style=" width: 110px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_ugst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_cgst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_igst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_sgst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:Button ID="btn_addmore" runat="server" Text="Add More" style=" margin-left: 15px;" 
                                onclick="btn_addmore_Click" />
  
                                </td>
                           </tr>
                            </thead> 
                               </table>
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
                                                            UGST :
                                                        </th>
                                                        <th>
                                                            CGST :
                                                        </th>
                                                        
                                                        <th>
                                                            IGST :
                                                        </th>
                                                        
                                                        <th>
                                                            SGST :
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
                                                <%# Eval("ugst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("cgst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("igst")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("sgst")%>
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
                             <asp:Button ID="btn_final" runat="server" Text="Save" 
                                  Height="21px" Width="91px" style=" margin-left: 90%;
                                 margin-top: 20px;" onclick="btn_final_Click"/>
    </form>
      
</body>
</html>
