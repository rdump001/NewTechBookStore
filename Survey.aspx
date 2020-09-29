<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Survey" MasterPageFile="~/toplevel.master" Debug="true" %>
 
 <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     <table style="width: 100%; height: 358px;" border="0" cellpadding="5">
            <tr>
                <td bgcolor="#ffffcc" colspan="7" style="background-color: #ffffcc; width: 35%; height: 533px;"
                    valign="top">                
                    <span style="font-weight: bold; font-size: 10pt; color: black; font-style: normal;
                                        font-family: Verdana; background-color: #cccc99;">Help us to know what interests you the most &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
       
                      </span>
                        
                        <asp:Table ID="tblSurvey" runat="server" HorizontalAlign="Left" Width="421px" style="color: #000000; background-color: #ffffcc;">
                       
                        <asp:TableRow ID="tblRow2" runat="server">
                            <asp:TableCell ID="Row2Cell1" runat="server" Font-Names="Verdana" Font-Size="Small" Font-Bold="True" Width="40%">Name: </asp:TableCell>
                            <asp:TableCell ID="Row2Cell2" runat="server" Width="60%">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="tblRow3" runat="server">
                            <asp:TableCell ID="Row3Cell1" runat="server" Font-Names="Verdana" Font-Size="Small" Font-Bold="True" Width="40%" HorizontalAlign="Left"
                                VerticalAlign="Middle">Gender: </asp:TableCell>
                            <asp:TableCell ID="Row3Cell2" runat="server" HorizontalAlign="Left" VerticalAlign="Bottom" Font-Names="Verdana" Font-Size="Small" >
                                <asp:RadioButtonList ID="optGender" runat="server">
                                    <asp:ListItem Selected="True">Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="tblRow4" runat="server">
                            <asp:TableCell ID="Row4Cell1" runat="server" Font-Names="Verdana" Font-Size="Small" Font-Bold="True" Width="40%" HorizontalAlign="Left"
                                VerticalAlign="Top">Which category of books you like the most?</asp:TableCell>
                            <asp:TableCell ID="Row4Cell2" runat="server" Font-Names="Verdana" Font-Size="Small" >
                                <asp:CheckBoxList ID="chkCategory" runat="server">
                                    <asp:ListItem Text="Philosophy"></asp:ListItem>
                                    <asp:ListItem Text="Politics and current events"></asp:ListItem>
                                    <asp:ListItem Text="Computers and internet"></asp:ListItem>
                                    <asp:ListItem Text="Fiction and literature"></asp:ListItem>
                                    <asp:ListItem Text="Business and economics"></asp:ListItem>
                                    <asp:ListItem Text="Health and fitnesss"></asp:ListItem>
                                </asp:CheckBoxList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="tblRow5" runat="server" Font-Names="Verdana" Font-Size="Small" Font-Bold="True" Width="40%">
                            <asp:TableCell ID="Row5Cell1" runat="server" Font-Bold="True">Which publications do you read the most?</asp:TableCell>
                            <asp:TableCell ID="Row5Cell2" runat="server">
                                <asp:TextBox ID="txtPublication" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; 
                    <br />
                    <br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <br />
                    <br />
                    <br />
                    &nbsp; &nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="If you wish to recieve the notification of our special offers, you may sign up for our free newsletters. For this, please fill in the details given below:" style="font-weight: bold; font-size: 9pt; color: #330000; font-family: Verdana; background-color: #cccc99" Width="479px"></asp:Label><br />
                    <br />
              
                    <span style="font-weight: bold; font-size: 14pt; color: white; font-style: italic;
                        font-family: Tahoma">
                        <table style="width: 100%; color: #000000;">
                        
                            <tr>
                                <td align="left" style="width: 1331px; height: 37px; font-weight: bold; font-size: 9pt; color: #000000; font-style: normal; font-family: Verdana;" valign="top">
                                    Email address:</td>
                                <td align="left" style="width: 571px; height: 37px">
                                    <input id="txtMail" runat="server" enableviewstate="true" name="txtName" style="width: 339px"
                                        type="text" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="width: 1331px; font-weight: bold; font-size: 9pt; color: #000000; font-style: normal; font-family: Verdana;" valign="top">
                                    Email format:</td>
                                <td align="left" style="width: 571px; font-weight: normal; font-size: 9pt; color: #000000; font-style: normal; font-family: Verdana;">
                                    I prefer to recieve the newsletters in the following format:<br />
                                    <br />
                                    <input id="Radio1" runat="server" enableviewstate="true" name="optFormat" type="radio"
                                        value="HTML Format" />
                                    &nbsp; HTML Format&nbsp;<br />
                                    <input id="Radio2" runat="server" enableviewstate="true" name="optFormat" type="radio"
                                        value="Text Format" />
                                    &nbsp; Text Format
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" valign="top" 
                                    style="height: 22px; text-align: center;">                                   
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Submit.gif" /></td>
                            </tr>
                            </table>
                    </span>
                </td>
            </tr>
            </table>
  </asp:Content>
