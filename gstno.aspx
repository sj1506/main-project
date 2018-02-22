<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gstno.aspx.cs" Inherits="gstno" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gst Number</title>
     <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap.min.js" type="text/javascript"></script>
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="jquery.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="hdn0" runat="server" />
           
          <div class="col-sm-12" style="    margin-top: 8px">
            <div class="col-sm-3"></div>
         <div class="col-sm-3">
             
         </div>
         <div class="col-sm-3">
             <asp:HiddenField ID="hdn1" runat="server" />
         </div>
         <div class="col-sm-3"></div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-3"></div>
         <div class="col-sm-3">
             
         </div>
         <div class="col-sm-3">
            <asp:HiddenField ID="hdn2" runat="server" />
         </div>
         <div class="col-sm-3"></div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-3"></div>
         <div class="col-sm-3">
             
         </div>
         <div class="col-sm-3">
            <asp:HiddenField ID="hdn3" runat="server" />
         </div>
         <div class="col-sm-3"></div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
             <div class="col-sm-3"></div>
         <div class="col-sm-3">
             <asp:Label ID="lbl_gst" runat="server" Text="Gst Number :"></asp:Label>
         </div>
         <div class="col-sm-3">
             <asp:TextBox ID="txt_gst" runat="server"></asp:TextBox>
         </div>
         <div class="col-sm-3"></div>
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
                                                             Code :
                                                        </th>
                                                        <th>
                                                             Gst Number :
                                                        </th>
                                                        <th>
                                                             Random :
                                                        </th>
                                                       <%-- <th>
                                                            Edit :
                                                        </th>
                                                        <th>
                                                            Delete :
                                                        </th>--%>
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
                                                <%# Eval("code")%>
                                            </td>
                                            <td>
                                                <%# Eval("gst_no")%>
                                            </td>
                                            <td>
                                                <%# Eval("random")%>
                                            </td>
                                           <%-- <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("code")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("code") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>--%>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
    </div>
    </form>
</body>
</html>
