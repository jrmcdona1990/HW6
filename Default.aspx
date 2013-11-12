<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-weight: normal;
        }
        .auto-style2 {
            text-decoration: underline;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="auto-style1">
            <h2>
            <strong><span class="auto-style2">Current and Retired Players</span> </strong>
            </h2>
     
        </div>
    <p> Search by Player Name:&nbsp;
        <asp:TextBox ID="tbTool" runat="server" Width="271px"></asp:TextBox>
    </p>
        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AutoGenerateColumns="False" 
            DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" 
            Height="150px" 
            Width="882px" 
            AllowSorting="True"
            PageSize="52"
            Gridlines="None"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="FirstName " HeaderText="First Name " SortExpression="FirstName " />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="HomeTown" HeaderText="Home Town" SortExpression="HomeTown" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="addplayers.aspx?Id={0}" Text="Player Details " />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <br />


</asp:Content>
