<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="shops_profile.aspx.cs" Inherits="shops_profile" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<form id="form1" style="    height: 1200px;" runat="server">
      <div class="col-sm-12">
         <h4>form</h4>
      </div>
      <div class="full">
      <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6 divstyle">
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
         </div>
         <div class="col-sm-6">

             <asp:HiddenField ID="hdn1" runat="server" />
         </div>
         </div>
      <div class="col-sm-12" style="    margin-top: 8px">
         <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_name" runat="server" Text="Name :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_name" class="form-control" runat="server"></asp:TextBox>
         </div>
         </div>
         <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_address" runat="server" Text="Address :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_address" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_city" runat="server" Text="City :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_city" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div> 
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_district" runat="server" Text="District :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_district" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_state" runat="server" Text="State :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_state" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_country" runat="server" Text="Country :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_country" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_phone1" runat="server" Text="Phone No.1 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_phone1" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div> 
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_phone2" runat="server" Text="Phone No.2 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_phone2" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_phone3" runat="server" Text="Phone No.3 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_phone3" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_mobile1" runat="server" Text="Mobile No.1 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_mobile1" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_mobile2" runat="server" Text="Mobile No.2 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_mobile2" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
            <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_mobile3" runat="server" Text="Mobile No.3 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="txt_mobile3" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_Mail" runat="server" Text="Mail id-1 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="mail1" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_mail2" runat="server" Text="Mail id-2 :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="mail2" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div> 
           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_website" runat="server" Text="Website :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="website" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_regno" runat="server" Text="Registration No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="regno" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_tin_no" runat="server" Text="Tin No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="tin_no" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
       <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_gst" runat="server" Text="GST No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="gst_no" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
        <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_cin" runat="server" Text="Cin No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="cin_no" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
          <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_servicetax" runat="server" Text="Service Tax No :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="servicetaxno" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
      <div class="form-group">
        <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_logo" runat="server" Text="Logo :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:FileUpload ID="file_logo" class="form-control" runat="server" />
         </div>
      </div>
      </div>
           <div class="col-sm-12" style="    margin-top: 8px">
           <div class="col-sm-6 divstyle">
             <asp:Label ID="lbl_tagline" runat="server" Text="Tag Line :"></asp:Label>
         </div>
         <div class="col-sm-6">
             <asp:TextBox ID="tagline" class="form-control" runat="server"></asp:TextBox>
         </div>
      </div>
    <asp:Button ID="btn_submit" class="button btn btn-primary" runat="server" Text="insert" 
          onclick="btn_submit_Click" />

       <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="#FFFF66" ForeColor="#FF3300"
                                                    runat="server" Text=""></asp:Label><br />

                                                    </div>
    
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
                                                            Address :
                                                        </th>
                                                        <th>
                                                            City :
                                                        </th>
                                                        <th>
                                                            District :
                                                        </th>
                                                        <th>
                                                            State :
                                                        </th>
                                                        <th>
                                                            Country :
                                                        </th>
                                                        <th>
                                                            Phone No.1 :
                                                        </th>
                                                        <th>
                                                            Phone No.2 :
                                                        </th>
                                                        <th>
                                                            Phone No.3 :
                                                        </th>
                                                        <th>
                                                            Mobile No.1 :
                                                        </th>
                                                        <th>
                                                            Mobile No.2 :
                                                        </th>
                                                        <th>
                                                            Mobile No.3 :
                                                        </th>
                                                        <th>
                                                            Mail Id-1 :
                                                        </th>
                                                        <th>
                                                            mail-Id-2 :
                                                        </th>
                                                        <th>
                                                            Website :
                                                        </th>
                                                        <th>
                                                            Registration No. :
                                                        </th>
                                                        <th>
                                                            Tin_No. :
                                                        </th>
                                                        <th>
                                                            Gst No. :
                                                        </th>
                                                        <th>
                                                            Cin No. :
                                                        </th>
                                                        <th>
                                                            Service Tax No. :
                                                        </th>
                                                        <th>
                                                            Logo :
                                                        </th>
                                                        <th>
                                                            Tag Line :
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
                                                <%# Eval("address")%>
                                            </td>
                                            <td>
                                                <%# Eval("city")%>
                                            </td>
                                            <td>
                                                <%# Eval("district")%>
                                            </td>
                                            <td>
                                                <%# Eval("state")%>
                                            </td>

                                            <td>
                                                <%# Eval(" country")%>
                                            </td>
                                             <td>
                                                <%# Eval("phone1")%>
                                            </td>
                                             <td>
                                                <%# Eval("phone2")%>
                                            </td>
                                             <td>
                                                <%# Eval("phone3")%>
                                            </td>
                                             <td>
                                                <%# Eval("mobile_no1")%>
                                            </td>
                                             <td>
                                                <%# Eval("mobile_no2")%>
                                            </td>
                                             <td>
                                                <%# Eval("mobile_no3")%>
                                            </td>
                                             <td>
                                                <%# Eval("mail_id1")%>
                                            </td>
                                             <td>
                                                <%# Eval("mail_id2")%>
                                            </td>
                                             <td>
                                                <%# Eval("website")%>
                                            </td>
                                             <td>
                                                <%# Eval("regno")%>
                                            </td>
                                             <td>
                                                <%# Eval("tin_no")%>
                                            </td>
                                             <td>
                                                <%# Eval("gst_no")%>
                                            </td> 
                                            <td>
                                                <%# Eval("cin_no")%>
                                            </td>
                                             <td>
                                                <%# Eval("service_tax_no")%>
                                            </td>
                                             
                                            <td>
                                                <asp:Image ID="imgDoctor" runat="server" ImageUrl='<%# Bind("logo") %>' Width="70px"
                                                    Height="70px" ImageAlign="Middle" />
                                            </td>
                                            <td>
                                                <%# Eval("tag_line")%>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" type="submit" class="btn btn-primary" CommandName="CmdEdit"
                                                    Text="Edit" CommandArgument='<%# Eval("id")%>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" type="submit" class="btn btn-primary" CommandName="CmdDelete"
                                                    Text="Delete" CommandArgument='<% #Eval("id") %>' OnClientClick="javascript:return confirm('Are you sure you want to Delete?');" />
                                            </td>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                    
    </form>
</asp:Content>
