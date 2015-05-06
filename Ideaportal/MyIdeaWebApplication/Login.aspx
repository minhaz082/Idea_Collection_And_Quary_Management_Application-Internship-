<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyIdeaWebApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            font-family: Georgia;
            font-size: 35px;
            width: 693px;
            margin-left: 20px;
        }
        .style13
        {
            width: 116px;
        }
        .style14
        {
            width: 726px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">


    <table class="style1" style="height: 89px">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                 <h1 class="style12">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Login Page</h1>
                
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


    <div>
    
       
        <p>
            <asp:Login ID="Login2" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" 
                BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                Font-Size="Medium" ForeColor="#333333" Height="209px" TextLayout="TextOnTop" 
                Width="314px" CreateUserText="Register here!!!" 
                CreateUserUrl="~/Registration.aspx" DestinationPageUrl="~/Home.aspx" 
                HelpPageText="Change Password!!!" HelpPageUrl="~/PasswordChange.aspx" 
                PasswordRecoveryText="Forgot Password ?? " 
                PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
                style="text-align: center; margin-left: 343px">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
        </p>
    
    </div><br/><br/><br/>
   


</asp:Content>
