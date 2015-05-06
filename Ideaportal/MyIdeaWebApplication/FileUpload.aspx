<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="FileUpload.aspx.cs" Inherits="MyIdeaWebApplication.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 185px;
        }
        .style12
        {
            width: 597px;
        }
        .style13
        {
            font-family: Georgia;
        }
        .style14
        {
            width: 185px;
            height: 50px;
        }
        .style15
        {
            width: 597px;
            height: 50px;
        }
        .style16
        {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
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
            <td class="style14">
                &nbsp;
            </td>
            <td class="style15">
                
                &nbsp;<span class="style13"> Here you can download the Idea submit form which is 
                on top of the grid view below and can upload your Idea here</span></td>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="121px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;
            </td>
            <td class="style12">
                &nbsp;
            <span style="font-family: Georgia"><strong>Choose your file to upload:</strong></span>&nbsp;
                <asp:FileUpload ID="fileUpload1" runat="server" Width="250px" BackColor="White" ForeColor="Black"
                    Height="26px" Style="font-weight: 700; font-family: Georgia;" />
                
                &nbsp;&nbsp;<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click"
                    BackColor="#6666FF" ForeColor="White" Height="28px" Style="font-weight: 700;
                    font-family: Georgia; background-color: #0066FF;" />&nbsp;
                    
                    
                    &nbsp;&nbsp;
                    
                    
                   <%-- <asp:ImageButton 
                    ID="ImageButton2" runat="server" Height="40px" 
                    OnClick="ImageButton2_Click" ImageUrl="~/Button/upload.png" 
                    Width="67px" />--%>
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
            <asp:GridView ID="gvDetails" CssClass="Gridview" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="FilePath" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None"
                    BorderWidth="1px" CellPadding="3" CellSpacing="2" Style="margin-left: 127px;
                    font-family: Georgia;" PageSize="1" Width="377px">
                    <Columns>
                        <asp:BoundField DataField="FileName" HeaderText="FileName" />
                        <asp:TemplateField HeaderText="FilePath">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
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
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                
                
                <%--<asp:Button ID="Button1" runat="server" Height="30px" PostBackUrl="~/Home.aspx" 
                    style="font-family: Georgia; font-weight: 700; color: #FFFFFF; background-color: #0066FF" 
                    Text="Go Homepage" />--%>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
