<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IdeaDetailsA.aspx.cs" Inherits="MyIdeaWebApplication.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 148px;
        }
        .style12
        {
            width: 514px;
        }
        .style13
        {
            font-family: Georgia;
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <span class="style13">Idea Catagory:</span>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="IdeaCatagory" 
                    DataValueField="IdeaCatagory">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="43px" 
                    ImageUrl="~/Button/home red roof.png" PostBackUrl="~/Secured/HomeA.aspx" 
                    Width="143px" CausesValidation="False" />
                
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
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                    DataKeyNames="IdeaID" DataSourceID="SqlDataSource2" Height="50px" Width="438px">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" ReadOnly="True" 
                            SortExpression="IdeaTopic" />
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            ReadOnly="True" SortExpression="IdeaCatagory" />
                        <asp:BoundField DataField="IdeaDetails" HeaderText="IdeaDetails" 
                            ReadOnly="True" SortExpression="IdeaDetails" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="CommentA" HeaderText="CommentA" 
                            SortExpression="CommentA" />
                        <asp:BoundField DataField="CommentU" HeaderText="CommentU" ReadOnly="True" 
                            SortExpression="CommentU" />
                        <asp:BoundField DataField="CommentE" HeaderText="CommentE" ReadOnly="True" 
                            SortExpression="CommentE" />
                        <asp:CommandField EditText="Comment" ShowEditButton="True" 
                            ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Idea] WHERE [IdeaID] = @IdeaID" 
                    InsertCommand="INSERT INTO [Idea] ([IdeaTopic], [IdeaCatagory], [IdeaDetails], [UserName], [Date], [CommentA], [CommentU], [CommentE]) VALUES (@IdeaTopic, @IdeaCatagory, @IdeaDetails, @UserName, @Date, @CommentA, @CommentU, @CommentE)" 
                    SelectCommand="SELECT * FROM [Idea] WHERE ([IdeaCatagory] = @IdeaCatagory)" 
                    UpdateCommand="UPDATE [Idea] SET [IdeaTopic] = @IdeaTopic, [IdeaCatagory] = @IdeaCatagory, [IdeaDetails] = @IdeaDetails, [UserName] = @UserName, [Date] = @Date, [CommentA] = @CommentA, [CommentU] = @CommentU, [CommentE] = @CommentE WHERE [IdeaID] = @IdeaID">
                    <DeleteParameters>
                        <asp:Parameter Name="IdeaID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IdeaTopic" Type="String" />
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="IdeaDetails" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="CommentA" Type="String" />
                        <asp:Parameter Name="CommentU" Type="String" />
                        <asp:Parameter Name="CommentE" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="IdeaCatagory" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IdeaTopic" Type="String" />
                        <asp:Parameter Name="IdeaCatagory" Type="String" />
                        <asp:Parameter Name="IdeaDetails" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="CommentA" Type="String" />
                        <asp:Parameter Name="CommentU" Type="String" />
                        <asp:Parameter Name="CommentE" Type="String" />
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
