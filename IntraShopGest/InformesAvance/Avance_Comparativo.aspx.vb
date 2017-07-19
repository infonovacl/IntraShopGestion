Public Class Avance_Comparativo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BTN_CalendarioInicial_Click(sender As Object, e As ImageClickEventArgs) Handles BTN_CalendarioInicial.Click
        If Me.CalendarInicial.Visible = False Then
            Me.CalendarInicial.Visible = True
            Me.CalendarFinal.Visible = False
        Else
            Me.CalendarInicial.Visible = False
        End If
    End Sub

    Protected Sub CalendarInicial_SelectionChanged(sender As Object, e As EventArgs) Handles CalendarInicial.SelectionChanged
        Me.TXT_FechaInicial.Text = CalendarInicial.SelectedDate
        CalendarInicial.Visible = False
        Me.BTN_CalendarioInicial.Enabled = True
    End Sub

    Protected Sub BTN_CalendarioFinal_Click(sender As Object, e As ImageClickEventArgs) Handles BTN_CalendarioFinal.Click
        If Me.CalendarFinal.Visible = False Then
            Me.CalendarFinal.Visible = True
            Me.CalendarInicial.Visible = False
        Else
            Me.CalendarFinal.Visible = False
        End If
    End Sub
    Protected Sub CalendarFinal_SelectionChanged(sender As Object, e As EventArgs) Handles CalendarFinal.SelectionChanged
        Me.TXT_FechaFinal.Text = CalendarFinal.SelectedDate
        CalendarFinal.Visible = False
        Me.BTN_CalendarioFinal.Enabled = True
    End Sub
End Class