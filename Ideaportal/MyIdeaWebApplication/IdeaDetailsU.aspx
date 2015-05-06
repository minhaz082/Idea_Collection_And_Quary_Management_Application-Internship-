<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IdeaDetailsU.aspx.cs" Inherits="MyIdeaWebApplication.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 114px;
        }
        .style12
        {
            width: 605px;
            text-align: center;
        }
        .style13
        {
            width: 605px;
            text-align: center;
            font-family: Georgia;
            font-size: larger;
        }
        .style14
        {
            color: #FFFFFF;
            font-weight: bold;
            font-family: Georgia;
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
                Here you can see Idea Details and can Commment by selecting Idea Catagory from 
                Dropdown list below</td>
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
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="IdeaCatagory" 
                    DataValueField="IdeaCatagory" Width="150px" style="font-family: Georgia">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
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
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="IdeaID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="463px" AllowPaging="True" 
                    style="text-align: left">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="IdeaID" HeaderText="IdeaID" InsertVisible="False" 
                ReadOnly="True" SortExpression="IdeaID" />
            <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                SortExpression="IdeaTopic" ReadOnly="True" />
            <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                SortExpression="IdeaCatagory" ReadOnly="True" />
            <asp:BoundField DataField="IdeaDetails" HeaderText="IdeaDetails" 
                SortExpression="IdeaDetails" ReadOnly="True" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" ReadOnly="True" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" 
                ReadOnly="True" />
            <asp:BoundField DataField="CommentA" HeaderText="CommentA" 
                SortExpression="CommentA" />
            <asp:BoundField DataField="CommentE" HeaderText="CommentE" 
                SortExpression="CommentE" />
            <asp:BoundField DataField="CommentU" HeaderText="CommentU" 
                SortExpression="CommentU" />
            <asp:CommandField EditText="Comment" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="null" 
                Name="IdeaCatagory" PropertyName="SelectedValue" Type="String" />
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
    </asp:SqlDataSource>&nbsp;</td>
            <td>
                <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="152px" CausesValidation="False" />
                
                <%--<asp:Button ID="Button1" runat="server" CssClass="style14" 
                    PostBackUrl="~/Home.aspx" Text="Go Homepage" Width="158px" />--%>
&nbsp;<br />
                <br />
                <asp:Button ID="Button2" runat="server" CssClass="style14" 
                    PostBackUrl="~/EvaluatedIdea.aspx" Text="View Evaluated Idea" 
                    Width="161px" CausesValidation="False" Height="30px" />
&nbsp;<br />
                <br />
                <asp:Button ID="Button3" runat="server" CssClass="style14" 
                    PostBackUrl="~/StatusRcnt.aspx" Text="View Idea in Action" Width="163px" 
                    CausesValidation="False" Height="30px" />
&nbsp;<br />
                <br />
                <asp:Button ID="Button4" runat="server" CssClass="style14" 
                    PostBackUrl="~/TopIdea.aspx" Text="View Top Idea" Width="162px" 
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
