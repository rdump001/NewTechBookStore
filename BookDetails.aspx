<%@ Page Language="C#" MasterPageFile="~/TopLevel.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table width="100%">
        <tr>
            <td style="font-size: 10pt; width: 283px; color: #330000; background-color: #ffffcc"
                valign="top">
                <asp:Label ID="Label3" runat="server" Style="font-weight: bold; font-size: 9pt; color: #330000;
                    font-family: Verdana" Text="Select a category:" Width="132px"></asp:Label>
                &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddBookCategories" runat="server" 
                    AutoPostBack="True" DataTextField="CategoryName" 
                    DataValueField="CategoryName" 
                    
    onselectedindexchanged="ddBookCategories_SelectedIndexChanged" style="margin-left: 1px">
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                
                <asp:UpdateProgress ID="UpdateProgress1" runat="server"  AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                        Getting the book titles for the selected category...
                </ProgressTemplate>
            </asp:UpdateProgress>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="gvwBookTitles" runat="server" 
    AutoGenerateColumns="False" BorderColor="#400040"
                    CellSpacing="3" DataKeyNames="Title" DataSourceID="dsBookTitles" 
                    ForeColor="Black" style="background-color: inactivecaptiontext" 
                    
    onselectedindexchanged="gvwBookTitles_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                <asp:CommandField SelectText="View Details" ShowSelectButton="True">
                                    <ControlStyle ForeColor="Blue" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                <asp:SqlDataSource ID="dsBookTitles" runat="server"></asp:SqlDataSource>
            </td>
            <td style="font-size: 10pt; width: 283px; color: #330000; background-color: #ffffcc;
                text-align: center" valign="top">
                <br />
                <br />
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:DetailsView ID="DetailsView1" runat="server" 
    AutoGenerateRows="False" BorderColor="Black"
                    BorderStyle="Solid" CellSpacing="5" DataKeyNames="BookID" DataSourceID="dsBookDetails"
                    Height="50px" Width="238px" 
    style="background-color: inactivecaptiontext; text-align: left">
                            <CommandRowStyle BackColor="#FFC0FF" BorderColor="#400040" 
                                BorderStyle="Solid" />
                            <Fields>
                                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True"
                            SortExpression="BookID">
                                    <ItemStyle BorderColor="#400040" BorderStyle="Solid" Width="56px" 
                                BackColor="Transparent" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Author" HeaderText="Author" 
                                    SortExpression="Author" />
                                <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                            SortExpression="Publisher" />
                                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                            </Fields>
                        </asp:DetailsView>
                        <br />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Book Reviews" Visible="False" />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                <br />
                <asp:SqlDataSource ID="dsBookDetails" runat="server"></asp:SqlDataSource>
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
                <br />
            </td>
        </tr>
        </table>


</asp:Content>

