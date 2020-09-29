<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ServiceStatus.ascx.cs" Inherits="Admin_ServiceStatus" %>
<table width="100%">
         <tr>
            <td valign="top" style="font-size: 10pt; color: #0e0e6c;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Database Services:"></asp:Label><br />
                <asp:Label ID="lblDBStatus" runat="server"></asp:Label>
            </td>
        </tr>
         <tr>
            <td valign="top" style="font-size: 10pt; color: #0e0e6c;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Web Services:"></asp:Label><br />
                <asp:Label ID="lblWebSrvStatus" runat="server"></asp:Label>
            </td>
        </tr>
 </table>
