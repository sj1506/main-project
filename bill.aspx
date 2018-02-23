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
       <div id="print">


           <table style="border: thin solid black;
	border-collapse:collapse;
	    width: 1000px;">
               <tr style="border: thin solid black;">
                   <td colspan="10" align="center" style="border: thin solid black;">
                       <h2>
                       Enterprises
                       </h2>
                       </td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="10" align="center" style="border: thin solid black;">
                       Meera Marg mansarovar jaipur rajasthan 302020</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="6" style="border: thin solid black;">
                       Gst No. : 12462576281</td>
                   <td colspan="4" style="border: thin solid black;" align="center">
                       Original recipt</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="6" rowspan="2" style="border: thin solid black;" align="center">
                       <h3> Invoice </h3></td>
                   <td colspan="4" style="border: thin solid black;" align="center">
                       Supplier recipt</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;" align="center">
                       transporter reciept</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;">
                       Reverse Charge</td>
                   <td colspan="6" style="border: thin solid black;">
                       Transport Mode</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;">
                       Invoice No.</td>
                   <td colspan="6" style="border: thin solid black;">
                       Vehcile No.</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;">
                       Invoice Date</td>
                   <td colspan="6" style="border: thin solid black;">
                       Date of Supply</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="4" style="border: thin solid black;">
                       State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                       State Code</td>
                   <td colspan="6" style="border: thin solid black;">
                       Place of Supply</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" align="center" style="border: thin solid black;">
                       Details of Reciever</td>
                   <td colspan="3" align="center" style="border: thin solid black;">
                       Shipped to :</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" style="border: thin solid black;">
                       Saksham Jain</td>
                   <td colspan="3" rowspan="3" style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td colspan="7" style="border: thin solid black;">
                       Jaipur<br />
                       MOB :-9610356925</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       GSTIN :</td>
                   <td colspan="6" style="border: thin solid black;">
                       URD:</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       State</td>
                   <td colspan="2" style="border: thin solid black;">
                       rajasthan</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       State Code</td>
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       08</td>
                   <td colspan="3" style="border-collapse: collapse;border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       Sr. No</td>
                   <td width="400px" style="border: thin solid black;">
                       Description</td>
                   <td style="border: thin solid black;">
                       Quantity</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       Unit</td>
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       Rate</td>
                   <td style="border: thin solid black;">
                       Amount</td>
                   <td style="border: thin solid black;">
                       Discount</td>
                   <td style="border: thin solid black;">
                       Taxable Amount</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3"  style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3"  style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2" style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3"  style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3"  style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3"  style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style2" colspan="2"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3"  style="border: thin solid black;" colspan="2">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
                   <td style="border: thin solid black;">
                       &nbsp;</td>
               </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" colspan="5" rowspan="4"  style="border: thin solid black;">
                       &nbsp;</td>
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       Sub Total</td>
                   <td colspan="3">
                       &nbsp;</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       CGST</td>
                   <td colspan="3">
                       &nbsp;</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       SGST</td>
                   <td colspan="3" >
                       &nbsp;</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       IGST</td>
                   <td colspan="3" style="border: thin solid black;">
                       &nbsp;</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" colspan="5" style="border: thin solid black;">
                       Bank Name :&nbsp; anc&nbsp;&nbsp;&nbsp; Bank A/C No. : </td>
                   <td class="style3" style="border: thin solid black;" colspan="2">
                       Total</td>
                   <td colspan="3" style="border: thin solid black;">
                       &nbsp;</td>
                   </tr>
               <tr style="border: thin solid black;">
                   <td class="style1" colspan="10" style="border: thin solid black;">
                       Terms and Conditions:<br />
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
      <input type="button" onclick="printdiv();" value="Print" />
    </form>
</body>
</html>
