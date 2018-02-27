<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bill</title>
     <script type="text/javascript">
         function printdiv() {
             var divContents = document.getElementById("print").innerHTML;
             var printWindow = window.open('', '', 'height=400,width=800');
             printWindow.document.write('<html>');
             printWindow.document.write('<body >');
             printWindow.document.write(divContents);
             printWindow.document.write('</body></html>');
             printWindow.document.close();
             printWindow.print();
         }
    </script>

    
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 75px;
        }
        .style3
        {
            width: 98px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
       

                          
              <div id="myModal" class="modal fade" style="margin-left: 1PX; width: 100%;" data-toggle="modal"
        data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" style="width: 85%;">
            <!-- Modal content-->
            <div class="modal-content" style="height: 700px; width:auto; overflow-y: scroll;">
                <div class="modal-body" style=" height: 50px;">
                    <button type="button" class="close" data-dismiss="modal" style="background: #2e6da4;
                        border-radius: 50% 50% 50% 50%; -webkit-border-radius: 50% 50% 50% 50%; font-size: 18px;
                        font-weight: bold; position: absolute; right: 15px; text-align: center; top: 10px;
                        width: 30px; height: 30px; line-height: 30px; color: white; opacity: 1;">
                        &times;
                    </button>
                    <div class="lightbox-inner">
                                            
                    </div>
                    <div class="container">
                           <div id="Div1">
                                        
                                        <div id="print">
                                      <table style="border: thin solid black;
	border-collapse:collapse;
	    width: 1000px;">
               <tr style="border: thin solid black;">
                   <td colspan="10" align="center" style="border: thin solid black; margin-top: 25px;   font-size: 24px;">
                       <h1>
                       ABC
                       <asp:Label ID="lbl_heading" runat="server" ></asp:Label>
                       </h1>
                       </td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="10" align="center" style="border: thin solid black;    font-size: 16px;">
                      &nbsp;<asp:Label ID="lbl_shopaddress" runat="server" ></asp:Label>
                         &nbsp;<asp:Label ID="lbl_shopcity" runat="server" Text="Label"></asp:Label> - 
                       <asp:Label ID="lbl_shopstate" runat="server" Text="Label"></asp:Label>Mob :-  <asp:Label ID="lbl_mobile" runat="server" ></asp:Label></td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="6" style="border: thin solid black;    font-size: 16px;">
                       Gst No. : <asp:Label ID="lbl_gstno" runat="server" ></asp:Label></td>
                   <td colspan="4" style="border: thin solid black; font-size: 16px;" align="center">
                       Original recipt</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="6" rowspan="2" style="border: thin solid black;     font-size: 22px;" align="center">
                       <h3> INVOICE </h3></td>
                   <td colspan="4" style="border: thin solid black; font-size: 16px;" align="center">
                       Supplier recipt</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black; font-size: 16px;" align="center">
                       transporter reciept</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black; font-size: 16px;">
                       Reverse Charge</td>
                   <td colspan="6" style="border: thin solid black; font-size: 16px;">
                       Transport Mode</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;font-size: 16px;">
                       Invoice No.  <asp:Label ID="lbl_invoice_no" runat="server" ></asp:Label></td>
                   <td colspan="6" style="border: thin solid black; font-size: 16px;">
                       Vehcile No.</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;font-size: 16px;">
                       Invoice Date  <asp:Label ID="lbl_invoice_date" runat="server" ></asp:Label></td>
                   <td colspan="6" style="border: thin solid black;font-size: 16px;">
                       Date of Supply  <asp:Label ID="lbl_date_supply" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;font-size: 16px;">
                       State  <asp:Label ID="lbl_state" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                       State Code</td>
                   <td colspan="6" style="border: thin solid black;font-size: 16px;">
                       Place of Supply</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" align="center" style="border: thin solid black;font-size: 16px;">
                       Details of Reciever</td>
                   <td colspan="3" align="center" style="border: thin solid black;font-size: 16px;">
                       Shipped to :</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" style="border: thin solid black; font-size:18px;">
                   Saksham Jain
                        <asp:Label ID="lbl_buyer_name" runat="server" ></asp:Label></td>
                   <td colspan="3" rowspan="3" style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" style="border: thin solid black;font-size: 16px;">
                        <asp:Label ID="lbl_buyer_place" runat="server" ></asp:Label><br />
                       MOB :- <asp:Label ID="lbl_buyer_mobile" runat="server" ></asp:Label></td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;font-size: 16px;">
                       GSTIN : <asp:Label ID="lbl_gstin" runat="server" ></asp:Label></td>
                   <td colspan="6" style="border: thin solid black;font-size: 16px;">
                       URD:</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;font-size: 16px;">
                       State </td>
                   <td colspan="2" style="border: thin solid black;font-size: 16px;">
                        <asp:Label ID="lbl_buyer_state" runat="server" ></asp:Label></td>
                   <td class="style2" colspan="2" style="border: thin solid black;font-size: 16px;">
                       State Code</td>
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                        <asp:Label ID="lbl_state_code" runat="server" ></asp:Label></td>
                   <td colspan="3" style="border-collapse: collapse;border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black; font-size:large">
                       <b>Sr. No</b></td>
                   <td width="400px" style="border: thin solid black; font-size:large">
                       <b>Description</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Quantity</b></td>
                   <td class="style2" colspan="2" style="border: thin solid black;font-size:large">
                       <b>Unit</b></td>
                   <td class="style3" style="border: thin solid black;font-size:large" colspan="2">
                       <b>Rate</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Amount</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Discount</b></td>
                   <td style="border: thin solid black;font-size:large">
                       <b>Taxable Amount</b></td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
              <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style1" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black; border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style2 a" colspan="2" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                   <td class="style3 a" style="border: thin solid black;border-bottom: none;
    border-top: none;" colspan="2">
                       &nbsp;</td>
                   <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
                       <td class="a" style="border: thin solid black;border-bottom: none;
    border-top: none;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;font-size: 16px;">
                   <td class="style1" colspan="5" rowspan="4"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       Sub Total</td>
                   <td colspan="3">
                       <asp:Label ID="lbl_subtotal" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       CGST</td>
                   <td colspan="3">
                       &nbsp;<asp:Label ID="lbl_cgst" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       SGST</td>
                   <td colspan="3" >
                       <asp:Label ID="lbl_sgst" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       IGST</td>
                   <td colspan="3" style="border: thin solid black;">
                       &nbsp;<asp:Label ID="lbl_igst" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" colspan="5" style="border: thin solid black;font-size: 16px;">
                       Bank Name :&nbsp; <asp:Label ID="lbl_bankname" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp; Bank A/C No. :   <asp:Label ID="lbl_bank_account_no" runat="server" ></asp:Label>&nbsp; 
                       Ifsc Code : 
                       <asp:Label ID="lbl_ifsc" runat="server" Text="Label"></asp:Label>
                      </td>
                   <td class="style3" style="border: thin solid black;font-size: 16px;" colspan="2">
                       Total</td>
                   <td colspan="3" style="border: thin solid black;">
                       &nbsp;<asp:Label ID="lbl_total" runat="server" ></asp:Label></td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" colspan="10" style="border: thin solid black;font-size: 16px;">
                       <br />
                       Terms and Conditions:<br />
                       <br />
                       1.Goods once sold will not be taken 
                       back.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                       For :&nbsp;&nbsp;&nbsp;&nbsp; CUBE HEAP
                       <br />
                       2. Interest @24 % p.a will be charged on overdue payments.<br />
                       3. Cheques Bouncing penalty Rs. 500/-.<br />
                       4. The sale is Subject to Jaipur Jurisdiction.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Authorised Signature<br />
&nbsp;&nbsp; E &amp; O. E</td>
                   </tr>
               
               
           </table>
           </div>

    </div>
      <input type="button" onclick="printdiv();" value="Print" />  
                                        
                                             
                          </div>
                      
                </div>
                    </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
   
           
    </form>
</body>
</html>
