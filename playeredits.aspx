<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="playeredits.aspx.vb" Inherits="playeredits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        text-align: center;
    }
        .auto-style8 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="auto-style7">&nbsp;<span class="auto-style8">Add Player Profiles
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
        </span> </h2>
    <p class="auto-style7">
        <asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="Id" 
            DataSourceID="SqlDataSource1" 
            Height="50px" 
            Width="373px"
            PageSize="52"
            Gridlines="None"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr" DefaultMode="Insert">
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
                <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowInsertButton="True" ShowDeleteButton="True" />
            </Fields>

<PagerStyle CssClass="pgr"></PagerStyle>
        </asp:DetailsView>
    </p>
    <p class="auto-style7">&nbsp;</p>
</asp:Content>

