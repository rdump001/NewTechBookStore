<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bestsellers.aspx.cs" Inherits="BookReviews" MasterPageFile="~/TopLevel.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <table width="100%">
        <tr style="color: #ffffff">
            <td style="font-size: 10pt; color: #330000; background-color: #ffffcc; width: 283px; height: 229px;" valign="top" rowspan="2">
                <asp:Label ID="Label1" runat="server" Style="font-weight: bold; color: #330000" Text="Select a bestseller to view its details:"
                    Width="277px"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="ddBookReviews" runat="server" AutoPostBack="True" Width="207px" OnSelectedIndexChanged="ddBookReviews_SelectedIndexChanged">
                </asp:DropDownList>&nbsp;
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="54px" /><br />
                <br />
                <asp:Label ID="lblReview" runat="server" Height="159px" Style="font-weight: normal;
                    font-size: 9pt; color: #330000; font-style: normal; font-family: Verdana" Width="467px"></asp:Label><br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Style="font-weight: bold; font-size: 9pt;
                    color: #330000; font-family: Verdana; font-style: normal;" Text="Selected book(s)" Width="297px"></asp:Label><br />
                <br />
                <asp:Label ID="lblBook" runat="server" Height="73px" Style="font-weight: normal; color: #330000; font-size: 9pt; font-style: normal; font-family: Verdana;"
                    Width="467px"></asp:Label><br />
                <br />
                </td>
        </tr>
        <tr>
        </tr>
    </table>
    
</asp:Content>
