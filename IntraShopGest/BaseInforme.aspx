<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestro.Master" CodeBehind="BaseInforme.aspx.vb" Inherits="IntraShopGest.Avance_Comparativo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <table class="auto-style44">
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style40"></td>
        <td class="auto-style20" colspan="6">
                <asp:Label ID="LBL_Titulo" runat="server" CssClass="etiquetas_login_grande" TabIndex="92"></asp:Label>
                </td>
        <td style="height: 25px">
            <asp:Label ID="LBL_CodSucursal" runat="server" CssClass="etiquetas"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style38"></td>
        <td class="auto-style43"></td>
        <td class="auto-style9">
                </td>
        <td class="auto-style32">
                </td>
        <td class="auto-style29">
                &nbsp;</td>
        <td class="auto-style10">
                &nbsp;</td>
        <td class="auto-style18">
                &nbsp;</td>
        <td class="auto-style25">
                &nbsp;</td>
        <td class="auto-style11">
            <asp:Label ID="LBL_USUARIO" runat="server" CssClass="etiquetas"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style39"></td>
        <td class="auto-style42">
                                                    <asp:Label ID="Label16" runat="server" CssClass="etiquetas" Text="Fecha Inicial"></asp:Label>
                                                </td>
        <td style="width: 102px; height: 23px">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaInicial" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style30">
            
            <div id="CalendarIni" class="auto-style4">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="CalendarInicial" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="90px" ShowGridLines="True" Visible="False" Width="205px">
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
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="BTN_CalendarioInicial" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" Width="16px" />
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </td>
        <td class="auto-style27">
            
            &nbsp;</td>
        <td style="width: 256px; height: 23px">
            
                                                    <asp:Label ID="Label18" runat="server" CssClass="etiquetas" Text="Monto 1"></asp:Label>
            
        </td>
        <td class="auto-style15">
            
                    <asp:TextBox ID="TXT_Monto1" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
            
        </td>
        <td class="auto-style23">
            
            &nbsp;</td>
        <td style="height: 23px">
            <div id="CalendarFin" class="auto-style6">
                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="CalendarFinal" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="90px" ShowGridLines="True" Visible="False" Width="205px" CssClass="auto-style12">
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
            <asp:Button ID="BTN_Buscar" runat="server" CssClass="botones" Text="BUSCAR" />
        </td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style35">
                                                    <asp:Label ID="Label17" runat="server" CssClass="etiquetas" Text="Fecha Final"></asp:Label>
                                                </td>
        <td style="width: 102px">
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaFinal" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style31">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="BTN_CalendarioFinal" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style28">
            &nbsp;</td>
        <td style="width: 256px">
                                                    <asp:Label ID="Label19" runat="server" CssClass="etiquetas" Text="Monto 2"></asp:Label>
        </td>
        <td class="auto-style16">
                    <asp:TextBox ID="TXT_Monto2" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
        </td>
        <td class="auto-style24">
            &nbsp;</td>
        <td>
            <asp:Button ID="BTN_Limpiar" runat="server" CssClass="botones" Text="LIMPIAR" />
        </td>
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
        position: absolute;
        left: 304px;
        top: 237px;
        width: 2px;
        height: 4px;
    }
    .auto-style6 {
        position: absolute;
        left: 560px;
        top: 249px;
        width: 1%;
        height: 5px;
    }
        .auto-style9 {
            width: 102px;
            height: 3px;
        }
        .auto-style10 {
            width: 256px;
            height: 3px;
        }
        .auto-style11 {
            height: 3px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style15 {
            height: 23px;
            width: 196px;
        }
        .auto-style16 {
            width: 196px;
        }
        .auto-style18 {
            width: 196px;
            height: 3px;
        }
        .auto-style19 {
            height: 25px;
            width: 255px;
        }
        .auto-style20 {
            height: 25px;
            text-align: center;
        }
        .auto-style23 {
            height: 23px;
            width: 72px;
        }
        .auto-style24 {
            width: 72px;
        }
        .auto-style25 {
            width: 72px;
            height: 3px;
        }
        .auto-style27 {
            height: 23px;
            width: 200px;
        }
        .auto-style28 {
            width: 200px;
        }
        .auto-style29 {
            width: 200px;
            height: 3px;
        }
        .auto-style30 {
            height: 23px;
            width: 206px;
        }
        .auto-style31 {
            width: 206px;
        }
        .auto-style32 {
            width: 206px;
            height: 3px;
        }
        .auto-style35 {
            width: 253px;
        }
        .auto-style37 {
            width: 262px;
            height: 25px;
        }
        .auto-style38 {
            width: 262px;
            height: 3px;
        }
        .auto-style39 {
            height: 23px;
            width: 262px;
        }
        .auto-style40 {
            width: 253px;
            height: 25px;
        }
        .auto-style42 {
            height: 23px;
            width: 253px;
        }
        .auto-style43 {
            width: 253px;
            height: 3px;
        }
        .auto-style44 {
            width: 91%;
        }
    </style>
</asp:Content>

