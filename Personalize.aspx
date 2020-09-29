<%@ Page Language="C#" MasterPageFile="~/TopLevel.master" AutoEventWireup="true" CodeFile="Personalize.aspx.cs" Inherits="Personalize" Title="Untitled Page" %>

<%@ Register assembly="NTBSWebParts" namespace="NTBSWebParts" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:WebPartManager ID="WebPartManager1" runat="server">
               <StaticConnections>
                <asp:WebPartConnection ID="cxnThemes" 
                ProviderID="SelectTheme1" 
                ProviderConnectionPointID="Theme" 
                ConsumerID="ShowTheme1" 
                ConsumerConnectionPointID="Theme" />
            </StaticConnections>
    </asp:WebPartManager>
    <asp:WebPartZone ID="WebPartZone1" runat="server" BorderColor="#CCCCCC" 
        Font-Names="Verdana" Padding="6">
        <EmptyZoneTextStyle Font-Size="0.8em" />
        <PartStyle Font-Size="0.8em" ForeColor="#333333" />
        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
        <MenuLabelHoverStyle ForeColor="#E2DED6" />
        <MenuPopupStyle BackColor="#5D7B9D" BorderColor="#CCCCCC" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.6em" />
        <MenuVerbStyle BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="1px" 
            ForeColor="White" />
        <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" 
            ForeColor="White" />
        <ZoneTemplate>
            <cc1:SelectTheme ID="SelectTheme1" title="Select a theme" runat="server" />
            <cc1:ShowTheme ID="ShowTheme1" title="Your preferred theme" runat="server" />
        </ZoneTemplate>
        <MenuVerbHoverStyle BackColor="#F7F6F3" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" />
        <PartChromeStyle BackColor="#F7F6F3" BorderColor="#E2DED6" Font-Names="Verdana" 
            ForeColor="White" />
        <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
        <MenuLabelStyle ForeColor="White" />
    </asp:WebPartZone>
</asp:Content>

