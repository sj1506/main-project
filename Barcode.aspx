<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Barcode.aspx.cs" Inherits="Barcode" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
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
    <div id="print">
<asp:PlaceHolder ID="plBarCode" runat="server" />
    </div>
     <input type="button" onclick="printdiv();" value="Print" />
    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
    <asp:Button ID="btnGenerate" runat="server" Text="Generate" onclick="btnGenerate_Click" />
    </form>
    
</body>
</html>
