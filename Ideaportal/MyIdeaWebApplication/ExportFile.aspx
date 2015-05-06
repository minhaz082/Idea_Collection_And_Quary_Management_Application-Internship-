<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" 
CodeBehind="ExportFile.aspx.cs" Inherits="MyIdeaWebApplication.WebForm10" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style11
        {
            width: 155px;
        }
        .style12
        {
            width: 694px;
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
            <td class="style12" align= "right ">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton 
                     ID="ImageButton3" runat="server" Height="39px" 
                    ImageUrl="~/Button/home red roof.png" PostBackUrl="~/Secured/HomeA.aspx" 
                    Width="164px" CausesValidation="False" />
                 
                 
                 <%--<asp:Button ID="Button1" runat="server" PostBackUrl="~/Secured/HomeA.aspx" 
                     style="font-weight: 700; font-family: Georgia; color: #FFFFFF; background-color: #0066FF" 
                     Text="Go Homepage" />--%>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12" align= "right ">
                 &nbsp;<td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12" align= "right ">
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/ExcelImage.jpg" OnClick="btnExcel_Click" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/WordImage.jpg" 
                        OnClick="btnWord_Click" Height="35px" Width="36px" />
                    <%--<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/PDF.jpg" Width="36px"
                        Height="36px" OnClick="btnPDF_Click" />&nbsp;</td>--%>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:GridView ID="gvdetails" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BorderColor="#336666" 
                    BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="IdeaID" 
                    DataSourceID="SqlDataSource2" GridLines="Horizontal" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="IdeaID" HeaderText="IdeaID" ReadOnly="True" 
                            SortExpression="IdeaID" />
                        <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                            SortExpression="IdeaTopic" />
                        <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                            SortExpression="IdeaCatagory" />
                        <asp:BoundField DataField="IdeaDetails" HeaderText="IdeaDetails" 
                            SortExpression="IdeaDetails" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
                        SelectCommand="SELECT * FROM [Idea]"></asp:SqlDataSource>
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
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                     SelectCommand="SELECT * FROM [Idea]"></asp:SqlDataSource>
                 &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
