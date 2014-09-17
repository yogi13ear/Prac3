<%@ Page Title="" Language="C#" MasterPageFile="~/Portfolio.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Welcome To My Web Folio</h1>

    <p>If you have any questions, click the button below:</p>
    <asp:Button class="button" runat="server" Text="Q&A" 
        PostBackUrl="~/QuestionForm.aspx" onclick="Unnamed1_Click1" />
</asp:Content>
