<%@ Page Title="" Language="C#" MasterPageFile="~/Portfolio.Master" AutoEventWireup="true" CodeBehind="QuestionForm.aspx.cs" Inherits="WebApplication1.QuestionForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    <form id="Questions" method="post" >
        <label>First Name:</label><input type="text" id="FirstName" value="FirstName" /><br />
        <label>Last Name:</label><input type="text" id="LastName" value="LastName" /><br />
        <label>Email:</label><input type="email" id="email" value="email" placeholder="name@company.com" /><br /><br />
        <label>Please enter your comment below:</label><br /><input type="textarea" rows="5" value="comment" id="comment" /><br /><br />

        <fieldset>
        <legend>Rate my web-folio:</legend>
        <input type="checkbox" value="1" class="rating" />1<br />
        <input type="checkbox" value="2" class="rating" />2<br />
        <input type="checkbox" value="3" class="rating" />3<br />
        <input type="checkbox" value="4" class="rating" />4<br />
        <input type="checkbox" value="5" class="rating" />5<br />
        </fieldset>
        <input type="button" value="Submit" onclick="ToText()"/>
    </form>
<%{
    
    var IsPost = true;
      
    if (IsPost)
    {
        var firstName = Request["FirstName"];
        var lastName = Request["LastName"];
        var email = Request["Email"];

        var userData = firstName + "," + lastName +
            "," + email + Environment.NewLine;

        var dataFile = Server.MapPath("~/App_Data/data.txt");
        dataFile.Insert(0, userData);
        
    }
 }%>
    
</asp:Content>
