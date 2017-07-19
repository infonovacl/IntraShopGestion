Public Class Maestro
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False And Page.User.Identity.IsAuthenticated = False Then
            'Response.Write("<script>window.alert('MENSAJE1');</script>")
            'Page.User.Identity.IsAuthenticated = False
            ' Me.Panel_Login.Visible = False
            ' Me.Panel_menu.Visible = False
        ElseIf IsPostBack = False And Page.User.Identity.IsAuthenticated = True Then ' POSTBACK DESDE LOGIN
            'Response.Redirect("Cliente.aspx", "_self")
            'Response.Write("<script>window.alert('MENSAJE2');</script>")
            Me.LBL_Usuario.Text = Session("nombreusuario")
            Me.LBL_CTienda.Text = Session("codtienda")
            Me.LBL_Caja.Text = Session("caja")
            Me.LBL_NTienda.Text = Session("nombretienda")
            Me.LBL_RUsu.Text = Session("usuario")
        ElseIf IsPostBack = True Then
            ' Response.Write("<script>window.alert('POST BACK TRU');</script>")
        End If
    End Sub

End Class