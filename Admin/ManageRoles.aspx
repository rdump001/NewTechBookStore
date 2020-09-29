<%@ Page Language="C#" MasterPageFile="~/TopLevel.master" AutoEventWireup="true" CodeFile="ManageRoles.aspx.cs" Inherits="ManageRoles" Title="Untitled Page" Trace="true" TraceMode="SortByTime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<table width="100%" style="background-color: #99ccff">
                            <tr style="font-weight: bold;">
                                <td colspan="3" style="color: #000000; font-weight: bold; font-size: 9pt; font-family: Verdana;">
                                    Members role<br />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%; height: 72px; vertical-align: top; color: #000000; text-align: left;">
                                    Members &nbsp;&nbsp;<br />
                                    <br />
                                    <asp:ListBox ID="lbxMembersRoleMembers" runat="server" Width="79%"></asp:ListBox>
                                    <br />
                                    <br />
                                    <asp:Button
                                        ID="btnMembersRemove" runat="server" OnClick="btnMembersRemove_Click" Text="Remove from Members role" Font-Bold="True" Font-Size="X-Small" Width="143px" /></td>
                                <td style="height: 72px; width:50%; vertical-align: top; color: #000000; text-align: left;">
                                    Non members&nbsp;<br />
                                    <br />
                                    <asp:ListBox ID="lbxMembersRoleNonMembers" runat="server" Width="87%"></asp:ListBox><br />
                                    <br />
                                    <asp:Button ID="btnMembersAdd" runat="server" OnClick="btnMembersAdd_Click" Text="Add to Members role" Width="115px" Font-Bold="True" Font-Size="X-Small" /><br />
                                </td>
                            </tr>
                        </table>
                        
                         <table width="100%" style="background-color: #99ccff; height: 340px;">
                            <tr style="font-weight: bold;">
                                <td colspan="3" style="color: #000000; height: 23px;">
                                    <hr style="color: #330000" />
                                    Admins Role
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #000000; height: 120px; width:50%; vertical-align: top; width: 49%; text-align: left;">
                                    Members:
                                    <br />
                                    <br />
                                    <asp:ListBox ID="lbxAdminsRoleMembers" runat="server" Width="88%"></asp:ListBox><br />
                                    <br />
                                    <asp:Button ID="btnAdminRemove" runat="server" Text="Remove from Admins role" OnClick="btnAdminRemove_Click" Font-Bold="True" Font-Size="X-Small" Width="138px" /></td>
                                <td style="color: #000000; height: 120px; width:50%; vertical-align: top; text-align: left;">
                                    Non-Members:
                                    <br />
                                    <br />
                                    <asp:ListBox ID="lbxAdminsRoleNonMembers" runat="server" Width="82%"></asp:ListBox>
                                    <br />
                                    <br />
                                   
                                    <asp:Button ID="btnAdminsAdd" runat="server" Text="Add to Admins role" OnClick="btnAdminsAdd_Click" Font-Bold="True" Font-Size="X-Small" Width="117px" />
                                    </td>
                            </tr>
                        </table>

</asp:Content>

