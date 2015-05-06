<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Scrolling bar.aspx.cs" Inherits="MyIdeaWebApplication.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    
    <div style="float: left; background-color: #990000; font-weight: bold; width: 900px;
        height: 25px; overflow: hidden;">
        <marquee behavior="scroll" direction="left" onmouseout="this.start();" onmouseover="this.stop();"
            scrollamount="1" scrolldelay="10" truespeed="">
		» <a href="TopIdea.aspx" style="color:#fff;">Top Ideas</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	» <a href="RcntIdeaU.aspx" style="color:#fff;">Recent Submitted Ideas</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	» <a href="StatusEval.aspx" style="color:#fff;">See Evaluated Idea</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	» <a href="Gallery.aspx" style="color:#fff;">Idea Gallery</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	» <a href="FileUpload.aspx" style="color:#fff;">Upload Idea by Submission form</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</marquee>      
    </div>
</asp:Content>
