Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uname") Is Nothing Then
            Response.Redirect("~/admin/login.aspx")
        End If


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        SqlDataSource1.SelectCommand = "SELECT * FROM bookmst WHERE author='" + DropDownList1.SelectedValue + "'"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        SqlDataSource1.SelectCommand = "SELECT * FROM bookmst WHERE bprice between " + min.Text + " AND " + max.Text
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If DropDownList2.SelectedValue = 1 Then
            SqlDataSource1.SelectCommand = "SELECT * FROM bookmst ORDER BY CAST(bprice AS int) desc"
        ElseIf DropDownList2.SelectedValue = 0 Then
            SqlDataSource1.SelectCommand = "SELECT * FROM bookmst ORDER BY CAST(bprice AS int)"


        End If
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        SqlDataSource1.SelectCommand = "SELECT * FROM bookmst"
    End Sub
End Class