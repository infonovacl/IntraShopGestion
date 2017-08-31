<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestro.Master" CodeBehind="BaseInforme.aspx.vb" Inherits="IntraShopGest.Avance_Comparativo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <table class="auto-style9">
    <tr>
        <td class="auto-style3" colspan="10">
                <asp:Label ID="LBL_Titulo" runat="server" CssClass="etiquetas_login_grande" TabIndex="92"></asp:Label>
                </td>
        <td style="height: 25px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38">
            <asp:Label ID="LBL_USUARIO" runat="server" CssClass="etiquetas"></asp:Label>
        </td>
        <td class="auto-style7"></td>
        <td class="auto-style9">
                </td>
        <td class="auto-style8">
                </td>
        <td class="auto-style5">
                &nbsp;</td>
        <td class="auto-style14">
                &nbsp;</td>
        <td class="auto-style18">
                &nbsp;</td>
        <td class="auto-style21">
                &nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style53">
            &nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style39">
            <asp:Label ID="LBL_CodSucursal" runat="server" CssClass="etiquetas"></asp:Label>
        </td>
        <td class="auto-style7">
                                                    <asp:Label ID="Label16" runat="server" CssClass="etiquetas" Text="Fecha Inicial"></asp:Label>
                                                </td>
        <td style="width: 102px; height: 23px">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaInicial" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style8">
            
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="BTN_CalendarioInicial" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" Width="16px" />
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </td>
        <td class="auto-style5">
            
            &nbsp;</td>
        <td class="auto-style13">
            
                                                    <asp:Label ID="Label18" runat="server" CssClass="etiquetas" Text="Monto 1"></asp:Label>
            
        </td>
        <td class="auto-style15">
            
                    <asp:TextBox ID="TXT_Monto1" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
            
        </td>
        <td>
            
            &nbsp;</td>
        <td class="auto-style47">
            <asp:Button ID="BTN_Buscar" runat="server" CssClass="botones" Text="BUSCAR" />
        </td>
        <td class="auto-style51">
            <asp:Button ID="BTN_Imprimir" runat="server" CssClass="botones" Text="IMPRIMIR" />
        </td>
        <td style="height: 23px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style38">&nbsp;</td>
        <td class="auto-style7">
                                                    <asp:Label ID="Label17" runat="server" CssClass="etiquetas" Text="Fecha Final"></asp:Label>
                                                </td>
        <td style="width: 102px">
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaFinal" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style8">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="BTN_CalendarioFinal" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style14">
                                                    <asp:Label ID="Label19" runat="server" CssClass="etiquetas" Text="Monto 2"></asp:Label>
        </td>
        <td class="auto-style16">
                    <asp:TextBox ID="TXT_Monto2" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="BTN_Limpiar" runat="server" CssClass="botones" Text="LIMPIAR" />
        </td>
        <td class="auto-style52">
            <asp:Button ID="BTN_Excel" runat="server" CssClass="botones" Text="EXCEL" />
        </td>
        <td>
            &nbsp;</td>
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
        width: 224px;
        position: absolute;
        left: 363px;
        top: 188px;
        height: 74px;
    }
    .auto-style5 {
        width: 110px;
    }
    .auto-style6 {
        width: 244px;
        position: absolute;
        left: 293px;
        top: 313px;
        height: 94px;
    }
    .auto-style7 {
        width: 197px;
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
    .auto-style18 {
        width: 252px;
    }
    .auto-style19 {
        width: 250px;
    }
    .auto-style21 {
        height: 23px;
    }

    </style>
</asp:Content>

