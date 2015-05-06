<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DatabaseTables.aspx.cs" Inherits="MyIdeaWebApplication.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 140px;
        }
        .style12
        {
            width: 773px;
            font-weight: 700;
        }
        .style13
        {
            width: 773px;
            font-family: Georgia;
            text-align: center;
        }
        .style15
        {
            width: 140px;
            text-align: center;
        }
        .style16
        {
            width: 140px;
            height: 45px;
        }
        .style17
        {
            width: 773px;
            font-family: Georgia;
            text-align: center;
            height: 45px;
        }
        .style18
        {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
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
            <td class="style16">
                </td>
            <td class="style17">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                    ImageUrl="~/Button/home red roof.png" PostBackUrl="~/Secured/HomeA.aspx" 
                    Width="148px" CausesValidation="False" />
            </td>
            <td class="style18">
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                <strong>Member Details</strong></td>
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
                <strong>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="UserId" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." ForeColor="#333333" 
                    GridLines="None" PageSize="5" style="margin-left: 171px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="MobileAlias" HeaderText="MobileAlias" 
                            SortExpression="MobileAlias" />
                        <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" 
                            SortExpression="LastActivityDate" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                </strong>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" 
                    InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate] FROM [aspnet_Users]" 
                    UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
                    <DeleteParameters>
                        <asp:Parameter Name="UserId" Type="Object" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ApplicationId" Type="Object" />
                        <asp:Parameter Name="UserId" Type="Object" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="LoweredUserName" Type="String" />
                        <asp:Parameter Name="MobileAlias" Type="String" />
                        <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                        <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ApplicationId" Type="Object" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="LoweredUserName" Type="String" />
                        <asp:Parameter Name="MobileAlias" Type="String" />
                        <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                        <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                        <asp:Parameter Name="UserId" Type="Object" />
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
            <td class="style13">
                <strong>Idea Table</strong></td>
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
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataKeyNames="IdeaID" DataSourceID="SqlDataSource2" 
                    EmptyDataText="There are no data records to display." PageSize="7" 
                    style="margin-left: 89px">
                    <Columns>
                        <asp:BoundField DataField="IdeaID" HeaderText="IdeaID" ReadOnly="True" 
                            SortExpression="IdeaID" />
                        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                            SortExpression="IdeaTopic" />
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            SortExpression="IdeaCatagory" />
                        <asp:BoundField DataField="IdeaDetails" HeaderText="IdeaDetails" 
                            SortExpression="IdeaDetails" />
                        <asp:BoundField DataField="UserName" HeaderText="Submitted by" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="Date" HeaderText="Submission Date" 
                            SortExpression="Date" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Idea] WHERE [IdeaID] = @IdeaID" 
                    InsertCommand="INSERT INTO [Idea] ([IdeaTopic], [IdeaCatagory], [IdeaDetails], [UserName], [Date]) VALUES (@IdeaTopic, @IdeaCatagory, @IdeaDetails, @UserName, @Date)" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [IdeaID], [IdeaTopic], [IdeaCatagory], [IdeaDetails], [UserName], [Date] FROM [Idea]" 
                    UpdateCommand="UPDATE [Idea] SET [IdeaTopic] = @IdeaTopic, [IdeaCatagory] = @IdeaCatagory, [IdeaDetails] = @IdeaDetails, [UserName] = @UserName, [Date] = @Date WHERE [IdeaID] = @IdeaID">
                    <DeleteParameters>
                        <asp:Parameter Name="IdeaID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IdeaTopic" Type="String" />
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="IdeaDetails" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IdeaTopic" Type="String" />
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="IdeaDetails" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="IdeaID" Type="Int32" />
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
            <td class="style13">
                <strong>Evaluated Idea Table</strong></td>
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
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                    DataKeyNames="EvalID" DataSourceID="SqlDataSource3" 
                    EmptyDataText="There are no data records to display." ForeColor="Black" 
                    GridLines="Vertical" PageSize="6" style="margin-left: 38px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            SortExpression="IdeaCatagory" />
                        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                            SortExpression="IdeaTopic" />
                        <asp:BoundField DataField="UserName" HeaderText="Submitted by" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="Implimentability" HeaderText="Implimentability" 
                            SortExpression="Implimentability" />
                        <asp:BoundField DataField="Uniqueness" HeaderText="Uniqueness" 
                            SortExpression="Uniqueness" />
                        <asp:BoundField DataField="RevenueCost" HeaderText="RevenueCost" 
                            SortExpression="RevenueCost" />
                        <asp:BoundField DataField="TotalMark" HeaderText="TotalMark" 
                            SortExpression="TotalMark" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Evaluation] WHERE [EvalID] = @EvalID" 
                    InsertCommand="INSERT INTO [Evaluation] ([IdeaCatagory], [IdeaTopic], [UserName], [Implimentability], [Uniqueness], [RevenueCost], [TotalMark], [Comment]) VALUES (@IdeaCatagory, @IdeaTopic, @UserName, @Implimentability, @Uniqueness, @RevenueCost, @TotalMark, @Comment)" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [EvalID], [IdeaCatagory], [IdeaTopic], [UserName], [Implimentability], [Uniqueness], [RevenueCost], [TotalMark], [Comment] FROM [Evaluation]" 
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
            <td class="style13">
                <strong>Idea Catagory</strong></td>
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
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                    CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource4" 
                    EmptyDataText="There are no data records to display." 
                    GridLines="Horizontal" style="margin-left: 251px">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            SortExpression="IdeaCatagory" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    DeleteCommand="DELETE FROM [IdeaCatagory] WHERE [ID] = @ID" 
                    InsertCommand="INSERT INTO [IdeaCatagory] ([IdeaCatagory]) VALUES (@IdeaCatagory)" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [ID], [IdeaCatagory] FROM [IdeaCatagory]" 
                    UpdateCommand="UPDATE [IdeaCatagory] SET [IdeaCatagory] = @IdeaCatagory WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
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
            <td class="style13">
                <strong>Uploaded file</strong></td>
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
                <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
                    BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                    DataKeyNames="ID" DataSourceID="SqlDataSource5" 
                    EmptyDataText="There are no data records to display." GridLines="None" 
                    PageSize="5" style="margin-left: 159px">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="FileName" HeaderText="FileName" 
                            SortExpression="FileName" />
                        <asp:BoundField DataField="FilePath" HeaderText="FilePath" 
                            SortExpression="FilePath" />
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Uploads] WHERE [ID] = @ID" 
                    InsertCommand="INSERT INTO [Uploads] ([FileName], [FilePath]) VALUES (@FileName, @FilePath)" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [ID], [FileName], [FilePath] FROM [Uploads]" 
                    UpdateCommand="UPDATE [Uploads] SET [FileName] = @FileName, [FilePath] = @FilePath WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FileName" Type="String" />
                        <asp:Parameter Name="FilePath" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FileName" Type="String" />
                        <asp:Parameter Name="FilePath" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
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
    </table>
</asp:Content>
