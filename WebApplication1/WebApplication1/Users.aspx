<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication1.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class ="row">

        <div class="header" style="text-align:center;">

            <h1 >Users</h1>
        
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [UserName], [Email], [EmailConfirmed]) VALUES (@Id, @UserName, @Email, @EmailConfirmed)" SelectCommand="SELECT [Id], [UserName], [Email], [EmailConfirmed] FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [UserName] = @UserName, [Email] = @Email, [EmailConfirmed] = @EmailConfirmed WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>

            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
               <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div class="clearfix" style="clear: both"></div>


        <div class="userList" style="margin-left: 10%">
            <asp:Button ID="Button1" runat="server" Text="Add User" />
            <asp:GridView ID="XmlGridView" runat="server" style="margin-top:5%; width: 90%;" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowFooter="True" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#DCDCDC" />
              

                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#555555" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

        </div>
            


    </div>

</asp:Content>
