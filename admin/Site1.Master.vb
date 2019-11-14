Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("uname") Is Nothing Then
            HyperLink2.Visible = False
        Else
            HyperLink2.Visible = True

        End If
    End Sub

End Class