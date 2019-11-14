Public Class logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uname") Is Nothing Then
            Session.Abandon()
            Response.Redirect("login.aspx")
        Else
            Response.Redirect("login.aspx")

        End If
    End Sub

End Class