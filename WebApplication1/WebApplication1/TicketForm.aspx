<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketForm.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>

<h1> Ticketing Form</h1>
    </header>

    <!DOCTYPE html>
<html>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

 input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

#ticketForm{
    margin: 0 15% 0 15%;
}

#IssueDetails {
    width:100%

    }
textarea{
resize:none;

}
</style>
<body>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=mitam.database.windows.net;Initial Catalog=MajorIT;User ID=Stephen" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Email] FROM [Users]"></asp:SqlDataSource>
    
    
<div id="ticketForm">
  <form action="/action_page.php">
    <label for="Email">Your Email:</label>
      <br />

  
      
    <label for="AssetType">Asset Type:</label>
    <select id="AssetType" name="AssetType">
      <option value="Laptop">Laptop</option>
      <option value="Monitor">Monitor</option>
      <option value="Hard Drive">Hard Drive</option>
    </select>
    <br />

      <label for="UrgencyLevel">Urgency Level:</label>
      <br />
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT [UrgencyLevel] FROM [Urgency]"></asp:SqlDataSource>
      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="UrgencyLevel" DataValueField="UrgencyLevel"></asp:DropDownList>
    <br />

        <label for="IssueDetails">Issue Details:</label>
      <br />
    <textarea id="IssueDetails" name="IssueDetails" placeholder="Whats the issue.."></textarea>
      <br />


      
      <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
  
  </form>
</div>

</body>
</html>




</asp:Content>
