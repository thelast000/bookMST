Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim STRCON As String = "Data Source=.\SQLEXPRESS;Initial Catalog=book;Integrated Security=True"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con As New SqlConnection
        Dim com As New SqlCommand
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet

        con.ConnectionString = STRCON
        con.Open()
        com.Connection = con
        com.CommandText = "SELECT * FROM admin where uname=@uname and pass=@pass and utype=@utype"


        com.Parameters.AddWithValue("@uname", userid.Text)
        com.Parameters.AddWithValue("@pass", upass.Text)
        com.Parameters.AddWithValue("@utype", utype.SelectedValue)


        da.SelectCommand = com
        da.Fill(ds)
        con.Close()

        If ds.Tables(0).Rows.Count > 0 Then
            Session("uname") = ds.Tables(0).Rows(0)("uname").ToString
            If String.Compare(ds.Tables(0).Rows(0)("utype").ToString, "admin") = 0 Then
                'Response.Write("admin")
                Response.Redirect("home.aspx")
            ElseIf String.Compare(ds.Tables(0).Rows(0)("utype").ToString, "user") = 0 Then
                'Response.Write("user")
                Response.Redirect("~/user/index.aspx")
            End If
        Else
            errmsg.Text = "Incorrect Username or Password"
        End If
    End Sub
End Class