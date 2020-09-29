<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Review.aspx.cs" Inherits="Review" MasterPageFile="~/toplevel.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <table width="100%">
        <tr style="color: #ffffff">
            <td colspan="2" rowspan="4" style="font-size: 10pt; color: #330000; background-color: #ffffcc"
                valign="top">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
                    Height="50px" Width="125px">
                    <EmptyDataTemplate>
                        No reviews available.
                    </EmptyDataTemplate>
                </asp:DetailsView>
                <br />
              
    </table>
    
</asp:Content>
