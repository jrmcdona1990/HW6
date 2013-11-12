
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Label1_Load(sender As Object, e As EventArgs) Handles Label1.Load
        Label1.Text = "Today Is " & DateTime.Now.ToLongDateString
    End Sub
End Class

