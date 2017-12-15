<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Brandproduct.aspx.cs" Inherits="Brandproduct" %>

<%@ Register Src="~/Admin/Admin Control/menuNavigation.ascx" TagName="ucmenu" TagPrefix="ucmenu" %>
<%@ Register Src="~/Admin/Admin Control/AdminHeader.ascx" TagName="ucheader" TagPrefix="ucheader" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProfitPage</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <style>
        .ddStyl
        {
            width: 30%;
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <ucheader:ucheader ID="Admheader" runat="server" />
        <!-- end navbar top -->
        <!-- navbar side -->
        <ucmenu:ucmenu ID="Menu1" runat="server" />
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Dashboard</h1>
                </div>
                <!--End Page Header -->
            </div>
            <div class="row">
                <!--quick info section -->
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Title Description
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- Form Elements -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Should Be Fill *
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <form role="form">
                                                <div class="form-group">
                                                    <label>
                                                        Brand Name :</label>
                                                    <asp:TextBox ID="txtBrandname" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        Brand code :</label>
                                                    <asp:TextBox ID="txtcode" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                               
                                                <asp:Button ID="btnSub" runat="server" class="btn btn-primary" Text="insert" OnClick="btnSub_Click" />
                                                <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300"
                                                    runat="server" Text=""></asp:Label><br />
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Form Elements -->
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1"
                                        ItemPlaceholderID="itemPlaceHolder1" OnItemCommand="lvCustomers_ItemCommand">
                                        <LayoutTemplate>
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            S.No :
                                                        </th>
                                                        <th>
                                                            Brand Name :
                                                        </th>
                                                        <th>
                                                            Brand Code :
                                                        </th>
                                                        <th>
                                                            Brand Status :
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
                                                <%# Eval("B_Name")%>
                                            </td>
                                            <td>
                                                <%# Eval("B_Code")%>
                                            </td>
                                            <td>
                                                <%# Eval("B_Status")%>
                                            </td>
                                           
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("B_id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("B_id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
            </div>
            <!-- Rest Timeline View -->
        </div>
        <!-- end page-wrapper -->
    </div>
    <!-- end wrapper -->
    </form>
    <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <script src="assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script>
        $(document).ready(function () {

            $('#dataTables-example').dataTable();
        });
    </script>
</body>
</html>
