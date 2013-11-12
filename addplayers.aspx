<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addplayers.aspx.vb" Inherits="addplayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
    <style type="text/css">
        .auto-style7 {
            margin-left: 160px;
        }
        .auto-style8 {}
        .auto-style9 {}
        .auto-style10 {
            text-decoration: underline;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <span style="text-align: center">

    <h2 class="auto-style11"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style8"><span style="text-align: center"><span class="auto-style9"><span class="auto-style10">Player Profiles</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></h2>
     <p class="auto-style7">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Table] ([FirstName ], [LastName], [HomeTown], [DateOfPlay], [Earnings], [CutsMade], [Wins], [HighFinish], [TournamentsPlayed]) VALUES (@FirstName_, @LastName, @HomeTown, @DateOfPlay, @Earnings, @CutsMade, @Wins, @HighFinish, @TournamentsPlayed)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [FirstName ] = @FirstName_, [LastName] = @LastName, [HomeTown] = @HomeTown, [DateOfPlay] = @DateOfPlay, [Earnings] = @Earnings, [CutsMade] = @CutsMade, [Wins] = @Wins, [HighFinish] = @HighFinish, [TournamentsPlayed] = @TournamentsPlayed WHERE [Id] = @original_Id">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName_" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="HomeTown" Type="String" />
                <asp:Parameter Name="DateOfPlay" Type="String" />
                <asp:Parameter Name="Earnings" Type="String" />
                <asp:Parameter Name="CutsMade" Type="Int32" />
                <asp:Parameter Name="Wins" Type="Int32" />
                <asp:Parameter Name="HighFinish" Type="Int32" />
                <asp:Parameter Name="TournamentsPlayed" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName_" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="HomeTown" Type="String" />
                <asp:Parameter Name="DateOfPlay" Type="String" />
                <asp:Parameter Name="Earnings" Type="String" />
                <asp:Parameter Name="CutsMade" Type="Int32" />
                <asp:Parameter Name="Wins" Type="Int32" />
                <asp:Parameter Name="HighFinish" Type="Int32" />
                <asp:Parameter Name="TournamentsPlayed" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;<asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AllowPaging="True" 
            AutoGenerateRows="False" 
            DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" 
            Height="50px" 
            Width="467px"
            Gridlines="None"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
            <Fields>
                <asp:BoundField DataField="FirstName " HeaderText="First Name " SortExpression="FirstName " />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="HomeTown" HeaderText="Home Town" SortExpression="HomeTown" />
                <asp:BoundField DataField="DateOfPlay" HeaderText="Date Of Play" SortExpression="DateOfPlay" />
                <asp:BoundField DataField="Earnings" HeaderText="Earnings" SortExpression="Earnings" />
                <asp:BoundField DataField="CutsMade" HeaderText="Cuts Made" SortExpression="CutsMade" />
                <asp:BoundField DataField="Wins" HeaderText="Wins" SortExpression="Wins" />
                <asp:BoundField DataField="HighFinish" HeaderText="High Finish" SortExpression="HighFinish" />
                <asp:BoundField DataField="TournamentsPlayed" HeaderText="Tournaments Played" SortExpression="TournamentsPlayed" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>

<PagerStyle CssClass="pgr"></PagerStyle>
        </asp:DetailsView>
         <span class="auto-style8"><strong style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
         </p>

</asp:Content>

