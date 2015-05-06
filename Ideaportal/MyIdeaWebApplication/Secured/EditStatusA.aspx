<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="EditStatusA.aspx.cs" Inherits="MyIdeaWebApplication.Secured.EditStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 181px;
        }
        .style12
        {
            width: 579px;
        }
        .style13
        {
            width: 579px;
            font-family: Georgia;
            text-align: center;
        }
        .style14
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
            <td class="style13">
                <span class="style14">Here you can change the status of the Idea by selecting
                </span><br class="style14" />
                <span class="style14">&nbsp;from the Dropdown list below</span><br />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="IdeaCatagory" 
                    DataValueField="IdeaCatagory" Height="17px" Width="133px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton 
                     ID="ImageButton3" runat="server" Height="33px" 
                    ImageUrl="~/Button/home red roof.png" PostBackUrl="~/Secured/HomeA.aspx" 
                    Width="148px" CausesValidation="False" />
                
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
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="EvalID" DataSourceID="SqlDataSource2" 
                    EmptyDataText="There are no data records to display." ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
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
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    
                    
                    SelectCommand="SELECT * FROM [Evaluation] WHERE ([IdeaCatagory] = @IdeaCatagory)" 
                    DeleteCommand="DELETE FROM [Evaluation] WHERE [EvalID] = @EvalID" 
                    InsertCommand="INSERT INTO [Evaluation] ([IdeaCatagory], [IdeaTopic], [UserName], [Implimentability], [Uniqueness], [RevenueCost], [TotalMark], [Comment], [RecentStatus]) VALUES (@IdeaCatagory, @IdeaTopic, @UserName, @Implimentability, @Uniqueness, @RevenueCost, @TotalMark, @Comment, @RecentStatus)" 
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
                        <asp:ControlParameter ControlID="DropDownList1" Name="IdeaCatagory" 
                            PropertyName="SelectedValue" Type="String" DefaultValue="null" />
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
