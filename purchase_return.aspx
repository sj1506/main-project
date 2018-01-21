<%@ Page Language="C#" AutoEventWireup="true" CodeFile="purchase_return.aspx.cs" Inherits="purchase_return" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase Return</title>
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
                   
                     <div style="height: 50px; width: 100%;     margin-top: 20px;
    margin-left: 51px;">
                    <asp:Label ID="lbl_select" runat="server" Text=""><b>Please Select Whole Seller : </b></asp:Label>
                    <asp:DropDownList ID="ddl_ws" Width="20%" class="drop" runat="server" 
                        AutoPostBack="true" onselectedindexchanged="ddl_ws_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>


          <div >
                            <asp:HiddenField ID="hdn1" runat="server" />
                            <asp:HiddenField ID="hdn2" runat="server" />
                        <table id="tblData" >	
                        <thead>
                         <tr> 
                         <th><asp:Label ID="lbl_itemname" runat="server" Text="Item Name" style="
    margin-left: 52px;"></asp:Label></th>
                          <th><asp:Label ID="lbl_qty" runat="server" Text="Qty" style="margin-left: 33px;"></asp:Label></th> 
                           <th><asp:Label ID="lbl_rate" runat="server" Text="rate" style="margin-left: 33px;" ></asp:Label> </th>
                            <th><asp:Label ID="lbl_unit" runat="server" Text="per" style="margin-left: 33px;"></asp:Label> </th>
                           <th> <asp:Label ID="lbl_totalcost" runat="server" Text="Total cost" style="margin-left: 33px;"></asp:Label></th>
                           <th><asp:Label ID="lbl_narration" runat="server" Text="Narration" style="margin-left: 33px;"></asp:Label></th>
                           <th></th>
                           </tr>
                           <tr>
                               <th>
                             <asp:DropDownList ID="ddl_product" runat="server" style="     margin-left: 37px;">
                             </asp:DropDownList>
                         </th>
                           <td><asp:TextBox ID="qty" runat="server" style="  margin-left: 15px;   width: 90px;"></asp:TextBox></td>
                           <td><asp:TextBox ID="rate" runat="server"  style=" margin-left: 15px; width: 90px;"  
                                   AutoPostBack="true" ontextchanged="rate_TextChanged"></asp:TextBox></td>
                           <td> 
                               <asp:DropDownList ID="ddl_unit" runat="server" style=" margin-left: 15px;">
                               </asp:DropDownList>
                           </td>
                  <td><asp:TextBox ID="txt_total_cost" runat="server"  style=" margin-left: 15px; width: 110px;" 
                                    AutoPostBack="true" ></asp:TextBox></td>

                       <td><asp:TextBox ID="txt_narration" runat="server" style="  margin-left: 15px;   width: 200px;"></asp:TextBox></td>
                           <td><asp:Button ID="btn_addmore" runat="server" Text="Add More" style=" margin-left: 15px;" 
                                onclick="btn_addmore_Click" />
  
                                </td>
                           </tr>
                            </thead> 
                               </table>
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
                                                          Whole Seller :
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
                                             <%# Eval("ws_name")%>
                                            </td>
                                            <td>
                                             <%# Eval("narration")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("pr_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("pr_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
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
