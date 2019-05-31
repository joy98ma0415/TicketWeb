<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MonthStatistics.aspx.cs" Inherits="TicketWeb.MonthStatistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="border-right: #3399ff 0.1mm solid;
        border-top: #3399ff 0.1mm solid; border-left: #3399ff 0.1mm solid; width: 100%;
        border-bottom: #3399ff 0.1mm solid">
        <tr>
            <td align="center" colspan="3" style="background-position: center center;
                background-repeat: repeat-x; height: 30px; background-color: #3399ff;">
                售票資訊查詢</td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 7px" valign="top">
                以下是按月統計的總銷售額</td>
        </tr>

         <tr>
            <td align="left" colspan="3" style="height: 7px" valign="top">
                按月統計：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="122px">
                    <asp:ListItem Value="1">1月</asp:ListItem>
                    <asp:ListItem Value="2">2月</asp:ListItem>
                    <asp:ListItem Value="3">3月</asp:ListItem>
                    <asp:ListItem Value="4">4月</asp:ListItem>
                    <asp:ListItem Value="5">5月</asp:ListItem>
                    <asp:ListItem Value="6">6月</asp:ListItem>
                    <asp:ListItem Value="7">7月</asp:ListItem>
                    <asp:ListItem Value="8">8月</asp:ListItem>
                    <asp:ListItem Value="9">9月</asp:ListItem>
                    <asp:ListItem Value="10">10月</asp:ListItem>
                    <asp:ListItem Value="11">11月</asp:ListItem>
                    <asp:ListItem Value="12">12月</asp:ListItem>
                </asp:DropDownList>請選擇月份</td>
        </tr>
         <tr>
            <td align="center" colspan="3" style="height: 7px" valign="top">
                </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 24px" valign="top">
                預定收入：<asp:Label ID="Label1" runat="server" Width="97px"></asp:Label>
                售票收入：<asp:Label ID="Label2" runat="server" Width="103px"></asp:Label>
                總收入：<asp:Label ID="Label3" runat="server" Width="102px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>