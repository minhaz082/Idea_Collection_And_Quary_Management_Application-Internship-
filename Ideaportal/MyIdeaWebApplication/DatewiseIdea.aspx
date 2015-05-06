<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DatewiseIdea.aspx.cs" Inherits="MyIdeaWebApplication.WebForm20" %>
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
                <span class="style14">Here you will get the number of idea submitted in a day by 
                selecting a date from the Dropdown list</span>:<br />
                <br />
                <asp:DropDownList 
                    ID="DropDownList1" runat="server" AutoPostBack="True" Width="140px" 
                    Height="18px">
                    <asp:ListItem>30-Dec-12</asp:ListItem>
                    <asp:ListItem>27-Dec-12</asp:ListItem>                    
                    <asp:ListItem>26-Dec-12</asp:ListItem>
                    <asp:ListItem>25-Dec-12</asp:ListItem>
                    <asp:ListItem>24-Dec-12</asp:ListItem>             
                    <asp:ListItem>23-Dec-12</asp:ListItem>
                    <asp:ListItem>20-Dec-12</asp:ListItem>       
                    <asp:ListItem>19-Dec-12</asp:ListItem>                    
                    <asp:ListItem>18-Dec-12</asp:ListItem>
                    <asp:ListItem>17-Dec-12</asp:ListItem>
                    <asp:ListItem>16-Dec-12</asp:ListItem>                    
                    <asp:ListItem>13-Dec-12</asp:ListItem>
                    <asp:ListItem>12-Dec-12</asp:ListItem>                    
                    <asp:ListItem>11-Dec-12</asp:ListItem>
                    <asp:ListItem>10-Dec-12</asp:ListItem>
                    <asp:ListItem>9-Dec-12</asp:ListItem>                    
                    <asp:ListItem>6-Dec-12</asp:ListItem> 
                    <asp:ListItem>5-Dec-12</asp:ListItem>
                    <asp:ListItem>4-Dec-12</asp:ListItem>
                    <asp:ListItem>3-Dec-12</asp:ListItem>   
                    <asp:ListItem>2-Dec-12</asp:ListItem>
                    <asp:ListItem>29-Nov-12</asp:ListItem>
                    <asp:ListItem>28-Nov-12</asp:ListItem>
                    <asp:ListItem>27-Nov-12</asp:ListItem>
                    <asp:ListItem>26-Nov-12</asp:ListItem>
                    <asp:ListItem>25-Nov-12</asp:ListItem>                
                    <asp:ListItem>22-Nov-12</asp:ListItem>
                    <asp:ListItem>21-Nov-12</asp:ListItem> 
                    <asp:ListItem>20-Nov-12</asp:ListItem>
                    <asp:ListItem>19-Nov-12</asp:ListItem>
                    <asp:ListItem>18-Nov-12</asp:ListItem>
                    <asp:ListItem>15-Nov-12</asp:ListItem>
                    <asp:ListItem>14-Nov-12</asp:ListItem> 
                    <asp:ListItem>13-Nov-12</asp:ListItem>
                    <asp:ListItem>12-Nov-12</asp:ListItem>
                    <asp:ListItem>11-Nov-12</asp:ListItem>
                    <asp:ListItem>8-Nov-12</asp:ListItem>
                    <asp:ListItem>7-Nov-12</asp:ListItem>
                    <asp:ListItem>6-Nov-12</asp:ListItem>
                    <asp:ListItem>5-Nov-12</asp:ListItem>
                    <asp:ListItem>4-Nov-12</asp:ListItem>
                    <asp:ListItem>1-Nov-12</asp:ListItem>
                    <asp:ListItem>31-Oct-12</asp:ListItem>
                    <asp:ListItem>30-Oct-12</asp:ListItem> 
                    <asp:ListItem>29-Oct-12</asp:ListItem> 
                    <asp:ListItem>28-Oct-12</asp:ListItem> 
                    <asp:ListItem>25-Oct-12</asp:ListItem> 
                    <asp:ListItem>24-Oct-12</asp:ListItem> 
                    <asp:ListItem>23-Oct-12</asp:ListItem> 
                    <asp:ListItem>22-Oct-12</asp:ListItem> 
                    <asp:ListItem>21-Oct-12</asp:ListItem> 
                    <asp:ListItem>18-Oct-12</asp:ListItem>                     
                    <asp:ListItem>17-Oct-12</asp:ListItem>
                    <asp:ListItem>16-Oct-12</asp:ListItem> 
                    <asp:ListItem>15-Oct-12</asp:ListItem> 
                    <asp:ListItem>14-Oct-12</asp:ListItem> 
                    <asp:ListItem>11-Oct-12</asp:ListItem> 
                    <asp:ListItem>10-Oct-12</asp:ListItem> 
                    <asp:ListItem>9-Oct-12</asp:ListItem> 
                    <asp:ListItem>8-Oct-12</asp:ListItem> 
                    <asp:ListItem>7-Oct-12</asp:ListItem> 
                    <asp:ListItem>4-Oct-12</asp:ListItem> 
                    <asp:ListItem>3-Oct-12</asp:ListItem> 
                    <asp:ListItem>2-Oct-12</asp:ListItem> 
                    <asp:ListItem>1-Oct-12</asp:ListItem> 
                    <asp:ListItem Selected="True">30-Dec-12</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;</td>
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
                    AutoGenerateColumns="False"  BorderColor="#336666" 
                    BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="IdeaID" 
                    DataSourceID="SqlDataSource2" GridLines="Horizontal" BackColor="White"
                    EmptyDataText="No Idea Submitted " ForeColor="#333333">
                    
                    <Columns>
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            SortExpression="IdeaCatagory" />
                        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                            SortExpression="IdeaTopic" />
                        <asp:BoundField DataField="IdeaDetails" HeaderText="IdeaDetails" 
                            SortExpression="IdeaDetails" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="Date" HeaderText="Date" 
                            SortExpression="Date" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Idea] WHERE [IdeaID] = @IdeaID" 
                    InsertCommand="INSERT INTO [Idea] ([IdeaTopic], [IdeaCatagory], [IdeaDetails], [UserName], [Date], [CommentA], [CommentU], [CommentE]) VALUES (@IdeaTopic, @IdeaCatagory, @IdeaDetails, @UserName, @Date, @CommentA, @CommentU, @CommentE)" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT * FROM [Idea] WHERE ([Date] = @Date) ORDER BY [Date] DESC" 
                    
                    UpdateCommand="UPDATE [Idea] SET [IdeaTopic] = @IdeaTopic, [IdeaCatagory] = @IdeaCatagory, [IdeaDetails] = @IdeaDetails, [UserName] = @UserName, [Date] = @Date, [CommentA] = @CommentA, [CommentU] = @CommentU, [CommentE] = @CommentE WHERE [IdeaID] = @IdeaID">
                    <DeleteParameters>
                        <asp:Parameter Name="IdeaID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IdeaTopic" Type="String" />
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="IdeaDetails" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Date" DbType="Date" />
                        <asp:Parameter Name="CommentA" Type="String" />
                        <asp:Parameter Name="CommentU" Type="String" />
                        <asp:Parameter Name="CommentE" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DbType="Date" 
                            DefaultValue="null" Name="Date" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IdeaTopic" Type="String" />
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="IdeaDetails" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Date" DbType="Date" />
                        <asp:Parameter Name="CommentA" Type="String" />
                        <asp:Parameter Name="CommentU" Type="String" />
                        <asp:Parameter Name="CommentE" Type="String" />
                        <asp:Parameter Name="IdeaID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="30px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="160px" CausesValidation="False" />
&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="style13" 
                    PostBackUrl="~/StatusRcnt.aspx" Text="View Idea In Action" Width="161px" 
                    CausesValidation="False" Height="29px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="style13" 
                    PostBackUrl="~/Evaluator/EvaluateIdea.aspx" Text="Evaluate idea" 
                    Width="160px" CausesValidation="False" Height="28px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="style13" 
                    PostBackUrl="~/TopIdea.aspx" Text="View Top Idea" Width="161px" 
                    CausesValidation="False" Height="29px" />
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
