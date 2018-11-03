<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketView.aspx.cs" Inherits="WebApplication1.TicketView" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .Tv_Title {
        
            text-align:center;
            font-size:large;
        
        }
        .Chart1 {
        
            text-align:right;
            margin-Right:100px;
        }
        .GridView {
       
            float:left;        
        }


    </style>
            <p class="Tv_Title">
                Tickets
            </p>
               

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Users] ([UserID], [FirstName], [Email]) VALUES (@UserID, @FirstName, @Email)" SelectCommand="SELECT [UserID], [FirstName], [Email] FROM [Users]" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [Email] = @Email WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource> 
    
    <div class="GridView"> 
    <asp:GridView ID="GridView1"  runat="server" style="margin-top:5%; " BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowFooter="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="UserID" AllowPaging="True" AllowSorting="True" Width="667px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

       </Columns>
            
       
   
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
  
    <div class="Chart1">
    
        <asp:Chart id="Chart1" runat="server" DataSourceID="SqlDataSource3" Height="290px" Width="451px">
        <Series>
            <asp:Series Name="Series1" XValueMember="TicketID" ChartType="Spline"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
       
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT [TicketID] FROM [Tickets]"></asp:SqlDataSource>
       
    </div>
        

    

    


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        

        

    

    


</asp:Content>
