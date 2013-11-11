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

    <h2 class="auto-style11"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8"><span style="text-align: center"><span class="auto-style9"><span class="auto-style10">Edit Player Profiles</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></h2>
     <p class="auto-style7">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [FirstName ] = @original_FirstName_ AND [LastName] = @original_LastName AND [HomeTown] = @original_HomeTown AND [DateOfPlay] = @original_DateOfPlay AND (([Earnings] = @original_Earnings) OR ([Earnings] IS NULL AND @original_Earnings IS NULL)) AND (([CutsMade] = @original_CutsMade) OR ([CutsMade] IS NULL AND @original_CutsMade IS NULL)) AND (([Wins] = @original_Wins) OR ([Wins] IS NULL AND @original_Wins IS NULL)) AND (([HighFinish] = @original_HighFinish) OR ([HighFinish] IS NULL AND @original_HighFinish IS NULL)) AND (([TournamentsPlayed] = @original_TournamentsPlayed) OR ([TournamentsPlayed] IS NULL AND @original_TournamentsPlayed IS NULL))" InsertCommand="INSERT INTO [Table] ([FirstName ], [LastName], [HomeTown], [DateOfPlay], [Earnings], [CutsMade], [Wins], [HighFinish], [TournamentsPlayed]) VALUES (@FirstName_, @LastName, @HomeTown, @DateOfPlay, @Earnings, @CutsMade, @Wins, @HighFinish, @TournamentsPlayed)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [FirstName ] = @FirstName_, [LastName] = @LastName, [HomeTown] = @HomeTown, [DateOfPlay] = @DateOfPlay, [Earnings] = @Earnings, [CutsMade] = @CutsMade, [Wins] = @Wins, [HighFinish] = @HighFinish, [TournamentsPlayed] = @TournamentsPlayed WHERE [Id] = @original_Id AND [FirstName ] = @original_FirstName_ AND [LastName] = @original_LastName AND [HomeTown] = @original_HomeTown AND [DateOfPlay] = @original_DateOfPlay AND (([Earnings] = @original_Earnings) OR ([Earnings] IS NULL AND @original_Earnings IS NULL)) AND (([CutsMade] = @original_CutsMade) OR ([CutsMade] IS NULL AND @original_CutsMade IS NULL)) AND (([Wins] = @original_Wins) OR ([Wins] IS NULL AND @original_Wins IS NULL)) AND (([HighFinish] = @original_HighFinish) OR ([HighFinish] IS NULL AND @original_HighFinish IS NULL)) AND (([TournamentsPlayed] = @original_TournamentsPlayed) OR ([TournamentsPlayed] IS NULL AND @original_TournamentsPlayed IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_FirstName_" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_HomeTown" Type="String" />
                <asp:Parameter Name="original_DateOfPlay" Type="String" />
                <asp:Parameter Name="original_Earnings" Type="String" />
                <asp:Parameter Name="original_CutsMade" Type="Int32" />
                <asp:Parameter Name="original_Wins" Type="Int32" />
                <asp:Parameter Name="original_HighFinish" Type="Int32" />
                <asp:Parameter Name="original_TournamentsPlayed" Type="Int32" />
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
                <asp:Parameter Name="original_FirstName_" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_HomeTown" Type="String" />
                <asp:Parameter Name="original_DateOfPlay" Type="String" />
                <asp:Parameter Name="original_Earnings" Type="String" />
                <asp:Parameter Name="original_CutsMade" Type="Int32" />
                <asp:Parameter Name="original_Wins" Type="Int32" />
                <asp:Parameter Name="original_HighFinish" Type="Int32" />
                <asp:Parameter Name="original_TournamentsPlayed" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView 
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
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
         </p>
    <h3 class="auto-style7">&nbsp;</h3>
    <h3 class="auto-style7"><span class="auto-style8"><strong style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></h3>

</asp:Content>

