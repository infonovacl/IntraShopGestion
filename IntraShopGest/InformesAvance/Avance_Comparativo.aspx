﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestro.Master" CodeBehind="Avance_Comparativo.aspx.vb" Inherits="IntraShopGest.Avance_Comparativo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%">
    <tr>
        <td class="auto-style17" style="width: 78px">&nbsp;</td>
        <td class="auto-style20" style="width: 121px">&nbsp;</td>
        <td class="auto-style20" style="width: 64px">
                &nbsp;</td>
        <td class="auto-style20" style="width: 276px">
                <asp:Label ID="Label1" runat="server" CssClass="etiquetas_login_grande" Text="Informe Comparativo Avance" TabIndex="92"></asp:Label>
                </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17" style="height: 23px; width: 78px"></td>
        <td style="width: 121px; height: 23px">
                                                    <asp:Label ID="Label16" runat="server" CssClass="etiquetas" Text="Fecha Inicial"></asp:Label>
                                                </td>
        <td style="width: 64px; height: 23px">
            <asp:TextBox ID="TXT_FechaInicial" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
        </td>
        <td style="width: 276px; height: 23px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" />
        </td>
        <td style="height: 23px"></td>
    </tr>
    <tr>
        <td class="auto-style17" style="width: 78px">&nbsp;</td>
        <td style="width: 121px">
                                                    <asp:Label ID="Label17" runat="server" CssClass="etiquetas" Text="Fecha Final"></asp:Label>
                                                </td>
        <td style="width: 64px">
            <asp:TextBox ID="TXT_FechaFinal" runat="server" ClientIDMode="Static" CssClass="cajastextoparametro" MaxLength="8" Width="73px"></asp:TextBox>
        </td>
        <td style="width: 276px">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/Calendar_HD.png" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
