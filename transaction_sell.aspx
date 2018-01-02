<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transaction_sell.aspx.cs" Inherits="transaction_sell" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Transaction Sell</title>
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
             <asp:Label ID="lbl_customer_id" runat="server" Text=" Customer Id :"></asp:Label><br />
                <asp:DropDownList ID="ddl_customer" runat="server" 
                    onselectedindexchanged="ddl_customer_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
         </div>
         </li>
         
         <li>
         <div>
             <asp:Label ID="lbl_cs_name" runat="server" Text=" customer name :"></asp:Label><br />
             <asp:TextBox ID="cs_name" runat="server" style="width: 80px;"></asp:TextBox>  
             </div>
         </li>
         <li>
         <div >
             <asp:Label ID="lbl_state" runat="server" Text=" State :"></asp:Label><br />
         
             <asp:DropDownList ID="ddl_state" runat="server">
             </asp:DropDownList>
         </div>
         </li>
         <li>
                  <div>
             <asp:Label ID="lbl_bill_no" runat="server" Text=" Bill No :" style="width: 80px;"></asp:Label><br />
         
         
             <asp:TextBox ID="b_no" runat="server"></asp:TextBox>
         
         </div>
         </li>
         <li>
         <div>
             <asp:Label ID="lbl_total_cost" runat="server" Text=" Total Cost :"></asp:Label><br />
             <asp:TextBox ID="total_cost" runat="server" style="width: 80px;"></asp:TextBox>  
             </div>
         </li>
         <li>
         <div >
             <asp:Label ID="lbl_cgst" runat="server" Text=" Cgst :"></asp:Label><br />
         
                      <asp:TextBox ID="cgst" runat="server" style="width: 80px;"></asp:TextBox>
         
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
             <asp:Label ID="lbl_igst" runat="server" Text="Igst :"></asp:Label><br />
             <asp:TextBox ID="igst" runat="server" style="width: 80px;"></asp:TextBox>
                  </div>
                  </li>
         <li>
         <div>
             <asp:Label ID="lbl_ugst" runat="server" Text="Ugst :"></asp:Label><br />
             <asp:TextBox ID="ugst" runat="server" style="width: 80px;"></asp:TextBox>
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
                                                             CS-Id:
                                                        </th>
                                                         <th>
                                                             CS-Nmae:
                                                        </th>
                                                        <th>
                                                             Bill No. :
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
                                                    Text="Edit" CommandArgument='<%# Eval("ts_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("ts_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
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
                        <%-- <th><asp:Label ID="lbl_bill" runat="server" Text="Bill No. "></asp:Label></th>--%>
                         <th><asp:Label ID="lbl_ts_id" runat="server" Text="TS-Id"></asp:Label></th> 
                         <th><asp:Label ID="lbl_p_id" runat="server" Text="p_id"></asp:Label></th> 
                          <th><asp:Label ID="lbl_qty" runat="server" Text="Qty"></asp:Label></th>
                          <th><asp:Label ID="lbl_cost_per_unit" runat="server" Text="cost per unit"></asp:Label> </th>
                          <th><asp:Label ID="lbl_total" runat="server" Text="total"></asp:Label> </th>
                           <th><asp:Label ID="lbl_cgst1" runat="server" Text="Cgst"></asp:Label></th>
                           <th><asp:Label ID="lbl_sgst1" runat="server" Text="Sgst"></asp:Label></th>
                          <th><asp:Label ID="lbl_igst1" runat="server" Text="Igst"></asp:Label></th>
                          <th><asp:Label ID="lbl_ugst1" runat="server" Text="Ugst"></asp:Label></th>
           
                         </tr>
                           <tr>
                           <%--<td>
                              <asp:TextBox ID="bill_no" runat="server" style=" width: 110px;"></asp:TextBox>
                           </td>--%>
                              <td>
                              <asp:TextBox ID="ts_id" runat="server" style="     width: 110px;"></asp:TextBox>
                              </td>
                               <th>
                             <asp:DropDownList ID="ddl_product" runat="server">
                             </asp:DropDownList>
                         </th>
                           <td><asp:TextBox ID="qty" runat="server" style="     width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="cost_per_unit" runat="server" style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="total" runat="server"  style=" width: 90px;" ></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_cgst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_sgst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_igst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="txt_ugst" runat="server"  style=" width: 90px;"></asp:TextBox></td>
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
                                                        <%--<th>
                                                           Bill No. :
                                                        </th>--%>
                                                        <th>
                                                             Ts_id :
                                                        </th>
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
                                                <%# Eval("ts_id")%>
                                            </td>
                                         
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
                                                <%# Eval("total")%>
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


                             <asp:Button ID="btn_final" runat="server" Text="Save" 
                                  Height="21px" Width="91px" style=" margin-left: 90%;
                                 margin-top: 20px;" onclick="btn_final_Click"/>
    </form>
</body>
</html>
