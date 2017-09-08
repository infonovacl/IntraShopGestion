<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestro.Master" CodeBehind="BaseInforme.aspx.vb" Inherits="IntraShopGest.BaseInforme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <table class="auto-style9" id="TBL_Encabezado" runat="server">
    <tr>
        <td class="auto-style3" colspan="12">
                <asp:Label ID="LBL_Titulo" runat="server" CssClass="etiquetas_login_grande" TabIndex="92"></asp:Label>
                </td>
    </tr>
    <tr>
        <td class="auto-style29" colspan="3">
            <asp:Label ID="Label22" runat="server" CssClass="etiquetasimportante" Text="Ingrese Parámetros :"></asp:Label>
        </td>
        <td class="auto-style29" colspan="8">
                <asp:UpdatePanel ID="UpdatePanel14" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="LBL_Error" runat="server" CssClass="etiquetasmensaje"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
                </td>
        <td class="auto-style11">
            <asp:Label ID="LBL_USUARIO" runat="server" CssClass="etiquetas"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style37">
            </td>
        <td class="auto-style44">
                                                    <asp:Label ID="LBL_FechaInicial" runat="server" CssClass="etiquetas" Text="Fecha Inicial" Visible="False"></asp:Label>
                                                </td>
        <td class="auto-style39">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaInicial" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="10" Width="73px" Visible="False"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style40">
            
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="BTN_CalendarioInicial" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" Width="16px" Visible="False" />
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </td>
        <td class="auto-style41">
            
            </td>
        <td class="auto-style13">
            
                                                    <asp:Label ID="LBL_Monto1" runat="server" CssClass="etiquetas" Text="Monto 1" Visible="False"></asp:Label>
            
        </td>
        <td class="auto-style15">
            
                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TXT_Monto1" runat="server" ClientIDMode="Static" CssClass="cajastextonumerico" MaxLength="11" Width="80px" Visible="False"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
            
        </td>
        <td class="auto-style42">
            
            </td>
        <td class="auto-style43">
            
                                                    <asp:Label ID="LBL_Sucursal" runat="server" CssClass="etiquetas" Text="Sucursal" Visible="False"></asp:Label>
            
        </td>
        <td class="auto-style44">
            <asp:DropDownList ID="DDL_Sucursales" runat="server" Visible="False" Width="200px">
            </asp:DropDownList>
        </td>
        <td class="auto-style29">
            <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                <ContentTemplate>
                    <asp:Button ID="BTN_Buscar" runat="server" CssClass="botones" Text="BUSCAR" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style29">
                    <asp:Button ID="BTN_Excel" runat="server" CssClass="botones" Text="EXCEL" />
        </td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style35">
                                                    <asp:Label ID="LBL_FechaFinal" runat="server" CssClass="etiquetas" Text="Fecha Final" Visible="False"></asp:Label>
                                                </td>
        <td style="width: 102px">
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaFinal" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="10" Width="73px" Visible="False"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style8">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="BTN_CalendarioFinal" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" Visible="False" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style14">
                                                    <asp:Label ID="LBL_Monto2" runat="server" CssClass="etiquetas" Text="Monto 2" Visible="False"></asp:Label>
        </td>
        <td class="auto-style16">
                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TXT_Monto2" runat="server" ClientIDMode="Static" CssClass="cajastextonumerico" MaxLength="11" Width="80px" Visible="False"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
        </td>
        <td class="auto-style28">
            &nbsp;</td>
        <td class="auto-style32">
            
                                                    <asp:Label ID="LBL_Plan" runat="server" CssClass="etiquetas" Text="Plan" Visible="False"></asp:Label>
            
        </td>
        <td class="auto-style35">
                    <asp:DropDownList ID="DDL_Planes" runat="server" Visible="False" Width="200px">
                    </asp:DropDownList>
                        </td>
        <td class="auto-style52">
            <asp:UpdateProgress ID="UP1" runat="server" AssociatedUpdatePanelID="UpdatePanel10" DisplayAfter="20" DynamicLayout="False" Width="30px">
                <ProgressTemplate>
                            &nbsp;<img class="auto-style36" src="Imagenes/cargando_popup_negro.gif" />                           
                        </ProgressTemplate>
            </asp:UpdateProgress>
        </td>
        <td>
                    <asp:Button ID="BTN_Limpiar" runat="server" CssClass="botones" Text="LIMPIAR" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="12">
            <asp:Label ID="Label23" runat="server" CssClass="etiquetasimportante" Text="DETALLE"></asp:Label>
        </td>
    </tr>
</table>

            <div id="CalendarFin" class="auto-style6">
                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="CalendarFinal" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="16px" ShowGridLines="True" Visible="False" Width="187px" CssClass="auto-style12">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            
            <div id="CalendarIni" class="auto-style4">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="CalendarInicial" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="63px" ShowGridLines="True" Visible="False" Width="187px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

    <table id="TBL_GrillaInforme" runat="server" class="auto-style23">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">
                <asp:UpdatePanel ID="UPGrilla" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Panel ID="Panel_Consulta" runat="server" Height="360px" ScrollBars="Vertical" Width="930px" CssClass="panel_tab">
                            <div class="auto-style45">
                                <asp:Table ID="TBLEncabezado" runat="server" ForeColor="Black" GridLines="Both" Height="45px" style="font-size: 10pt" Visible="False" Width="692px">
                                    <asp:TableRow runat="server" BorderStyle="Solid" BorderWidth="5px" ForeColor="Black" HorizontalAlign="Left">
                                        <asp:TableCell runat="server" BackColor="#FFFFCC" Font-Bold="True">Fecha Inicial :</asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="#FFFFCC" Font-Bold="True">Monto 1 :</asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="#FFFFCC" Font-Bold="True">Sucursal :</asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" BackColor="#FFFFCC" Font-Bold="True">Fecha Final :</asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="#FFFFCC" Font-Bold="True">Monto 2:</asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                        <asp:TableCell runat="server" BackColor="#FFFFCC" Font-Bold="True">Plan :</asp:TableCell>
                                        <asp:TableCell runat="server" Font-Bold="False"></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                            <asp:GridView ID="GrillaInforme" runat="server" CssClass="grillas_tab" Width="910px">
                            </asp:GridView>
                        </asp:Panel>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="BTN_Buscar" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">

    .auto-style4 {
        width: 8px;
        position: absolute;
        left: 252px;
        top: 54px;
        height: 9px;
    }
    .auto-style5 {
        width: 110px;
    }
    .auto-style6 {
        width: 11px;
        position: absolute;
        left: 252px;
        top: 81px;
        height: 2px;
    }
    .auto-style8 {
        width: 77px;
    }
    .auto-style9 {
        height: 13px;
    }
    .auto-style11 {
        height: 23px;
        width: 254px;
    }
    .auto-style12 {
        height: 23px;
        width: 247px;
    }
    .auto-style13 {
        height: 23px;
        width: 138px;
    }
    .auto-style14 {
        width: 138px;
    }
    .auto-style15 {
        height: 23px;
        width: 253px;
    }
    .auto-style16 {
        width: 253px;
    }
    .auto-style19 {
        width: 250px;
    }
    
        .auto-style22 {
            width: 220px;
        }
        .auto-style23 {
            width: 100%;
        }
        .auto-style24 {
            width: 24px;
        }
        .auto-style25 {
            width: 911px;
        }
        .auto-style28 {
            width: 88px;
        }
        .auto-style29 {
            height: 23px;
        }
        .auto-style32 {
            width: 213px;
        }
        .auto-style35 {
            width: 210px;
        }

        .auto-style36 {
            width: 19px;
            height: 19px;
        }
        .auto-style37 {
            width: 220px;
            height: 23px;
        }
        .auto-style39 {
            width: 102px;
            height: 23px;
        }
        .auto-style40 {
            width: 77px;
            height: 23px;
        }
        .auto-style41 {
            width: 110px;
            height: 23px;
        }
        .auto-style42 {
            width: 88px;
            height: 23px;
        }
        .auto-style43 {
            width: 213px;
            height: 23px;
        }
        .auto-style44 {
            width: 210px;
            height: 23px;
        }

        .auto-style45 {
            position: absolute;
            left: 790px;
            top: 80px;
            width: 39px;
        }
        .auto-style46 {
            position: absolute;
            left: 990px;
            top: 46px;
            width: 187px;
            height: 52px;
        }

    </style>
</asp:Content>

