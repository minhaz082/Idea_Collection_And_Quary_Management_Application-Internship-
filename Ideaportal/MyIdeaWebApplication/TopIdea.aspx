<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TopIdea.aspx.cs" Inherits="MyIdeaWebApplication.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 85px;
        }
        .style12
        {
            width: 635px;
        }
        .style13
        {
            width: 635px;
            text-align: center;
            font-family: Georgia;
            font-size: larger;
        }
        .style14
        {
            font-weight: bold;
            font-family: Georgia;
            color: #FFFFFF;
            background-color: #0066FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">


    <table class="style1">
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
            <td class="style13">
                Here is the list of&nbsp; Top Ideas that got highest Total marks</td>
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
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
    DataKeyNames="EvalID" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." 
    GridLines="Horizontal" PageSize="5">
    <Columns>
        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
            SortExpression="IdeaCatagory" />
        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
            SortExpression="IdeaTopic" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" 
            SortExpression="UserName" />
        <asp:BoundField DataField="Implimentability" HeaderText="Implimentability" 
            SortExpression="Implimentability" />
        <asp:BoundField DataField="Uniqueness" HeaderText="Uniqueness" 
            SortExpression="Uniqueness" />
        <asp:BoundField DataField="RevenueCost" HeaderText="RevenueCost" 
            SortExpression="RevenueCost" />
        <asp:BoundField DataField="TotalMark" HeaderText="TotalMark" 
            SortExpression="TotalMark" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
    DeleteCommand="DELETE FROM [Evaluation] WHERE [EvalID] = @EvalID" 
    InsertCommand="INSERT INTO [Evaluation] ([IdeaCatagory], [IdeaTopic], [UserName], [Implimentability], [Uniqueness], [RevenueCost], [TotalMark], [Comment]) VALUES (@IdeaCatagory, @IdeaTopic, @UserName, @Implimentability, @Uniqueness, @RevenueCost, @TotalMark, @Comment)" 
    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [EvalID], [IdeaCatagory], [IdeaTopic], [UserName], [Implimentability], [Uniqueness], [RevenueCost], [TotalMark], [Comment] FROM [Evaluation] ORDER BY [TotalMark] DESC" 
    UpdateCommand="UPDATE [Evaluation] SET [IdeaCatagory] = @IdeaCatagory, [IdeaTopic] = @IdeaTopic, [UserName] = @UserName, [Implimentability] = @Implimentability, [Uniqueness] = @Uniqueness, [RevenueCost] = @RevenueCost, [TotalMark] = @TotalMark, [Comment] = @Comment WHERE [EvalID] = @EvalID">
    <DeleteParameters>
        <asp:Parameter Name="EvalID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="IdeaCatagory" Type="String" />
        <asp:Parameter Name="IdeaTopic" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Implimentability" Type="Double" />
        <asp:Parameter Name="Uniqueness" Type="Double" />
        <asp:Parameter Name="RevenueCost" Type="Double" />
        <asp:Parameter Name="TotalMark" Type="Double" />
        <asp:Parameter Name="Comment" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="IdeaCatagory" Type="String" />
        <asp:Parameter Name="IdeaTopic" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Implimentability" Type="Double" />
        <asp:Parameter Name="Uniqueness" Type="Double" />
        <asp:Parameter Name="RevenueCost" Type="Double" />
        <asp:Parameter Name="TotalMark" Type="Double" />
        <asp:Parameter Name="Comment" Type="String" />
        <asp:Parameter Name="EvalID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="152px" CausesValidation="False" />
                <%--<asp:Button ID="Button1" runat="server" CssClass="style14" 
                    PostBackUrl="~/Home.aspx" Text="Go Homepage" Width="160px" />--%>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="style14" 
                    PostBackUrl="~/EvaluatedIdea.aspx" Text="View Evaluated Idea" 
                    Width="160px" CausesValidation="False" Height="29px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="style14" 
                    PostBackUrl="~/StatusRcnt.aspx" Text="View Idea In Action" Width="160px" 
                    CausesValidation="False" Height="30px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="style14" 
                    PostBackUrl="~/TopIdea.aspx" Text="View Top Idea" Width="160px" 
                    CausesValidation="False" Height="31px" />
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    

</asp:Content>
