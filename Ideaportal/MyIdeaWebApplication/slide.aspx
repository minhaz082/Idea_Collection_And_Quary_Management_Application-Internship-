<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="slide.aspx.cs" Inherits="MyIdeaWebApplication.WebForm15" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <%--<form id="form1" runat="server">--%>
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
                    <asp:Image ID="imgslides" runat="server" Height="400px" Width="400px" ImageUrl="~/Images/Suresh1.JPG" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="lblimgdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnPrevious" runat="server" Text="Prev" CssClass="button" />
                    <asp:Button ID="btnPlay" runat="server" Text="Play" CssClass="button" />
                    <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="button" />
                </td>
            </tr>
        </table>
        <ajax:SlideShowExtender runat="server" AutoPlay="true" ImageTitleLabelID="lblTitle"
            ImageDescriptionLabelID="lblimgdesc" Loop="true" NextButtonID="btnNext" PreviousButtonID="btnPrevious"
            PlayButtonID="btnPlay" PlayButtonText="Play" StopButtonText="Stop" TargetControlID="imgslides"
            SlideShowServicePath="Slideshow.asmx" SlideShowServiceMethod="GetSlides">
        </ajax:SlideShowExtender>
    </div>
    <%--</form>--%>
</asp:Content>
