<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" MasterPageFile="~/toplevel.master"%>

<script runat="server">

    
    protected void btnGift_Click(object sender, EventArgs e)
    {
        if (btnGift.Text == "Show gift voucher details")
        {
            btnGift.Text = "Hide gift voucher details";
            lblGift.Text = "New Tech Book store enables you to find the right book you want to gift to someone.<br> We enable you to buy a gift voucher and send it to the person you want to gift books.<br>You can pay for a gift voucher by using a credit card, a cheque, or a draft.";
        }
        else
        {
            btnGift.Text = "Show gift voucher details";
            lblGift.Text = "";                
        }
    }  
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <table style="width: 100%; height: 358px">
            <tr style="color: #000000">
                <td align="left" bgcolor="inactivecaptiontext" rowspan="2" style="background-color: #ffffcc; width: 50%"
                    valign="top">
                    <span style="font-size: 9pt; color: #330000">Launched in 1980, New Tech Book Store is the biggest
                        book store on the Web. We have a massive customer base with more than 800,000 registered users.
                        <br />
                    </span>
                    <p>
                        <strong><span style="font-weight: normal; font-size: 9pt; color: #330000; font-family: Verdana">
                            We provide the following services to our members: </span></strong>
                    </p>
                    <p>
                        <strong><span style="font-weight: normal; font-size: 9pt; color: #330000; font-family: Verdana">
                            * Home delivery of books </span></strong>
                    </p>
                    <p>
                        <strong><span style="font-weight: normal; font-size: 9pt; color: #330000; font-family: Verdana">
                            * Special discounts </span></strong>
                    </p>
                    <p>
                        * Gift vouchers<strong><span style="font-weight: normal; font-size: 9pt; color: #330000;
                            font-family: Verdana"></span></strong></p>
                    <p>
                    </p>
                    <strong><span style="font-weight: normal; font-size: 9pt; color: #330000; font-family: Verdana;
                        background-color: #cccc99"></span></strong>
                    <p>
                        <strong><span style="color: #660000">
                        </span></strong>&nbsp;</p>
                            
                               
                            
                </td>
            </tr>
            <tr style="color: #000000">
            </tr>
            <tr style="color: #000000">
                <td align="left" bgcolor="inactivecaptiontext" valign="top" style="background-color: #ffffcc; width: 50%;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Purple"
                        Style="font-weight: normal; font-size: 9pt; color: #330000; font-style: normal;
                        font-family: Verdana" Width="219px">Want to gift a book to someone?</asp:Label>&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnGift" runat="server" BackColor="ScrollBar" Font-Bold="True" Font-Italic="False"
                        Font-Size="X-Small" ForeColor="Black" OnClick="btnGift_Click" Text="Show gift voucher details"
                        Width="157px" />
                    <br />
                    <br />
                    <asp:Label ID="lblGift" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Purple"
                        Style="font-weight: normal; font-size: 9pt; color: #330000; font-style: normal;
                        font-family: Verdana" Width="467px" Height="137px"></asp:Label></td>
            </tr>
        </table>    
</asp:Content>
