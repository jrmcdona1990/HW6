
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged
        ' Declare a variable
        Dim searchWord As String
        ' Set the variable equal to the SQL statement to perform the search
        searchWord = "Select * From [Table] where (LastName Like '%" + tbTool.Text.ToString() + "%') or (FirstName Like '%" + tbTool.Text.ToString() + "%') or (FirstName + ' ' + LastName Like '%" + tbTool.Text.ToString() + "%')"
        ' Apply the variable (SQL statement) to the data source
        SqlDataSource1.SelectCommand = searchWord

    End Sub
End Class
