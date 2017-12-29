<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customers.aspx.cs" Inherits="customers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customers</title>
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
         <div class="col-sm-6">
             <asp:Label ID="lbl_name" runat="server" Text=" Name :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="name" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_contact" runat="server" Text="Contact No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="contact" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_address" runat="server" Text=" Address :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="address" runat="server"></asp:TextBox>
         </div>
         </div>
        
         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_mail" runat="server" Text="E-Mail :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="mail_id" runat="server"></asp:TextBox>
         </div>
         </div>
         
          <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_gst" runat="server" Text="Gst No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="gst_no" runat="server"></asp:TextBox>
             <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "gst_no" ID="RegularExpressionValidator1" 
           Operator="DataTypeCheck" Type="Integer" ValidationExpression = "^[\s\S]{0,8}$" runat="server"
            ErrorMessage="Maximum 8 characters allowed." required="true"></asp:RegularExpressionValidator>
         </div>
         </div>

         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_state" runat="server" Text="State :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:DropDownList ID="ddl_state" runat="server" AutoPostBack="true" 
                 onselectedindexchanged="ddl_state_SelectedIndexChanged">
             </asp:DropDownList>
         </div>
         </div>

         <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6">
             <asp:Label ID="lbl_district" runat="server" Text="District :"></asp:Label>
         </div>
         <div class="col-sm-6">
                 <asp:DropDownList ID="ddl_district" runat="server">
             </asp:DropDownList>
             
         </div>
         </div>


         <asp:HiddenField ID="hdn1" runat="server" /><br />

          <asp:HiddenField ID="hdn2" runat="server" /><br />

            <asp:HiddenField ID="hdn3" runat="server" />

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
                                                             Name :
                                                        </th>
                                                        <th>
                                                             Contact No:
                                                        </th>
                                                        <th>
                                                            Address :
                                                        </th>
                                                        <th>
                                                           E-Mail :
                                                        </th>
                                                        <th>
                                                           Gst No. :
                                                        </th>
                                                        <th>
                                                           State
                                                        </th>
                                                        <th>
                                                          District
                                                        </th>
                                                        <th>
                                                           state_code
                                                        </th>
                                                        <th>
                                                           Pan No.
                                                        </th>
                                                        <th>
                                                          Random No.
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
                                                <%# Eval("name")%>
                                            </td>
                                            <td>
                                                <%# Eval("contact")%>
                                            </td>
                                            <td>
                                                <%# Eval("address")%>
                                            </td>
                                            <td>
                                                <%# Eval("mail_id")%>
                                            </td>
                                            
                                            <td>
                                                <%# Eval("gst_no")%>
                                            </td>
                                            <td>
                                                <%# Eval("state")%>
                                            </td>
                                            
                                        <td>
                                                <%# Eval("district")%>
                                            </td>
                                                
                                                <td>
                                                <%# Eval("state_code")%>
                                            </td>
                                         <td>
                                                <%# Eval("pan_no")%>
                                            </td>
                                            <td>
                                                <%# Eval("random_no")%>
                                            </td>

                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("cs_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("cs_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
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
