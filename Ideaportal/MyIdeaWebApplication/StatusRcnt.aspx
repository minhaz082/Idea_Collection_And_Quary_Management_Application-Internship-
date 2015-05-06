<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StatusRcnt.aspx.cs" Inherits="MyIdeaWebApplication.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 134px;
        }
        .style12
        {
            width: 516px;
            text-align: center;
        }
        .style13
        {
            font-family: Georgia;
        }
        .style14
        {
            font-weight: bold;
            font-family: Georgia;
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .style15
        {
            font-size: larger;
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
            <td class="style12">
                <span class="style13"><span class="style15">Here you will find the recent Status of submitted Ideas 
                by selecting a status from the Dropdown list below</span><br />
                <br />
                </span>
                &nbsp;<asp:DropDownList ID="DropDownStatus" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="IdeaStatus" 
                    DataValueField="IdeaStatus" Width="130px" style="font-family: Georgia">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [IdeaStatus]"></asp:SqlDataSource>
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
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False"  
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                    CellPadding="4" DataSourceID="SqlDataSource4" 
                    EmptyDataText="" 
                    GridLines="Horizontal" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            SortExpression="IdeaCatagory" />
                        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                            SortExpression="IdeaTopic" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="TotalMark" HeaderText="TotalMark" 
                            SortExpression="TotalMark" />
                        <asp:BoundField DataField="RecentStatus" HeaderText="RecentStatus" 
                            SortExpression="RecentStatus" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    
                    SelectCommand="SELECT [IdeaCatagory], [IdeaTopic], [UserName], [TotalMark], [RecentStatus] FROM [Evaluation] WHERE ([RecentStatus] = @RecentStatus) ORDER BY [TotalMark]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownStatus" DefaultValue="null" 
                            Name="RecentStatus" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="152px" CausesValidation="False" />
                
                <%--<asp:Button ID="Button2" runat="server" CssClass="style14" 
                    PostBackUrl="~/Home.aspx" Text="Go Homepage" Width="160px" />--%>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="style14" 
                    PostBackUrl="~/EvaluatedIdea.aspx" Text="View Evaluated Idea" 
                    Width="160px" CausesValidation="False" Height="30px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="style14" 
                    PostBackUrl="~/StatusRcnt.aspx" Text="View Idea in Action" Width="160px" 
                    CausesValidation="False" Height="29px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" CssClass="style14" 
                    PostBackUrl="~/TopIdea.aspx" Text="View Top Idea" Width="160px" 
                    CausesValidation="False" Height="30px" />
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
