<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EvaluateIdea.aspx.cs" Inherits="MyIdeaWebApplication.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            width: 691px;
            text-align: center;
        }
        .style13
        {
            width: 159px;
        }
        .style16
        {
            width: 110px;
        }
        .style17
        {
            width: 312px;
        }
        .style18
        {
            width: 110px;
            font-weight: bold;
            text-align: right;
        }
    .style19
    {
        font-family: Georgia;
    }
    .style20
    {
        width: 691px;
        text-align: center;
        font-family: Georgia;
            font-size: larger;
        }
        .style21
        {
            font-family: Georgia;
            font-weight: bold;
        }
        .style22
        {
            font-size: larger;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    
        <table class="style1">
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td colspan="2">
                    
                    &nbsp;
                    
                    <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="152px" CausesValidation="False" />
                    <%--<asp:Button ID="Button2" runat="server" PostBackUrl="~/Home.aspx" 
                        style="font-weight: 700; font-family: Georgia; color: #FFFFFF; background-color: #0066FF" 
                        Text="Go HomePage" CausesValidation="False" />--%>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;
                    <asp:ImageButton ID="ImageButton2" 
                        runat="server" Height="31px" ImageUrl="~/Button/date wise idea.png" 
                        Width="171px" CausesValidation="False" PostBackUrl="~/DatewiseIdea.aspx" />
                    &nbsp;
                    <%--<asp:Button ID="Button3" runat="server" CausesValidation="False" Height="28px" 
                        PostBackUrl="~/DatewiseIdea.aspx" 
                        style="font-family: Georgia; font-weight: 700; color: #FFFFFF; background-color: #0066FF" 
                        Text="See Datewise Idea" />--%>
        </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
                    <span class="style19"><span class="style22">For Evaluation select an Idea Catagory from the Dropdown list</span>:</span>&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="IdeaCatagory" DataTextField="IdeaCatagory" 
            DataValueField="IdeaCatagory" style="font-family: Georgia" Width="115px">
        </asp:DropDownList>&nbsp;
        
        <asp:SqlDataSource ID="IdeaCatagory" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
            SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
        </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
                    <asp:GridView ID="IdeaGridView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            DataKeyNames="IdeaID" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
                        PageSize="3" Width="497px">
            <Columns>
                <asp:BoundField DataField="IdeaCatagory" HeaderText="IdeaCatagory" 
                    SortExpression="IdeaCatagory" />
                <asp:BoundField DataField="IdeaTopic" HeaderText="IdeaTopic" 
                    SortExpression="IdeaTopic" />
                <asp:BoundField DataField="IdeaDetails" HeaderText="IdeaDetails" 
                    SortExpression="IdeaDetails" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:CommandField ShowSelectButton="True" />
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
            ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM [Idea] WHERE ([IdeaCatagory] = @IdeaCatagory)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="Null" 
                    Name="IdeaCatagory" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style20" colspan="2">
                    Here for <strong>Implimentability</strong>, <strong>Uniqueness</strong> and 
                    <strong>RevenueCost</strong> mark out of <strong>10</strong> and sum the Total</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    Idea Catagory:</td>
                <td class="style17">
                    <asp:DropDownList ID="DropDownListCatagory" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="IdeaCatagory" 
                        DataValueField="IdeaCatagory" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                        SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownListCatagory" ErrorMessage="Select idea catagory" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    Idea Topic:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxTopic" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxTopic" ErrorMessage="Enter Idea Topic" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    User Name:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBoxUN" ErrorMessage="Enter User Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    Implimentability:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxImpli" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxImpli" ErrorMessage="Enter mark for implimentability" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    Uniqueness:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxUniq" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBoxUniq" ErrorMessage="Enter nark for uniqueness" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    RevenueCost:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxCost" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBoxCost" ErrorMessage="Enter mark for revenue cost" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    Total Mark:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxTotal" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBoxTotal" ErrorMessage="Enter total mark" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style18">
                    Comment:</td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxComment" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBoxComment" ErrorMessage="Give your valuable comment" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        BackColor="#0066FF" CssClass="style21" ForeColor="White" Height="30px" />
&nbsp;


                        <asp:button ID="btnRefresh" OnClick="btnRefresh_Click" runat="server" 
                        Text="REFRESH" BackColor="#0066FF" CssClass="style21" ForeColor="White" 
                        Height="30px" />



&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style12" colspan="2">
               
                    <br />
                    <br />
               
                <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
        
    
</asp:Content>
