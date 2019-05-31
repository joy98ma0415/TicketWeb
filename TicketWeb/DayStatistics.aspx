<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DayStatistics.aspx.cs" Inherits="TicketWeb.DayStatistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="border-right: #3399ff 0.1mm solid; border-top: #3399ff 0.1mm solid; border-left: #3399ff 0.1mm solid; width: 100%; border-bottom: #3399ff 0.1mm solid">
        <tr>
            <td align="center" colspan="3" style="background-position: center center; background-repeat: repeat-x; height: 30px; background-color: #3399ff;">售票資訊查詢</td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 8px" valign="top">以下是今日的總銷售額</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 24px" valign="top">預定收入：<asp:Label ID="Label1" runat="server" Width="97px"></asp:Label>
                售票收入：<asp:Label ID="Label2" runat="server" Width="103px"></asp:Label>
                總收入：<asp:Label ID="Label3" runat="server" Width="102px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>