Public Class Blank
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            LlenaMenu()
        End If
    End Sub
    Protected Friend Sub LlenaMenu()
        Dim panelmenu As Menu
        panelmenu = Master.FindControl("Menu1")
        panelmenu.Visible = True
        Dim DATADSMenuN1 As New Data.DataSet
        DATADSMenuN1.Clear()
        Dim STRMenuN1 As String = "execute procedure procw_cons_menu_cab()"
        Dim DATAMenuN1 As System.Data.Odbc.OdbcDataAdapter = New System.Data.Odbc.OdbcDataAdapter(STRMenuN1, Globales.conn)
        DATAMenuN1.Fill(DATADSMenuN1, "PRUEBA")
        For Each row In DATADSMenuN1.Tables(0).Rows
            Dim menuItem As New MenuItem()
            With menuItem
                .Value = row("column1").ToString
                .Text = row("column3").ToString
                .Selectable = False
                '.NavigateUrl = "BaseInforme.aspx"
                '.Selected =
                'menu.Nodes.Item(0).ChildNodes.Item(1).ChildNodes.Item(2).NavigateUrl = "javascript:my_window=window.open('/Mantenciones/Mantenciones_Adicionales.aspx?rut=" & Trim(Me.TXT_ConsultaRutCliente.Text) & "','Adicionales','top=260,width=770,height=290,left=220',scrollbars='NO',resizable='NO');my_window.focus()"
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
                    .NavigateUrl = "BaseInforme.aspx?titulo=" & Trim(rowN2("column5").ToString) & "&psucu=" & Trim(rowN2("column7").ToString) & "&pfec1=" & Trim(rowN2("column8").ToString) & "&pfec2=" & Trim(rowN2("column9").ToString) & "&pmon1=" & Trim(rowN2("column10").ToString) & "&pmon2=" & Trim(rowN2("column11").ToString) & "&pplan=" & Trim(rowN2("column12").ToString) & "&pproc=" & Trim(rowN2("column13").ToString) & "&pcabc=" & Trim(rowN2("column14").ToString) & ""
                    '.Selectable = False                   
                End With
                menuItem.ChildItems.Add(menuItemN2)
            Next
        Next
    End Sub
End Class