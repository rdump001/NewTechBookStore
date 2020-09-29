<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" culture="auto" UICulture="auto" Inherits="_Default" MasterPageFile="~/toplevel.master" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <script language="javascript" type="text/javascript">

</script>

   <table style="width: 100%; height: 358px;" id="TABLE1" >
            <tr>
           <td align="center" bgcolor="inactivecaptiontext" style="vertical-align: top;
               width: 708px; background-color: #ffffcc; text-align: left" valign="top"><asp:Label style="text-align: left; font-size: 9pt; font-style: normal; font-family: Verdana;" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#400000" Height="26px" ID="Label17" runat="server" Text="Welcome to New Tech Book Store" Width="224px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="lblDate" runat="server" ForeColor="#003300" Text="Label"></asp:Label>
                </td>
       </tr>
       <tr>
           <td align="center" bgcolor="inactivecaptiontext" rowspan="1" style="vertical-align: top;
               width: 708px; height: 18px; background-color: #ffffcc; text-align: left" valign="top">
               &nbsp;</td>
       </tr>
            <tr>
                <td align="center" bgcolor="inactivecaptiontext" rowspan="2" style="width: 708px; background-color: #ffffcc; text-align: left; vertical-align: top;"
                    valign="top">
                    <table>
                    <tr>
                    <td>
                    <asp:Image ID="imgBooks" runat="server" Height="162px" Width="189px" />&nbsp;<br /><br>
                    </td>
                    <td>
                    
                        <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                            Font-Size="0.8em" ForeColor="#333333" onauthenticate="Login1_Authenticate">
                            <TextBoxStyle Font-Size="0.8em" />
                            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                                ForeColor="White" />
                        </asp:Login>
                        <br />
                        <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="Blue" 
                            NavigateUrl="~/Register.aspx">Click here to register</asp:HyperLink>
&nbsp;</td>
                    </tr>
                    </table>
                    <br />
                    <asp:Label style="font-weight: normal; font-size: 9pt; font-style: normal; font-family: Verdana" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#400000" Height="42px" ID="Label18" runat="server" Width="249px">New Tech Book Store is a unique online platform for all book lovers.</asp:Label>
                    <br>
                    <asp:HyperLink ID="HyperLink1" runat="server" style="font-size: 9pt; font-family: Verdana; text-align: left" ForeColor="Blue" NavigateUrl="~/AboutUs.aspx" >Know more</asp:HyperLink><br />
                    <br />
                    &nbsp;<br />
               <asp:Label ID="lblHitCount" runat="server" Font-Bold="True" Font-Italic="True"
                   Font-Size="X-Large" ForeColor="#400000" Height="31px" Style="font-weight: bold;
                   font-family: Verdana; text-align: left; font-size: 9pt; font-style: normal;" Width="439px"></asp:Label><br />
                    
                </td>
            </tr>
            <tr>
                <td colspan="3" align="right" style="height: 29px; width: 6px;">
                    </td>
            </tr>
        </table>   
      
</asp:Content>
