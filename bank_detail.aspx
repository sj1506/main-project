<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bank_detail.aspx.cs" Inherits="bank_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bank Detail</title>
      <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap.min.js" type="text/javascript"></script>
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="jquery.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:HiddenField ID="hdn1" runat="server" />
          <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_cpyname" runat="server" Text=" Company Name :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="cpy_name" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_accno" runat="server" Text="Account No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="acc_no" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_bankname" runat="server" Text=" Bank Name :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="bank_name" runat="server"></asp:TextBox>
         </div>
         </div>
        
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_ifsc" runat="server" Text="IFSC No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="ifsc_no" runat="server"></asp:TextBox>
         </div>
         </div>
         
         
                  <asp:Button ID="btn_submit" runat="server" Text="insert" 
          onclick="btn_submit_Click" />

       <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300"
                                                    runat="server" Text=""></asp:Label><br />
                    <div class="row">
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
                                                            Company Name :
                                                        </th>
                                                        <th>
                                                             Acoount No:
                                                        </th>
                                                        <th>
                                                            Bank Name :
                                                        </th>
                                                        
                                                        <th>
                                                            Ifsc Code :
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
                                                <%# Eval("cpy_name")%>
                                            </td>
                                            <td>
                                                <%# Eval("acc_no")%>
                                            </td>
                                            <td>
                                                <%# Eval("bank_name")%>
                                            </td>
                                            <td>
                                                <%# Eval("ifsc_no")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("cpy_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("cpy_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
    </div>
    </form>
</body>
</html>
