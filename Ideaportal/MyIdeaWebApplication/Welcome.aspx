<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true"
    CodeBehind="Welcome.aspx.cs" Inherits="MyIdeaWebApplication.WebForm14" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            width: 773px;
        }
        .button
        {
        font-weight: 700;
    }
    .style14
    {
        width: 773px;
        text-align: center;
        font-family: Georgia;
    }
        .style15
        {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <%--<form id="form1" runat="server">--%>
    <table class="style1">
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style12">
                <ajax:ToolkitScriptManager ID="scriptmanager1" runat="server">
    </ajax:ToolkitScriptManager>
    <div>
        <table style="border: Solid 3px #D55500; width: 400px; height: 400px" cellpadding="0"
            cellspacing="0">
            <tr style="background-color: #D55500">
                <td style="height: 10%; color: White; font-weight: bold; font-size: larger" align="center">
                    <asp:Label ID="lblTitle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="imgslides" runat="server" Height="345px" Width="761px" 
                        ImageUrl="~/Images/Idea1.JPG" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="lblimgdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnPrevious" runat="server" Text="Prev" CssClass="button" 
                        BackColor="Blue" ForeColor="White" />
                    <asp:Button ID="btnPlay" runat="server" Text="Play" CssClass="button" 
                        Height="30px" BackColor="Blue" ForeColor="White" />
                    <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="button" 
                        BackColor="Blue" ForeColor="White" />
                </td>
            </tr>
        </table>
        <ajax:SlideShowExtender ID="SlideShowExtender1" runat="server" AutoPlay="true" ImageTitleLabelID="lblTitle"
            ImageDescriptionLabelID="lblimgdesc" Loop="true" NextButtonID="btnNext" PreviousButtonID="btnPrevious"
            PlayButtonID="btnPlay" PlayButtonText="Play" StopButtonText="Stop" TargetControlID="imgslides"
            SlideShowServicePath="Slideshow.asmx" SlideShowServiceMethod="GetSlides">
        </ajax:SlideShowExtender>
    </div>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
               Commercial Idea Portal is a portal for collecting Ideas of Employe's. Here you can share your thought, 
               suggestion, concept, experience and creative ideas with everyone in Gpit. We expect each and everyone 
               will share their ideas with us here. Last but not the least If you are lucky you can win prizes with
                your great Idea.<br />
                <br />
&nbsp;Now 
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#9900FF" 
                    NavigateUrl="~/Login.aspx"> Login </asp:HyperLink> to Submit your Idea</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    <%--</form>--%>
</asp:Content>
