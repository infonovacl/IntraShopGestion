Public Class Blank
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Dim DATADSMenuN1 As New Data.DataSet
            DATADSMenuN1.Clear()
            Dim STRMenuN1 As String = "execute procedure procw_cons_menu_cab()"
            Dim DATAMenuN1 As System.Data.Odbc.OdbcDataAdapter = New System.Data.Odbc.OdbcDataAdapter(STRMenuN1, Globales.conn)
            DATAMenuN1.Fill(DATADSMenuN1, "PRUEBA")
            Dim panelmenu As Menu
            panelmenu = Master.FindControl("Menu1")
            panelmenu.Visible = True
            For Each row In DATADSMenuN1.Tables(0).Rows
                Dim menuItem As New MenuItem()
                With menuItem
                    .Value = row("column1").ToString
                    .Text = row("column3").ToString
                    .NavigateUrl = ""
                    '.Selected =
                End With
                panelmenu.Items.Add(menuItem)
                Dim DATADSMenuN2 As New Data.DataSet
                DATADSMenuN2.Clear()
                Dim STRMenuN2 As String = "execute procedure procw_cons_menu_n2(" & row("column1").ToString & ")"
                Dim DATAMenuN2 As System.Data.Odbc.OdbcDataAdapter = New System.Data.Odbc.OdbcDataAdapter(STRMenuN2, Globales.conn)
                DATAMenuN2.Fill(DATADSMenuN2, "N2")
                For Each rowN2 In DATADSMenuN2.Tables(0).Rows
                    Dim menuItemN2 As New MenuItem()
                    With menuItemN2
                        .Value = rowN2("column3").ToString
                        .Text = rowN2("column5").ToString
                        .NavigateUrl = ""
                        '.Selected =
                    End With
                    menuItem.ChildItems.Add(menuItemN2)
                Next
            Next
        End If

    End Sub

End Class