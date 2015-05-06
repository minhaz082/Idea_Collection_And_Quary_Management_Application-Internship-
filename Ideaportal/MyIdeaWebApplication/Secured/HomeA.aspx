<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="HomeA.aspx.cs" Inherits="MyIdeaWebApplication.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            font-family: Georgia;
            width: 205px;
        }
        .style14
        {
            height: 61px;
            width: 421px;
        }
        .style15
        {
            height: 42px;
        }
        .style18
        {
            height: 47px;
            width: 39px;
        }
        .style19
        {
            height: 42px;
            width: 205px;
        }
        .style20
        {
            height: 42px;
            width: 421px;
        }
        .style22
        {
            font-family: Georgia;
            width: 205px;
            height: 31px;
        }
        .style24
        {
            height: 31px;
            width: 39px;
        }
        .style25
        {
            height: 31px;
            width: 421px;
        }
        .style26
        {
            color: #FF3300;
            font-family: cursive;
            font-weight: normal;
        }
        .style27
        {
            font-size: larger;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">

<table class="style1">
        <tr>
            <td class="style19">
                </td>
            <td class="style20" style="text-align: center">
                <h1 class="style29" 
                    style="height: 49px; width: 349px; margin-left: 0px; margin-bottom: 0px;">
                    <strong style="font-size: xx-large; font-family: Georgia">&nbsp;</strong><span 
                        class="style27"><span class="style26"><strong>Admin Page</strong></span></span></h1>
            </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style14">
                &nbsp;<br />

                <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
                    ImageUrl="~/Button/Database table.png" style="text-align: center" 
                    Width="392px" CausesValidation="False" 
                    PostBackUrl="~/DatabaseTables.aspx" />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="53px" 
                    ImageUrl="~/Button/export data.png" Width="392px" CausesValidation="False" 
                    PostBackUrl="~/ExportFile.aspx" />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="53px" 
                    ImageUrl="~/Button/membership.png" Width="396px" 
                    CausesValidation="False" />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="52px" 
                    ImageUrl="~/Button/set status.png" Width="388px" CausesValidation="False" 
                    PostBackUrl="~/Secured/EditStatusA.aspx" />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton5" runat="server" Height="54px" 
                    ImageUrl="~/Button/home black.png" Width="387px" CausesValidation="False" 
                    PostBackUrl="~/Home.aspx" />
                <br />
                <br />
                <br />
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
