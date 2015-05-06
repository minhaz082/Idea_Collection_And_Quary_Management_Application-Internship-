<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLogin.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MyIdeaWebApplication.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">


    <div>
        <h1 class="style6">
            Registration Page</h1>
&nbsp;<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" 
            BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
            ContinueDestinationPageUrl="~/Home.aspx" Font-Names="Verdana" 
            Font-Size="Medium" Height="354px" Width="338px" 
            style="text-align: left; margin-left: 313px">
            <CompleteSuccessTextStyle ForeColor="Red" />
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#284775" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#284775" />
            <InstructionTextStyle ForeColor="Black" />
            <LabelStyle ForeColor="Black" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
            </WizardSteps>
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
                VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    
    </div><br/><br/><br/>
    
</asp:Content>
