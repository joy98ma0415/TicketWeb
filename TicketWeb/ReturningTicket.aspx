<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReturningTicket.aspx.cs" Inherits="TicketWeb.ReturningTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; border-right: #3399ff 0.1mm solid; border-top: #3399ff 0.1mm solid; border-bottom: #3399ff 0.1mm solid;">
        <tr>
            <td align="center" colspan="2" scope="row" style="background-position: center center; background-repeat: repeat-x; height: 33px; background-color: #3399ff;">退票管理</td>
        </tr>
        <tr>
            <td style="width: 327px; height: 25px">選擇退票種類：</td>
            <td style="width: 836px; height: 25px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="128px">
                    <asp:ListItem>預定的票</asp:ListItem>
                    <asp:ListItem Selected="True">非預定的票</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Width="357px"></asp:Label></td>
        </tr>
        <tr>
            <td id="TD1" runat="server" colspan="2" style="height: 23px; background-position: center center; background-image: url(image/bar.jpg); color: #ffffff; background-repeat: repeat-x;" align="center">車票的內容</td>
        </tr>
        <tr>
            <td style="width: 327px; height: 25px">輸入編號：</td>
            <td style="width: 836px; height: 25px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="32px">查找</asp:LinkButton>輸入車票編號檢索車票</td>
        </tr>
        <tr>
            <td style="width: 327px; height: 25px">車票價格：</td>
            <td style="width: 836px; height: 25px">
                <asp:Label ID="Label2" runat="server" Width="159px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 327px; height: 27px">車次：</td>
            <td style="width: 836px; height: 27px">
                <asp:Label ID="Label3" runat="server" Width="159px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 327px; height: 25px">車票類型：</td>
            <td style="width: 836px; height: 25px">
                <asp:Label ID="Label4" runat="server" Width="158px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 327px; height: 25px">開車時間：</td>
            <td style="width: 836px; height: 25px">
                <asp:Label ID="Label5" runat="server" Width="162px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 327px; height: 25px">預定時間：</td>
            <td style="width: 836px; height: 25px">
                <asp:Label ID="txtyudingtime" runat="server" Width="162px"></asp:Label></td>
        </tr>
        <tr>
            <td style="height: 25px; background-position: center center; background-image: url(image/bar.jpg); color: #ffffff; background-repeat: repeat-x;" align="center" colspan="2">
                <asp:LinkButton ID="Linktuipiao" runat="server" OnClick="Linktuipiao_Click" ForeColor="White" Width="45px">退票</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="height: 25px" colspan="2"></td>
        </tr>
    </table>
</asp:Content>