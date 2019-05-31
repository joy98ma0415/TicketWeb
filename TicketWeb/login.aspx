<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TicketWeb.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="all.css" type="text/css">
    <style type="text/css">
        .auto-style1 {
            left: 81px;
            position: relative;
            top: 0px;
            z-index: 101;
        }
    </style>
</head>
<body style="cursor: crosshair; color: #9966ff;" bgcolor="#00bfff" text="#66ffff" vlink="#00ffff" alink="#6699ff">
    <form id="form1" runat="server">
        <div class="logindiv">
            <div style="text-align: center">
                &nbsp;
            <asp:Label ID="Label1" runat="server" BackColor="DeepSkyBlue" Font-Size="XX-Large"
                ForeColor="Blue" Height="37px" Style="left: 15px; position: relative; top: 108px"
                Text="歡迎使用售票系統" Width="444px"></asp:Label>&nbsp;
            <table class="logintable" align="center" border="0" cellpadding="0" cellspacing="0" style="left: 16px; position: relative; top: 108px; height: 122px; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; color: #3333ff;">
                <tr>
                    <td colspan="3"></td>
                </tr>

                <tr>
                    <td align="center" style="width: 73px; height: 28px; background-color: #33ccff">用戶名：</td>
                    <td align="center" style="width: 222px; height: 28px; background-color: #33ccff">
                        <asp:TextBox ID="txtname" runat="server" Style="position: relative; left: 0px; top: 0px;" TabIndex="1" Width="147px"></asp:TextBox></td>
                    <td align="center" style="width: 140px; height: 28px; background-color: #33ccff">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                            ErrorMessage="用戶名不能為空！" Style="position: relative">用戶名不能為空！</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="center" style="width: 73px; height: 38px; background-color: #33ccff">密碼：</td>
                    <td align="center" style="width: 222px; height: 38px; background-color: #33ccff">
                        <asp:TextBox ID="txtpwd" runat="server" Style="left: 1px; position: relative; top: 0px"
                            TabIndex="2" TextMode="Password" Width="147px"></asp:TextBox></td>
                    <td align="center" style="width: 140px; height: 38px; background-color: #33ccff">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                            ErrorMessage="密碼不能為空！" Style="position: relative">密碼不能為空！</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="center" style="width: 73px; background-color: #33ccff">確認：</td>
                    <td align="center" style="width: 222px; background-color: #33ccff">
                        <asp:TextBox ID="txtpwd2" runat="server" Style="left: 1px; position: relative; top: 0px"
                            TabIndex="3" TextMode="Password" Width="147px"></asp:TextBox></td>
                    <td align="center" style="width: 140px; background-color: #33ccff">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd2"
                            ErrorMessage="密碼不能為空！" Style="position: relative">請再次輸入密碼！</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="center" style="width: 73px; height: 26px; background-color: #33ccff"></td>
                    <td align="center" style="width: 222px; height: 26px; background-color: #33ccff">&nbsp;<asp:Button ID="btclier" runat="server" CausesValidation="False" TabIndex="5" Text="清除" BackColor="LightSkyBlue" BorderStyle="None" OnClick="btclier_Click" CssClass="auto-style1" />
                        <asp:Button ID="btnlogin" runat="server" Style="left: -91px; position: relative; top: 0px; z-index: 102;"
                            TabIndex="4" Text="登陸" BackColor="LightSkyBlue" BorderStyle="None" OnClick="btnlogin_Click" /></td>
                    <td align="center" style="width: 140px; height: 26px; background-color: #33ccff">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd"
                            ControlToValidate="txtpwd2" ErrorMessage="密碼不一致！" Style="position: relative">密碼不一致！</asp:CompareValidator></td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>