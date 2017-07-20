Public Class Blank
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim panelmenu As Menu
        panelmenu = Master.FindControl("Menu1")
        panelmenu.Visible = True
    End Sub

End Class