<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" MasterPageFile="~/toplevel.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
     <table style="width: 100%; height: 358px;" border="0" cellpadding="5">
            <tr>
            </tr>
            <tr>
                <td bgcolor="#ffffcc" colspan="7" rowspan="14" style="height: 170px; width=60%; width background-color: #cccc99; text-align: center;"
                    valign="top">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
                        ForeColor="#400000" Height="17px" Style="font-weight: normal; font-size: 9pt;
                        font-style: normal; font-family: Verdana; text-align: left" Width="335px">Please provide us your valuable feedback</asp:Label>
                    <br />
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="124px" ImageUrl="~/Feedback.jpg" Width="175px" />
                    
                    </td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td bgcolor="#ffffcc" colspan="7" rowspan="1" style="background-color: #ffffcc" valign="top" width="60%">
                    <br />
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
                        ForeColor="#400000" Height="17px" Style="font-weight: normal; font-size: 9pt;
                        font-style: normal; font-family: Verdana" Width="444px">We have combined our best efforts to put up the site. If we have missed out on something, please point out the same.</asp:Label>&nbsp;<br />
                    <br />
                    &nbsp;<br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
                        ForeColor="#400000" Height="17px" Style="font-weight: normal; font-size: 9pt;
                        font-style: normal; font-family: Verdana" Width="444px">Please provide your valuable feedback on our following services:</asp:Label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="ScrollBar" CommandName="HomeDelivery"
                        Font-Bold="True" Font-Size="X-Small" Text="Home delivery" Width="105px" OnCommand="Feedback_Command" />
                    &nbsp; &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" BackColor="ScrollBar"
                        CommandName="Search" Font-Bold="True" Font-Size="X-Small" Text="Search utility"
                        Width="105px" OnCommand="Feedback_Command" />
                    &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" BackColor="ScrollBar"
                        CommandName="User" Font-Bold="True" Font-Size="X-Small" Text="User experience"
                        Width="105px" OnCommand="Feedback_Command" />
                    &nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
   
</asp:Content>