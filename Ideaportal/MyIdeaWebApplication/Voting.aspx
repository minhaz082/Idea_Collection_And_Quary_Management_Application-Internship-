<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Voting.aspx.cs" Inherits="MyIdeaWebApplication.Voting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <%--<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>--%>
    <style type="text/css">
        .ButtonStyle
        {
            background-color: #0066FF;
            color: white;
            font-family: Georgia;
            font-size: 10pt;
            font-weight: 700;
        }
        .BarStyle
        {
            background-color: #996633;
        }
        .TablePollResultFoot
        {
            background-color: #B0C4DE;
            font-weight: bold;
            height: 30px;
            font-size: 13px;
        }
        .gridview
        {
            border: solid 1px #CCCCCC;
            width: 100%;
        }
        .style11
        {
            width: 162px;
        }
        .style12
        {
            width: 681px;
        }
        .style14
        {
            width: 681px;
            color: #000000;
        }
        .style15
        {
            color: #FF3300;
            font-family: Georgia;
        }
        .style16
        {
            width: 681px;
            font-family: Georgia;
        }
        .style17
        {
            font-family: Georgia;
        }
        .style18
        {
            width: 162px;
            height: 20px;
        }
        .style19
        {
            width: 681px;
            height: 20px;
        }
        .style20
        {
            height: 20px;
        }
        .style21
        {
            width: 162px;
            height: 10px;
        }
        .style22
        {
            width: 681px;
            height: 10px;
        }
        .style23
        {
            height: 10px;
        }
    </style>
    <%-- </head>
    <body>
        <form id="form1" runat="server">--%>
    <div>
        <table align="center" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td align="left">
                    <table class="style1">
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style14">
                                <h1 style="width: 706px">
                                    <strong style="font-size: 35px">&nbsp;<span
                                        class="style17">Online Poll For Best </span><span class="style15">Ideabaz</span></strong></h1>
                            </td>
                            <td>
                         
                            <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="157px" CausesValidation="False" />
                            
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style16">
                                <p>
                                    <strong>&nbsp;&nbsp;&nbsp; Vote for the best Ideabaz From the list below-</strong></p>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                            </td>
                            <td class="style22">
                            </td>
                            <td class="style23">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                <asp:RadioButtonList ID="radVote" runat="server" Height="110px" Style="font-family: Georgia;
                                    margin-left: 62px" Width="296px">
                                    <asp:ListItem>Kibria Suman, GPIT</asp:ListItem>
                                    <asp:ListItem>Shamim Ahmed, TNO</asp:ListItem>
                                    <asp:ListItem>Ashiqur Rahman, Finance</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                            </td>
                            <td class="style19">
                            </td>
                            <td class="style20">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnVote" runat="server" Text="Vote" OnClick="btnVote_Click" CssClass="ButtonStyle"
                                    Width="89px" Height="30px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnResult" runat="server" Text="See Result" CssClass="ButtonStyle"
                                    OnClick="btnResult_Click" Width="100px" Height="30px" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblStatus" runat="server" />
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                <asp:GridView runat="server" ID="gvResult" BackColor="White" CellPadding="4" EnableModelValidation="True"
                                    AutoGenerateColumns="false" OnRowDataBound="gvResult_RowDataBound" EmptyDataText="No one submit votes"
                                    Height="196px" Width="701px">
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#4682B4" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Options" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOptions" runat="server" Text='<%#Bind("OPTION_NAME") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Votes" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="10%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVotes" runat="server" Text='<%#Bind("VOTES") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="%" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="15%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpercentage" runat="server" Text='<%#Bind("PERCENTAGE","{0:f2}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Bar" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="55%">
                                            <ItemTemplate>
                                                <table runat="server" id="tblBar">
                                                    <tr class="BarStyle">
                                                        <td height="8px">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td class="style12">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="left">
                </td>
            </tr>
        </table>
    </div>
    <%--</form>
    </body>
   </html>--%>
</asp:Content>
