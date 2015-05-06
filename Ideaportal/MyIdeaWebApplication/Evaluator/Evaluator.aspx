<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evaluator.aspx.cs" Inherits="MyIdeaWebApplication.Evaluator.Evaluator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        Idea Porta</h1>
    <h4 class="style1">
        Here is evaluator page</h4>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
            Text="Go Home Page" />
    </p>
    </form>
</body>
</html>
