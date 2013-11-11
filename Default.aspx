<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-weight: normal;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3> 
        <div class="auto-style1">
            <strong>Current and Retired Players </strong>
        </div>
    </h3>
    <p> Search by Player Name:&nbsp;
        <asp:TextBox ID="tbTool" runat="server" Width="271px"></asp:TextBox>
    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="150px" Width="882px">
            <Columns>
                <asp:BoundField DataField="FirstName " HeaderText="First Name " SortExpression="FirstName " />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="HomeTown" HeaderText="Home Town" SortExpression="HomeTown" />
                <asp:BoundField DataField="DateOfPlay" HeaderText="Tour Dates" SortExpression="DateOfPlay" />
                <asp:BoundField DataField="Earnings" HeaderText="Earnings" SortExpression="Earnings" />
                <asp:BoundField DataField="CutsMade" HeaderText="Cuts Made" SortExpression="CutsMade" />
                <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
                <asp:BoundField DataField="HighFinish" HeaderText="High Finish" SortExpression="HighFinish" />
                <asp:BoundField DataField="TournamentsPlayed" HeaderText="Tournaments Played" SortExpression="TournamentsPlayed" />
            </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <br />


</asp:Content>
