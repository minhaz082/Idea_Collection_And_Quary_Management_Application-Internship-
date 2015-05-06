<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Gallery.aspx.cs" Inherits="MyIdeaWebApplication.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            text-align: center;
            font-family: Georgia;
        }
        .style13
        {
            text-align: center;
            font-family: Georgia;
            font-size: 32px;
        }
        .style14
        {
            width: 550px;
        }
        .style15
        {
            width: 550px;
            height: 36px;
        }
        .style16
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <%--<div id="demo">--%>
        <table class="style1">
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    </td>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="40px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="135px" CausesValidation="False" />
                    
                    &nbsp;</td>
            </tr>
    </table>
        <table align="center" 
        style="margin-left: 244px; width: 566px; height: 446px;">
            <tr>
                <td colspan="2">
                    <h1 class="style13">
                        Idea
                        Gallery</h1>
                    <p class="style11">
                        <asp:Image ID="Image2" runat="server" Height="118px" 
                            ImageUrl="~/Button/Live_Gallery.png" Width="156px" />
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <%--Upload Image:--%>
                </td>
                <td>
                    <%--<asp:FileUpload ID="fileuploadimages" runat="server" />--%>
                </td>
            </tr>
            <tr>
                <td>
                    <%--Enter Image Desc:--%>
                </td>
                <td>
                    <%--<asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />--%>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DataList ID="dlImages" runat="server" RepeatColumns="3" CellPadding="5" 
                        Height="272px" style="margin-left: 0px" Width="544px">
                        <%--<ItemTemplate>
                            <asp:Image ID="Image1" class="fancyzoom" ImageUrl='<%# Bind("ImageName", "~/SlideImages/{0}") %>'
                                alt='<%#Eval("Description") %>' runat="server" Width="112" Height="84" />
                        </ItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Image ID="Image1" class="fancyzoom" ImageUrl='<%# Bind("ImageName", "~/SlideImages/{0}") %>'
                                alt='<%#Eval("Description") %>' runat="server" Width="150" Height="120" />
                        </ItemTemplate>
                        
                        
                        <ItemStyle BorderColor="Brown" BorderStyle="dotted" BorderWidth="3px" HorizontalAlign="Center"
                            VerticalAlign="Bottom" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <%--<asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
                        style="font-family: Georgia; font-weight: 700; color: #FFFFFF; background-color: #0066FF" 
                        Text="Go Homepage" Width="110px" />--%>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    <%--</div>--%>
</asp:Content>
