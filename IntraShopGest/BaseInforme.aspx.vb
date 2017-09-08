Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Public Class BaseInforme
    Inherits System.Web.UI.Page
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
    Protected Sub BTN_Buscar_Click(sender As Object, e As EventArgs) Handles BTN_Buscar.Click
        ''Dim mpLabel As Label
        ''mpLabel = CType(Master.FindControl("RutUsu"), Label)
        ''If Not mpLabel Is Nothing Then
        ''    LBL_USUARIO.Text = mpLabel.Text
        ''End If
        Dim ParametrosValidados As Integer = 0
        Dim ProcParametros As String = ""
        Try
            If IsDate(Me.TXT_FechaInicial.Text) = True Then
                ProcParametros = ProcParametros + " '" & Me.TXT_FechaInicial.Text & "',"
                Me.TBLEncabezado.Rows(0).Cells(1).Text = Trim(Me.TXT_FechaInicial.Text)
                ParametrosValidados = ParametrosValidados + 1
            Else
                Me.TBLEncabezado.Rows(0).Cells(1).Text = "-"
                Me.LBL_Error.Visible = True
                Me.LBL_Error.Text = "FECHA INICIAL NO ES VÁLIDA"
            End If
            If IsDate(Me.TXT_FechaFinal.Text) = True Then
                ProcParametros = ProcParametros + " '" & Me.TXT_FechaFinal.Text & "',"
                Me.TBLEncabezado.Rows(1).Cells(1).Text = Trim(Me.TXT_FechaFinal.Text)
                ParametrosValidados = ParametrosValidados + 1
            Else
                Me.TBLEncabezado.Rows(1).Cells(1).Text = "-"
                Me.LBL_Error.Visible = True
                Me.LBL_Error.Text = "FECHA FINAL NO ES VÁLIDA"
            End If
            If IsNumeric(Me.TXT_Monto1.Text) = True Then
                ProcParametros = ProcParametros + " '" & Me.TXT_Monto1.Text & "',"
                Me.TBLEncabezado.Rows(0).Cells(3).Text = Me.TXT_Monto1.Text
                ParametrosValidados = ParametrosValidados + 1
            Else
                Me.TBLEncabezado.Rows(0).Cells(3).Text = "-"
                Me.LBL_Error.Visible = True
                Me.LBL_Error.Text = "MONTO 1 NO ES VÁLIDO"
            End If
            If IsNumeric(Me.TXT_Monto2.Text) = True Then
                ProcParametros = ProcParametros + " '" & Me.TXT_Monto2.Text & "',"
                Me.TBLEncabezado.Rows(1).Cells(3).Text = Me.TXT_Monto2.Text
                ParametrosValidados = ParametrosValidados + 1
            Else
                Me.TBLEncabezado.Rows(1).Cells(3).Text = "-"
                Me.LBL_Error.Visible = True
                Me.LBL_Error.Text = "MONTO 2 NO ES VÁLIDO"
            End If
            If DDL_Sucursales.SelectedIndex > -1 Then
                ProcParametros = ProcParametros + " '" & Trim(Me.DDL_Sucursales.SelectedValue) & "',"
                Me.TBLEncabezado.Rows(0).Cells(5).Text = Trim(Me.DDL_Sucursales.SelectedItem.Text)
                ParametrosValidados = ParametrosValidados + 1
            Else
                Me.TBLEncabezado.Rows(0).Cells(5).Text = "-"
                Me.LBL_Error.Visible = True
                Me.LBL_Error.Text = "DEBE SELECCIONAR SUCURSAL"
            End If
            If DDL_Planes.SelectedIndex > -1 Then
                ProcParametros = ProcParametros + " '" & Trim(Me.DDL_Planes.SelectedValue) & "',"
                Me.TBLEncabezado.Rows(1).Cells(5).Text = Trim(Me.DDL_Planes.SelectedItem.Text)
                ParametrosValidados = ParametrosValidados + 1
            Else
                Me.TBLEncabezado.Rows(1).Cells(5).Text = "-"
                Me.LBL_Error.Visible = True
                Me.LBL_Error.Text = "DEBE SELECCIONAR PLAN"
            End If
        Catch ex As Exception
            Me.LBL_Error.Visible = True
            Me.LBL_Error.Text = ex.Message
        End Try
        If ControlParametros(0) = ParametrosValidados Then
            Dim DataDSConsulta As New Data.DataSet
            Try
                DataDSConsulta.Clear()
                Me.Panel_Consulta.Visible = False
                Me.LBL_Error.Visible = False
                Dim Param As String
                Param = ProcParametros.Substring(0, ProcParametros.Length - 1)
                Dim STRConsulta As String = "execute procedure " & Trim(Request.QueryString("pproc")) & " (" & Param & ")"
                Dim DATAConsulta As System.Data.Odbc.OdbcDataAdapter = New System.Data.Odbc.OdbcDataAdapter(STRConsulta, Globales.conn)
                DATAConsulta.Fill(DataDSConsulta, "PRUEBA")

                If DataDSConsulta.Tables(0).Rows(0)(0) = 1 Then
                    Me.Panel_Consulta.Visible = False
                    Me.LBL_Error.Visible = True
                    Me.LBL_Error.Text = DataDSConsulta.Tables(0).Rows(0)(1) ' mensaje de error
                Else
                    DataDSConsulta.Tables(0).Columns.RemoveAt(0)
                    DataDSConsulta.Tables(0).Columns.RemoveAt(0)
                    Me.Panel_Consulta.Visible = True
                    Me.LBL_Error.Visible = False
                    Me.GrillaInforme.DataSource = DataDSConsulta.Tables(0).DefaultView
                    Me.GrillaInforme.DataBind()
                    '**********************************Encabezados
                    Dim ArregloEncabezados As String()
                    ArregloEncabezados = Trim(Request.QueryString("pcabc")).ToString.Split(",")
                    Dim CabeceraColumna As String
                    Dim contador As Integer = 0
                    For Each CabeceraColumna In ArregloEncabezados
                        If contador > 1 Then
                            GrillaInforme.HeaderRow.Cells(contador - 2).Text = CabeceraColumna
                        End If
                        contador = contador + 1
                    Next
                    '**********************************
                End If
            Catch EX5 As Exception
                Me.LBL_Error.Visible = True
                Me.LBL_Error.Text = EX5.Message
            End Try
        Else
            Me.LBL_Error.Visible = True
            Me.LBL_Error.Text = "FALTA COMPLETAR ALGUNOS PARAMETROS"
        End If
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            Me.LBL_Titulo.Text = Request.QueryString("titulo")
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
            ControlParametros(0)
        End If
    End Sub
    Private Function ControlParametros(ByRef CantParam As Integer)
        Try
            Dim CantParametros As Integer
            If Request.QueryString("psucu") = 1 Then
                LlenaDDLSucursales()
                Me.LBL_Sucursal.Visible = True
                Me.DDL_Sucursales.Visible = True
                Me.TBLEncabezado.Rows(0).Cells(5).Text = "-"
                CantParam = CantParam + 1
            End If
            If Request.QueryString("pfec1") = 1 Then
                Me.LBL_FechaInicial.Visible = True
                Me.TXT_FechaInicial.Visible = True
                Me.BTN_CalendarioInicial.Visible = True
                CantParam = CantParam + 1
            End If
            If Request.QueryString("pfec2") = 1 Then
                Me.LBL_FechaFinal.Visible = True
                Me.TXT_FechaFinal.Visible = True
                Me.BTN_CalendarioFinal.Visible = True
                CantParam = CantParam + 1
            End If
            If Request.QueryString("pmon1") = 1 Then
                Me.LBL_Monto1.Visible = True
                Me.TXT_Monto1.Visible = True
                CantParam = CantParam + 1
            End If
            If Request.QueryString("pmon2") = 1 Then
                Me.LBL_Monto2.Visible = True
                Me.TXT_Monto2.Visible = True
                CantParam = CantParam + 1
            End If
            If Request.QueryString("pplan") = 1 Then
                LlenaDDLPlanes()
                Me.LBL_Plan.Visible = True
                Me.DDL_Planes.Visible = True
                CantParam = CantParam + 1
            End If
            Return CantParam
        Catch ex As Exception
        End Try
    End Function
    Private Sub LlenaDDLSucursales()
        Dim DataDSSucursales As New Data.DataSet
        Try
            Dim STRSucursales As String = "execute procedure procw_listador01 ('SUCU')"
            Dim DATASucursales As System.Data.Odbc.OdbcDataAdapter = New System.Data.Odbc.OdbcDataAdapter(STRSucursales, Globales.conn)
            DATASucursales.Fill(DataDSSucursales, "PRUEBA")
            Me.DDL_Sucursales.DataTextField = DataDSSucursales.Tables(0).Columns("column4").ToString()
            Me.DDL_Sucursales.DataValueField = DataDSSucursales.Tables(0).Columns("column3").ToString()
            Me.DDL_Sucursales.DataSource = DataDSSucursales.Tables(0)
            Me.DDL_Sucursales.DataBind()
        Catch EX As Exception
            'MsgBox(EX)
        End Try
    End Sub
    Private Sub LlenaDDLPlanes()
        Dim DataDSPlanes As New Data.DataSet
        Try
            Dim STRPlanes As String = "execute procedure procw_listador02 ('PLAN')"
            Dim DATAPlanes As System.Data.Odbc.OdbcDataAdapter = New System.Data.Odbc.OdbcDataAdapter(STRPlanes, Globales.conn)
            DATAPlanes.Fill(DataDSPlanes, "PRUEBA")
            Me.DDL_Planes.DataTextField = DataDSPlanes.Tables(0).Columns("column4").ToString()
            Me.DDL_Planes.DataValueField = DataDSPlanes.Tables(0).Columns("column3").ToString()
            Me.DDL_Planes.DataSource = DataDSPlanes.Tables(0)
            Me.DDL_Planes.DataBind()
        Catch EX As Exception
            'MsgBox(EX)
        End Try
    End Sub
    Protected Sub BTN_Limpiar_Click(sender As Object, e As EventArgs) Handles BTN_Limpiar.Click
        If Me.TXT_FechaInicial.Visible = True Then
            Me.TXT_FechaInicial.Text = ""
            Me.CalendarInicial.SelectedDate = Nothing
        End If
        If Me.TXT_FechaFinal.Visible = True Then
            Me.TXT_FechaFinal.Text = ""
            Me.CalendarFinal.SelectedDate = Nothing
        End If
        If Me.TXT_Monto1.Visible = True Then
            Me.TXT_Monto1.Text = ""
        End If
        If Me.TXT_Monto2.Visible = True Then
            Me.TXT_Monto2.Text = ""
        End If
        If DDL_Sucursales.Visible = True Then
            DDL_Sucursales.SelectedIndex = 0
        End If
        If DDL_Planes.Visible = True Then
            DDL_Planes.SelectedIndex = 0
        End If
        Me.GrillaInforme.DataSource = Nothing
        Me.GrillaInforme.DataBind()
    End Sub
    Protected Sub BTN_Excel_Click(sender As Object, e As EventArgs) Handles BTN_Excel.Click
        Dim sb As StringBuilder = New StringBuilder()
        Dim sw As IO.StringWriter = New IO.StringWriter(sb)
        Dim htw As HtmlTextWriter = New HtmlTextWriter(sw)
        Dim pagina As Page = New Page
        Dim form As New HtmlForm
        Me.TBLEncabezado.Visible = True
        Me.GrillaInforme.EnableViewState = False
        pagina.EnableEventValidation = False
        pagina.DesignerInitialize()
        pagina.Controls.Add(form)
        form.Controls.Add(Me.LBL_Titulo)
        form.Controls.Add(Me.TBLEncabezado)
        form.Controls.Add(Me.GrillaInforme)
        pagina.RenderControl(htw)
        Response.Clear()
        Response.Buffer = True
        Response.ContentType = "application/vnd.ms-excel"
        Response.AddHeader("Content-Disposition", "attachment;filename=Informe_" & Trim(Me.LBL_Titulo.Text) & ".xls")
        Response.Charset = "UTF-8"
        Response.ContentEncoding = Encoding.Default
        Response.Write(sb.ToString())
        Response.End()
    End Sub
    Protected Sub CalendarFinal_DayRender(sender As Object, e As DayRenderEventArgs) Handles CalendarFinal.DayRender
        e.Day.IsSelectable = e.Day.Date >= CalendarInicial.SelectedDate
    End Sub
    Protected Sub GrillaInforme_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GrillaInforme.RowDataBound
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            Dim i As Integer
            Dim CantColumnas As Integer = e.Row.Cells.Count
            For i = 0 To CantColumnas - 1
                If IsNumeric(e.Row.Cells(i).Text) = True Then 'REVISO SI ES ENTERO O DECIMAL PARA DEFINIR FORMATO DE COLUMNA
                    Dim Valor As String = CType(e.Row.Cells(i).Text, Integer)
                    If e.Row.Cells(i).Text = Valor Then
                        'e.Row.Cells(i).Text = String.Format("{0:N0}", CDbl(e.Row.Cells(i).Text))
                    Else
                        'e.Row.Cells(i).Text = String.Format("{0:###,###,###,##0.0#}", CDbl(e.Row.Cells(i).Text))
                        e.Row.Cells(i).Text = String.Format("{0:N2}", CDbl(e.Row.Cells(i).Text))
                    End If
                    ''If VarType(e.Row.Cells(i).Text) = vbInteger Then
                    ''    e.Row.Cells(i).Text = String.Format("{0:N0}", CDbl(e.Row.Cells(i).Text))
                    ''ElseIf VarType(e.Row.Cells(i).Text) = vbDecimal Then
                    ''    e.Row.Cells(i).Text = String.Format("{0:###,###,###,##0.##}", CDbl(e.Row.Cells(i).Text))
                    ''End If
                    e.Row.Cells(i).HorizontalAlign = HorizontalAlign.Right
                    End If
            Next
        End If
    End Sub
End Class