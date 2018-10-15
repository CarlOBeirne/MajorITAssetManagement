<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketForm.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<h1>Ticketing Form</h1>

    <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
    <br />


    <asp:Label ID="Label2" runat="server" Text="Asset Type"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    <br />


    <asp:Label ID="Label3" runat="server" Text="Urgency Level"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
    <br />

    <asp:Label ID="Label4" runat="server" Text="Issue Details"></asp:Label>
    <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>


</asp:Content>
