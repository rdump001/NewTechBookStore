<%@ Page Language="C#" MasterPageFile="~/TopLevel.master" AutoEventWireup="true" CodeFile="ManageSite.aspx.cs" Inherits="Admin_ManageSite" Title="Untitled Page" %>
<%@ Register Src="ServiceStatus.ascx" TagName="ServiceStatus" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:WebPartManager ID="WebPartManager1" runat="server">
    </asp:WebPartManager>
    <table width="100%">
            
            <tr>
                <td width="25%">
                    <asp:EditorZone ID="Editor" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC"
                        BorderWidth="1px" Font-Names="Verdana" Padding="6">
                        <HeaderStyle BackColor="#E2DED6" Font-Bold="True" Font-Size="0.8em" ForeColor="#333333" />
                        <LabelStyle Font-Size="0.8em" ForeColor="#333333" />
                        <HeaderVerbStyle Font-Bold="False" Font-Size="0.8em" Font-Underline="False" ForeColor="#333333" />
                        <PartChromeStyle BorderColor="#E2DED6" BorderStyle="Solid" BorderWidth="1px" />
                        <ZoneTemplate>
                            <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
                            <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                        </ZoneTemplate>
                        <PartStyle BorderColor="#F7F6F3" BorderWidth="5px" />
                        <FooterStyle BackColor="#E2DED6" HorizontalAlign="Right" />
                        <EditUIStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" />
                        <InstructionTextStyle Font-Size="0.8em" ForeColor="#333333" />
                        <ErrorStyle Font-Size="0.8em" />
                        <VerbStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" />
                        <EmptyZoneTextStyle Font-Size="0.8em" ForeColor="#333333" />
                        <PartTitleStyle Font-Bold="True" Font-Size="0.8em" ForeColor="#333333" />
                        
                    </asp:EditorZone>
                </td>
                <td style="width: 237px">
                    <asp:CatalogZone ID="Catalog" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC"
        BorderWidth="1px" Font-Names="Verdana" Padding="6">
        <HeaderVerbStyle Font-Bold="False" Font-Size="0.8em" Font-Underline="False" ForeColor="#333333" />
        <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
        <PartChromeStyle BorderColor="#E2DED6" BorderStyle="Solid" BorderWidth="1px" />
        <InstructionTextStyle Font-Size="0.8em" ForeColor="#333333" />
        <PartLinkStyle Font-Size="0.8em" />
        <EmptyZoneTextStyle Font-Size="0.8em" ForeColor="#333333" />
        <LabelStyle Font-Size="0.8em" ForeColor="#333333" />
        <VerbStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" />
        <ZoneTemplate>
            <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
        </ZoneTemplate>
        <PartStyle BorderColor="#F7F6F3" BorderWidth="5px" />
        <SelectedPartLinkStyle Font-Size="0.8em" />
        <FooterStyle BackColor="#E2DED6" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#E2DED6" Font-Bold="True" Font-Size="0.8em" ForeColor="#333333" />
        <EditUIStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" />
    </asp:CatalogZone>
                </td>
            </tr>
	    <tr>
                <td width="25%">
                <asp:DropDownList ID="ddMode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddMode_SelectedIndexChanged">
                        <asp:ListItem>Browse</asp:ListItem>
                        <asp:ListItem>Design</asp:ListItem>
                        <asp:ListItem>Edit</asp:ListItem>
                        <asp:ListItem>Catalog</asp:ListItem>
                    </asp:DropDownList>
                    <asp:WebPartZone ID="LeftZone" runat="server" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6" HeaderText="LeftZone">
                        <PartChromeStyle BackColor="#F7F6F3" BorderColor="#E2DED6" Font-Names="Verdana" ForeColor="White" />
                        <MenuLabelHoverStyle ForeColor="#E2DED6" />
                        <EmptyZoneTextStyle Font-Size="0.8em" />
                        <MenuLabelStyle ForeColor="White" />
                        <MenuVerbHoverStyle BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid"
                            BorderWidth="1px" ForeColor="#333333" />
                        <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                        <MenuVerbStyle BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                        <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                        <MenuPopupStyle BackColor="#5D7B9D" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                            Font-Size="0.6em" />
                        <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                        <ZoneTemplate>
                            <uc1:ServiceStatus title="Services" id="ServiceStatus1" runat="server">
                            </uc1:ServiceStatus>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                    
                </td><td style="width: 237px">
                    <asp:WebPartZone ID="RightZone" runat="server" BorderColor="#CCCCCC" Font-Names="Verdana"
                        HeaderText="RightZone" Padding="6">
                        <PartChromeStyle BackColor="#F7F6F3" BorderColor="#E2DED6" Font-Names="Verdana" ForeColor="White" />
                        <MenuLabelHoverStyle ForeColor="#E2DED6" />
                        <EmptyZoneTextStyle Font-Size="0.8em" />
                        <MenuLabelStyle ForeColor="White" />
                        <MenuVerbHoverStyle BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid"
                            BorderWidth="1px" ForeColor="#333333" />
                        <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                        <MenuVerbStyle BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                        <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                        <MenuPopupStyle BackColor="#5D7B9D" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                            Font-Size="0.6em" />
                        <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                    </asp:WebPartZone>
                </td>
            </tr>
 </table>
</asp:Content>

