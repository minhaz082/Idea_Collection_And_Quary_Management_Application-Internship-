<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RcntIdea.aspx.cs" Inherits="MyIdeaWebApplication.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 138px;
        }
        .style12
        {
            width: 557px;
        }
        .style13
        {
            text-align: center;
        }
        .style14
        {
            width: 557px;
            text-align: center;
        }
        .style15
        {
            width: 138px;
            text-align: center;
        }
        .style16
        {
            font-family: Georgia;
        }
        .style17
        {
            font-weight: bold;
            font-family: Georgia;
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .style18
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
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                <span class="style16"><span class="style18">Here you will find Recently submitted 
                Ideas by selecting&nbsp; Idea catagory from the Dropdown list:</span><br />
                <br />
                </span>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="IdeaCatagory" DataTextField="IdeaCatagory" 
                    DataValueField="IdeaCatagory" Width="130px" style="font-family: Georgia">
                </asp:DropDownList>
                <asp:SqlDataSource ID="IdeaCatagory" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" 
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
                    DataSourceID="SqlDataSource1" ForeColor="Black" 
                    GridLines="None" DataKeyNames="IdeaID" BackColor="LightGoldenrodYellow" 
                    PageSize="3">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                            SortExpression="IdeaTopic" />
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            SortExpression="IdeaCatagory" />
                        <asp:BoundField DataField="IdeaDetails" HeaderText="IdeaDetails" 
                            SortExpression="IdeaDetails" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="CommentA" HeaderText="CommentA" 
                            SortExpression="CommentA" />
                        <asp:BoundField DataField="CommentE" HeaderText="CommentE" 
                            SortExpression="CommentE" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
                    
                    SelectCommand="SELECT [IdeaID], [IdeaTopic], [IdeaCatagory], [IdeaDetails], [UserName], [CommentA], [CommentE] FROM [Idea] WHERE ([IdeaCatagory] = @IdeaCatagory)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="null" 
                            Name="IdeaCatagory" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="152px" CausesValidation="False" />

                <%--<asp:Button ID="Button3" runat="server" CssClass="style17" 
                    PostBackUrl="~/Home.aspx" Text="Go Homepage" Width="160px" />--%>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="style17" 
                    PostBackUrl="~/EvaluatedIdea.aspx" Text="View Evaluated Idea" 
                    Width="160px" CausesValidation="False" Height="30px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" CssClass="style17" 
                    PostBackUrl="~/StatusRcnt.aspx" Text="View Idea in Action" Width="160px" 
                    CausesValidation="False" Height="30px" />
&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" CssClass="style17" 
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
            <td>
                
               <%-- IdeaID:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxIdeaId" runat="server"></asp:TextBox>--%>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/IdeaDetailsU.aspx" 
                    style="font-family: Georgia; font-weight: 700; color: #FFFFFF; background-color: #0066FF" 
                    Text="View Details of this Ideas" CausesValidation="False" Height="30px" />
&nbsp;
                
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
