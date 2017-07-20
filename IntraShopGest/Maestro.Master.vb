Public Class Maestro
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False And Page.User.Identity.IsAuthenticated = False Then

        ElseIf IsPostBack = False And Page.User.Identity.IsAuthenticated = True Then ' POSTBACK DESDE LOGIN    
            Me.Menu1.Visible = True
            If Me.LBL_Usuario.Text = "" Then
                If Session("usuario") Is System.DBNull.Value Then
                Else
                    Me.LBL_Usuario.Text = Session("nombreusuario")
                    Me.CTienda.Text = Session("codtienda")
                    Me.Caja.Text = Session("caja")
                    Me.LBL_NTienda.Text = Session("nombretienda")
                    Me.RutUsu.Text = Session("usuario")
                End If
            Else
            End If
        ElseIf IsPostBack = True Then
                ' Response.Write("<script>window.alert('POST BACK TRU');</script>")
            End If
    End Sub

End Class