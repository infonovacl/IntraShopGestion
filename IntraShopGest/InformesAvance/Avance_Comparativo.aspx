<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestro.Master" CodeBehind="Avance_Comparativo.aspx.vb" Inherits="IntraShopGest.Avance_Comparativo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <table style="width: 100%">
    <tr>
        <td class="auto-style17" style="width: 78px; height: 25px;">&nbsp;</td>
        <td class="auto-style20" style="width: 121px; height: 25px;"></td>
        <td class="auto-style20" style="width: 102px; height: 25px;">
                </td>
        <td class="auto-style20" style="width: 256px; height: 25px;">
                <asp:Label ID="Label1" runat="server" CssClass="etiquetas_login_grande" Text="Informe Comparativo Avance" TabIndex="92"></asp:Label>
                </td>
        <td style="height: 25px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17" style="width: 78px; height: 3px;"></td>
        <td class="auto-style20" style="width: 121px; height: 3px;"></td>
        <td class="auto-style20" style="width: 102px; height: 3px;">
                </td>
        <td class="auto-style20" style="width: 256px; height: 3px;">
                </td>
        <td style="height: 3px"></td>
    </tr>
    <tr>
        <td class="auto-style17" style="height: 23px; width: 78px"></td>
        <td style="width: 121px; height: 23px">
                                                    <asp:Label ID="Label16" runat="server" CssClass="etiquetas" Text="Fecha Inicial"></asp:Label>
                                                </td>
        <td style="width: 102px; height: 23px">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaInicial" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td style="width: 256px; height: 23px">
            
            <div id="CalendarIni" style="position: absolute; left: 359px; top: 49px; width: 2px; height: 4px;">
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
                    <asp:ImageButton ID="BTN_CalendarioInicial" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" style="height: 16px" />
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </td>
        <td style="height: 23px">
            <div id="CalendarFin" style="position: absolute; left: 360px; top: 72px; width: 1px; height: 5px;">
                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="CalendarFinal" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="90px" ShowGridLines="True" Visible="False" Width="205px">
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
        <td class="auto-style17" style="width: 78px">&nbsp;</td>
        <td style="width: 121px">
                                                    <asp:Label ID="Label17" runat="server" CssClass="etiquetas" Text="Fecha Final"></asp:Label>
                                                </td>
        <td style="width: 102px">
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TXT_FechaFinal" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td style="width: 256px">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:ImageButton ID="BTN_CalendarioFinal" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td>
            <asp:Button ID="BTN_Limpiar" runat="server" CssClass="botones" Text="LIMPIAR" />
        </td>
    </tr>
</table>

</asp:Content>
