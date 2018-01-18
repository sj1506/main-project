<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display_barcode_data.aspx.cs" Inherits="display_barcode_data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bar Code Data</title>
    <link href="stylesheet.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap.min.js" type="text/javascript"></script>
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="Admin/assets/css/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function showModal() {
            $("#myModal").modal('show');
        }
        function printdiv() {
            var divContents = document.getElementById("print").innerHTML;
            var printWindow = window.open('', '', 'height=200,width=400');
            printWindow.document.write('<html>');
            printWindow.document.write('<body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
           <asp:TemplateField HeaderText="Item Name" >
           <ItemTemplate>
            <asp:Label ID="lbl_title" runat="server"  Text= '<%# Eval("p_title")%>' style="width: 40%;"></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Size">
           <ItemTemplate>
            <asp:Label ID="lbl_size" runat="server" Text= '<%# Eval("sub_unit")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
           <ItemTemplate>
            <asp:Label ID="lbl_minimum_quantity" runat="server" Text= '<%# Eval("total_cost")%>'></asp:Label>
           </ItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField>
           <ItemTemplate>
          <asp:Button ID="btn_print" runat="server" Text="print" onclick="btn_print_Click"/>
           </ItemTemplate>
           </asp:TemplateField>     
        </Columns>
        </asp:GridView>
         
    </div>

    <br />
<table cellpadding="0" cellspacing="0">
    <tr>
        <td style="width: 100px">
            Title
        </td>
        <td>
            <asp:TextBox ID="txt_title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            size
        </td>
        <td>
            <asp:TextBox ID="txt_size" runat="server" />
        </td>
    </tr>
        <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            total
        </td>
        <td>
            <asp:TextBox ID="txt_total" runat="server" />
        </td>
    </tr>
</table>



       <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                   <asp:Button ID="btnGenerate" runat="server" Text="Generate" onclick="btnGenerate_Click"/>

              <div id="myModal" class="modal fade" style="margin-left: 1PX; width: 100%;" data-toggle="modal"
        data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" style="width: 85%;">
            <!-- Modal content-->
            <div class="modal-content" style="height: 700px; overflow-y: scroll;">
                <div class="modal-body" style="background-color: #2e6da4; height: 50px;">
                    <button type="button" class="close" data-dismiss="modal" style="background: #2e6da4;
                        border-radius: 50% 50% 50% 50%; -webkit-border-radius: 50% 50% 50% 50%; font-size: 18px;
                        font-weight: bold; position: absolute; right: 15px; text-align: center; top: 10px;
                        width: 30px; height: 30px; line-height: 30px; color: white; opacity: 1;">
                        &times;
                    </button>
                    <div class="lightbox-inner">
                                            
                    </div>
                    <div class="container">
                           <div id="print">
                            <asp:HiddenField ID="hdn1" runat="server" />
                            <asp:HiddenField ID="hdn2" runat="server" />
                            <asp:HiddenField ID="hdn3" runat="server" />
                      <asp:PlaceHolder ID="plBarCode" runat="server" />
                          </div>
                      
                </div>
                    </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
