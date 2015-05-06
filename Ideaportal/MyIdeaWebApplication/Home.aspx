<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyIdeaWebApplication.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style14
        {
            width: 248px;
        }
        .style15
        {
            width: 1082px;
        }
        .style24
    {
        width: 210px;
        height: 22px;
    }
    .style25
    {
        width: 1082px;
        height: 22px;
        font-size: xx-large;
    }
    .style26
    {
        height: 22px;
    }
        .style27
        {
            width: 210px;
        }
        .style28
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                </td>
            <td class="style25">
                <h1 class="style28" style="height: 37px; margin-bottom: 2px;">
                    <strong style="font-size: xx-large; font-family: Georgia">
                    Home Page Menu</strong></h1>
                </td>
            <td class="style26" style="text-align: center">
                
            </td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style15">
                &nbsp;&nbsp;
                <br />
&nbsp;&nbsp; &nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="137px" 
                    ImageUrl="~/Button/got an idea.png" PostBackUrl="~/SubmitIdea.aspx" 
                    Width="136px" CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="136px" 
                    ImageUrl="~/Button/Recent Idea.png" PostBackUrl="~/RcntIdea.aspx" 
                    Width="154px" CausesValidation="False" />
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" Height="136px" 
                    ImageUrl="~/Button/idea in action.png" PostBackUrl="~/StatusRcnt.aspx" 
                    Width="170px" CausesValidation="False" />
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="137px" 
                    ImageUrl="~/Button/Gallery.png" PostBackUrl="~/Gallery.aspx" Width="164px" 
                    CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton7" runat="server" Height="133px" 
                    ImageUrl="~/Button/vote.png" PostBackUrl="~/Voting.aspx" Width="152px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" Height="137px" 
                    ImageUrl="~/Button/Admin.png" PostBackUrl="~/Secured/HomeA.aspx" 
                    Width="135px" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton6" runat="server" Height="138px" 
                    ImageUrl="~/Button/evaluator.png" PostBackUrl="~/Evaluator/EvaluateIdea.aspx" 
                    Width="134px" CausesValidation="False" />
                <br />
            </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
