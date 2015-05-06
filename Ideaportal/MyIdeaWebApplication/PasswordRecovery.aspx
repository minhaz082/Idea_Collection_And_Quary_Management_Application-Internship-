<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="MyIdeaWebApplication.Password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#E3EAEB" 
            BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="Medium" Height="211px" Width="452px" 
            style="margin-left: 297px">
            <SubmitButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <SuccessTextStyle Font-Bold="True" ForeColor="#1C5E55" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:PasswordRecovery>
    
    </div>
    </form>
</body>
</html>
