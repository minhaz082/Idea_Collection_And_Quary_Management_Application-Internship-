<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SubmitIdea.aspx.cs" Inherits="MyIdeaWebApplication.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
        }
        .style13
        {
            width: 356px;
        }
        .style14
        {
            width: 88px;
        }
        .style17
    {
        text-align: left;
        color: #FFFFFF;
    }
    .style18
    {
        color: #660033;
            font-family: Broadway;
            font-size: 29px;
        }
        .style19
        {
            font-family: Georgia;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .style20
        {
        }
        .style21
        {
            width: 88px;
            text-align: right;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <br/><br/>
 <table style="width: 728px; height: 372px; margin-left: 200px; font-family: Georgia;">
        <tr>
            <td style="text-align: right; font-weight: bold" colspan="3">
                <h1 class="style17">
                    <span style="font-family: Georgia">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="style18">Idea Submit Page</span>
                </h1>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; font-weight: bold" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: bold" class="style21">
                IdeaTopic:</td>
            <td class="style20">
                <asp:TextBox ID="TextBoxIdea" runat="server" MaxLength="300" Width="200px"></asp:TextBox>
            </td>
            <td style="font-weight: bold;" class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxIdea" ErrorMessage="Enter Idea topic" ForeColor="Red">*</asp:RequiredFieldValidator>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:ImageButton 
                    ID="ImageButton1" runat="server" BorderColor="Black" Height="31px" 
                    ImageUrl="~/Button/home black.png" PostBackUrl="~/Home.aspx" 
                    Width="152px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold" class="style21">
                Description:
            </td>
            <td class="style20">
                
                <asp:TextBox ID="TextBoxDescription" runat="server" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
                
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxDescription" ErrorMessage="Enter idea description" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
            
            <%--<asp:Button ID="Button1" runat="server" Text="Go Homepage" 
                    CausesValidation="False" CssClass="style19" PostBackUrl="~/Home.aspx" 
                    Height="29px" />--%>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold" class="style21">
                Catagory:</td>
            <td class="style20">
                <%--<asp:LoginName ID="LoginName1" runat="server" />--%><%--<asp:ScriptManager ID="script" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:TextBox SkinID="txtboxCustomizedMSkin" ID="tbEndDate" runat="server" CausesValidation="true"
            ReadOnly="true" Width="175px" />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="tbEndDate"
            CssClass=" cal_Theme1" />
    </div>--%>
                <asp:DropDownList ID="DropDownListCatagory" runat="server" 
                    DataSourceID="IdeaCatagory" DataTextField="IdeaCatagory" 
                    DataValueField="IdeaCatagory">
                </asp:DropDownList>
                <asp:SqlDataSource ID="IdeaCatagory" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [IdeaCatagory]"></asp:SqlDataSource>
            </td>
            <td style="font-weight: bold;" class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownListCatagory" ErrorMessage="Select Idea catagory" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Button ID="Button2" runat="server" Text="View Others Idea" 
                    CausesValidation="False" CssClass="style19" PostBackUrl="~/RcntIdea.aspx" 
                    Width="160px" Height="30px" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold" class="style21">
                YourName:
            </td>
            <td class="style20">
                
                <%--<asp:ScriptManager ID="script" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:TextBox SkinID="txtboxCustomizedMSkin" ID="tbEndDate" runat="server" CausesValidation="true"
            ReadOnly="true" Width="175px" />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="tbEndDate"
            CssClass=" cal_Theme1" />
    </div>--%>
                <asp:TextBox ID="TextBoxUN" runat="server" MaxLength="25" Width="200px"></asp:TextBox>
            </td>
            <td style="font-weight: bold;" class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="Write your name" ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold" class="style21">
                &nbsp;
            Date:</td>
            <td class="style20">
                <%--<asp:ScriptManager ID="script" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:TextBox SkinID="txtboxCustomizedMSkin" ID="tbEndDate" runat="server" CausesValidation="true"
            ReadOnly="true" Width="175px" />
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="tbEndDate"
            CssClass=" cal_Theme1" />
    </div>--%>
                <asp:TextBox ID="TextBoxDate" runat="server" MaxLength="25" Width="200px"></asp:TextBox>
            </td>
            <td style="font-weight: bold;" class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxDate" ErrorMessage="Write current date" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" CausesValidation="False" Height="30px" 
                    PostBackUrl="~/FileUpload.aspx" 
                    style="font-family: Georgia; font-weight: 700; color: #FFFFFF; background-color: #0066FF" 
                    Text="Upload Idea" />
            
            </td>
        </tr>
        <tr>
            <td style="text-align: right; font-weight: bold" class="style14">
                &nbsp;</td>
            <td class="style20">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
        </tr>
        <tr>
            <td style="text-align: right; font-weight: bold" class="style14">
                &nbsp;
            </td>
            <td class="style20">
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Style="font-weight: 700;
                    font-family: Georgia;" Text="Submit Idea" Width="132px" 
                    BackColor="#0066FF" ForeColor="White" Height="30px" />
                &nbsp;&nbsp;
                <input id="Reset1" type="reset" value="Start over" style="font-weight: 700; background-color: #0066FF;
                    color: White; font-family: Georgia; height: 30px;" />
                <br />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; font-weight: bold" class="style14">
                &nbsp;</td>
            <td class="style20" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" 
                    ForeColor="#000099"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; font-weight: bold" class="style14">
                &nbsp;
            </td>
            <td class="style20" colspan="2">
                <asp:Label ID="Label4" runat="server" ForeColor="#333300" Text="topic" 
                    Visible="False"></asp:Label>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="text-align: right; font-weight: bold" class="style14">
                &nbsp;</td>
            <td class="style20" colspan="2">
                <asp:Label ID="Label5" runat="server" ForeColor="#333300" Text="details" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; font-weight: bold" class="style14">
                &nbsp;</td>
            <td class="style12" colspan="2">
                <asp:Label ID="Label6" runat="server" ForeColor="#333300" Text="user" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br/><br/>
<br/><br/><br/>
</asp:Content>
