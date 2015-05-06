<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Secured.aspx.cs" Inherits="MyIdeaWebApplication.Secured" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            Secured page</h1>
        <br />
        <br />
    
        Here you will see some confidencial data..........!!!!<br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Lime" 
            NavigateUrl="http://localhost:50745/asp.netwebadminfiles/security/users/manageUsers.aspx">HyperLink</asp:HyperLink>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
            Text="Go Home page" />
    </div>
    </form>
</body>
</html>
