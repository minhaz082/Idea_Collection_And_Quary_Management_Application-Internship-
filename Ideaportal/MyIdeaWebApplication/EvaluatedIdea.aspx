<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EvaluatedIdea.aspx.cs" Inherits="MyIdeaWebApplication.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 108px;
        }
        .style12
        {
            width: 504px;
            text-align: center;
        }
        .style13
        {
            font-weight: bold;
            color: #FFFFFF;
            font-family: Georgia;
            background-color: #0066FF;
        }
        .style14
        {
            font-family: Georgia;
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
                <span class="style14">Here you will find which Idea got what points in the 
                specific topics&nbsp; by selecting Idea Catagory from the Dropdown list</span>:<br />
                <br />
                <asp:DropDownList 
                    ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="IdeaCatagory" 
                    DataValueField="IdeaCatagory" Width="130px" style="font-family: Georgia">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
&nbsp;&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False"  BorderColor="#E7E7FF" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EvalID" 
                    DataSourceID="SqlDataSource2" 
                    EmptyDataText="" GridLines="Horizontal" PageSize="4">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
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
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Evaluation] WHERE [EvalID] = @EvalID" 
                    InsertCommand="INSERT INTO [Evaluation] ([IdeaCatagory], [IdeaTopic], [UserName], [Implimentability], [Uniqueness], [RevenueCost], [TotalMark], [Comment], [RecentStatus]) VALUES (@IdeaCatagory, @IdeaTopic, @UserName, @Implimentability, @Uniqueness, @RevenueCost, @TotalMark, @Comment, @RecentStatus)" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [EvalID], [IdeaCatagory], [IdeaTopic], [UserName], [Implimentability], [Uniqueness], [RevenueCost], [TotalMark], [Comment], [RecentStatus] FROM [Evaluation] WHERE ([IdeaCatagory] = @IdeaCatagory) ORDER BY [TotalMark]" 
                    UpdateCommand="UPDATE [Evaluation] SET [IdeaCatagory] = @IdeaCatagory, [IdeaTopic] = @IdeaTopic, [UserName] = @UserName, [Implimentability] = @Implimentability, [Uniqueness] = @Uniqueness, [RevenueCost] = @RevenueCost, [TotalMark] = @TotalMark, [Comment] = @Comment, [RecentStatus] = @RecentStatus WHERE [EvalID] = @EvalID">
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
                        <asp:Parameter Name="RecentStatus" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="null" 
                            Name="IdeaCatagory" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="IdeaTopic" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Implimentability" Type="Double" />
                        <asp:Parameter Name="Uniqueness" Type="Double" />
                        <asp:Parameter Name="RevenueCost" Type="Double" />
                        <asp:Parameter Name="TotalMark" Type="Double" />
                        <asp:Parameter Name="Comment" Type="String" />
                        <asp:Parameter Name="RecentStatus" Type="String" />
                        <asp:Parameter Name="EvalID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="152px" CausesValidation="False" />
                
                
                
                <%--<asp:Button ID="Button1" runat="server" CssClass="style13" 
                    PostBackUrl="~/Home.aspx" Text="Go Homepage" Width="160px" />--%>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="style13" 
                    PostBackUrl="~/StatusRcnt.aspx" Text="View Idea In Action" Width="160px" 
                    CausesValidation="False" Height="30px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="style13" 
                    PostBackUrl="~/EvaluatedIdea.aspx" Text="View Evaluated Idea" 
                    Width="160px" CausesValidation="False" Height="28px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="style13" 
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
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                
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
