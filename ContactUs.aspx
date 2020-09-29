<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" MasterPageFile="~/toplevel.master"%>


 <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">   
        <table style="width: 100%; height: 358px">
            <tr style="color: #000000">
                <td align="left" valign="top" bgcolor="inactivecaptiontext" style="height: 48px; background-color: #cccc99; width: 103px;">
                            <em><span style="font-size: 12pt; font-weight: bold; color: #330099; font-family: 'Times New Roman';">
                                <asp:TreeView ID="tvwAddress" runat="server" DataSourceID="xmlAddress" BackColor="#0E0E6C" ExpandDepth="1" Width="225px" OnSelectedNodeChanged="tvwAddress_SelectedNodeChanged" style="font-weight: bold; font-size: 9pt; font-style: normal; font-family: Verdana" Height="408px">
                                 <SelectedNodeStyle BackColor="#0E0E9C" />
                    <DataBindings>
                        <asp:TreeNodeBinding DataMember="Continent" Depth="1" TextField="ContinentNAme" />
                        <asp:TreeNodeBinding DataMember="Country" Depth="2" TextField="CountryName" />
                        <asp:TreeNodeBinding DataMember="City" Depth="3" TextField="CityName" />
                    </DataBindings>
                                
                                </asp:TreeView>
                               
                                <br />
                                <span style="font-size: 10pt; font-family: Arial">
                                    <br />
                                    <asp:XmlDataSource ID="xmlAddress" runat="server"></asp:XmlDataSource>
                                </span></span></em>
                </td>
                <td align="left" bgcolor="inactivecaptiontext" style="height: 48px; background-color: #cccc99"
                    valign="top">
                                <asp:Label ID="Label1" runat="server" Style="font-weight: bold; font-size: 9pt;
                                    color: #660000; font-style: normal; font-family: Verdana" Text="ADDRESS DETAILS" Width="211px"></asp:Label><br />
                    <br />
                                <asp:Label ID="lblAddress" runat="server" Height="139px" Width="230px" style="font-weight: normal; font-size: 8pt; color: #330000; font-style: normal; font-family: Verdana"></asp:Label></td>
             
            </tr>
            
            
        </table>
  </asp:Content>
