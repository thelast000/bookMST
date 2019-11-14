Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim STRCON As String = "Data Source=.\SQLEXPRESS;Initial Catalog=book;Integrated Security=True"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uname") Is Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con As New SqlConnection
        Dim com As New SqlCommand

        con.ConnectionString = STRCON
        con.Open()
        com.Connection = con
        com.CommandText = "INSERT INTO bookmst(bname, bprice, author) VALUES (@bname, @bprice, @author)"

        com.Parameters.AddWithValue("@bname", bname.Text)
        com.Parameters.AddWithValue("@bprice", bprice.Text)
        com.Parameters.AddWithValue("@author", author.Text)

        com.ExecuteNonQuery()
        con.Close()
        Response.Redirect("home.")


    End Sub
End Class