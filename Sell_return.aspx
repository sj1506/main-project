<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="Sell_return.aspx.cs" Inherits="Sell_return" %>


    
   <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Sell Return</title>
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
     </asp:Content>

   <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" style="    height: 600px;" runat="server">

                    <div class="full">

                      <div class="col-sm-12" style=" margin-top: 8px">
         <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_select" runat="server" Text=""><b>Please Select Customer :</b></asp:Label>
         </div>
         <div class="col-sm-6">
              <asp:DropDownList ID="ddl_cs"  class="drop form-control" runat="server" 
                        AutoPostBack="true" onselectedindexchanged="ddl_cs_SelectedIndexChanged">
                    </asp:DropDownList>
             
         </div>
         </div>
                            <asp:HiddenField ID="hdn1" runat="server" />
                            <asp:HiddenField ID="hdn2" runat="server" />

                            <div class="col-sm-12" style="    margin-top: 8px">
                         <div class="col-sm-6 divstyle">
                           <asp:Label ID="lbl_itemname" runat="server" Text="Item Name" style=" margin-left: 52px;"></asp:Label>
                            </div>
                        <div class="col-sm-6">
                            <asp:DropDownList ID="ddl_product" runat="server" class="form-control">
                             </asp:DropDownList>
             
                           </div>
                           </div>

                           <div class="col-sm-12" style="    margin-top: 8px">
                         <div class="col-sm-6 divstyle">
                            <asp:Label ID="lbl_qty" runat="server" Text="Qty" ></asp:Label>
                            </div>
                        <div class="col-sm-6">
                             <asp:TextBox ID="qty" runat="server" class="form-control"></asp:TextBox>
                           </div>
                           </div>

                            <div class="col-sm-12" style="    margin-top: 8px">
                         <div class="col-sm-6 divstyle">
                           <asp:Label ID="lbl_rate" runat="server" Text="rate" style="margin-left: 33px;" ></asp:Label> 
                            </div>
                        <div class="col-sm-6">
                                <asp:TextBox ID="rate" runat="server" class="form-control"
                                   AutoPostBack="true"  ontextchanged="rate_TextChanged"></asp:TextBox>
                           </div>
                           </div>

                            <div class="col-sm-12" style="    margin-top: 8px">
                         <div class="col-sm-6 divstyle">
                          <asp:Label ID="lbl_unit" runat="server" Text="per" style="margin-left: 33px;"></asp:Label>
                            </div>
                        <div class="col-sm-6">
                                <asp:DropDownList ID="ddl_unit" runat="server" class="form-control">
                               </asp:DropDownList>
                           </div>
                           </div>

                             <div class="col-sm-12" style="    margin-top: 8px">
                         <div class="col-sm-6 divstyle">
                         <asp:Label ID="lbl_totalcost" runat="server" Text="Total cost" style="margin-left: 33px;"></asp:Label>
                            </div>
                        <div class="col-sm-6">
                                 <asp:TextBox ID="txt_total_cost" class="form-control" runat="server" 
                                    AutoPostBack="true" ></asp:TextBox>
                           </div>
                           </div>

                           <div class="col-sm-12" style="    margin-top: 8px">
                         <div class="col-sm-6 divstyle">
                          <asp:Label ID="lbl_narration" runat="server" Text="Narration" style="margin-left: 33px;"></asp:Label>
                            </div>
                        <div class="col-sm-6">   
                       <asp:TextBox ID="txt_narration" runat="server" class="form-control"></asp:TextBox>
                           </div>
                           </div>

                            <div class="col-sm-12" style="    margin-top: 8px">
                         <div class="col-sm-6 divstyle">
                          
                            </div>
                        <div class="col-sm-6">   
                        <asp:Button ID="btn_addmore" runat="server" class="button btn btn-primary" Text="Add More" 
                                onclick="btn_addmore_Click" />
                           </div>
                           </div>

  
                               
             <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300"
                                                    runat="server" Text=""></asp:Label>
                        
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
                                                             Item Name :
                                                        </th>
                                                        <th>
                                                            QTY :
                                                        </th>
                                                        <th>
                                                            Rate :
                                                        </th>
                                                        <th>
                                                            Per :
                                                        </th>
                                                        <th>
                                                            Total Cost :
                                                        </th>
                                                        <td>
                                                          Customer Name :
                                                        </td>
                                                        <td>
                                                          Narration :
                                                        </td>
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
                                                <%# Eval("item_name")%>
                                            </td>
                                            <td>
                                                <%# Eval("qty")%>
                                            </td>
                                            <td>
                                                <%# Eval("rate")%>
                                            </td>
                                            <td>
                                                <%# Eval("unit")%>
                                            </td>
                                            <td>
                                                <%# Eval("total")%>
                                            </td>
                                            <td>
                                             <%# Eval("customer_name")%>
                                            </td>
                                            <td>
                                             <%# Eval("narration")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("sr_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("sr_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                                                 
                                                    </div>
                                                   <%--end details for list view--%>

                                                    <div style=" margin-top: 35px;">
                                                     <div style="    margin-left: 47%;font-size: 19px;font-family: sans-serif;">
                     <asp:Label ID="lbl_finalsubmit" runat="server" Text="Final Submit :"></asp:Label>
                     </div>
                             <asp:Button ID="btn_final"  class="button btn btn-primary" runat="server" Text="Save" 
                                  onclick="btn_final_Click"/>
                                 </div>
    </form>
    </asp:Content>
