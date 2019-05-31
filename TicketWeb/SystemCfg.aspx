<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SystemCfg.aspx.cs" Inherits="TicketWeb.SystemCfg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="left" style="background-position: center center; background-image: url(image/bar.jpg); width: 90%; background-repeat: repeat-x; height: 22px">&nbsp;<asp:LinkButton ID="linkconfig" runat="server" ForeColor="White" OnClick="linkconfig_Click" CausesValidation="False">管理員註冊</asp:LinkButton>
                <asp:LinkButton ID="dayin" runat="server" ForeColor="White" OnClick="dayin_Click" CausesValidation="False">印表機設置</asp:LinkButton>
                <asp:LinkButton ID="linkUpdata" runat="server" ForeColor="White" CausesValidation="False" OnClick="linkUpdata_Click">使用者資訊修改</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 90%; height: 380px;" align="left" valign="top" rowspan="5">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-right: #33ccff 0.1mm solid; border-top: #33ccff 0.1mm solid; border-left: #33ccff 0.1mm solid; width: 498%; border-bottom: #33ccff 0.1mm solid">
                        <tr>
                            <td style="width: 90px; height: 30px">用戶名：</td>
                            <td style="width: 100px; height: 30px">
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                            <td style="width: 131px; height: 30px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                    Display="Dynamic" ErrorMessage="用戶名空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 90px; height: 30px">密碼：</td>
                            <td style="width: 100px; height: 30px">
                                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
                            <td style="width: 131px; height: 30px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                                    Display="Dynamic" ErrorMessage="密碼不能空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 90px; height: 30px">確認：</td>
                            <td style="width: 100px; height: 30px">
                                <asp:TextBox ID="txtpwd2" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
                            <td style="width: 131px; height: 30px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd"
                                    ControlToValidate="txtpwd2" Display="Dynamic" ErrorMessage="密碼不一致"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 90px; height: 30px">許可權：</td>
                            <td style="width: 100px; height: 30px">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="156px">
                                    <asp:ListItem Selected="True">普通管理員</asp:ListItem>
                                    <asp:ListItem>超級管理員</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="width: 131px; height: 30px"></td>
                        </tr>
                        <tr>
                            <td style="height: 30px; background-color: #3399ff;" colspan="3" align="center">
                                <asp:LinkButton ID="linkclear" runat="server" ForeColor="White" OnClick="linkclear_Click"
                                    Width="72px" CausesValidation="False" BackColor="MediumTurquoise" BorderStyle="None">重置</asp:LinkButton>
                                <asp:LinkButton ID="lingadd" runat="server" ForeColor="White" OnClick="lingadd_Click"
                                    Width="74px" BackColor="MediumTurquoise" BorderStyle="None">註冊</asp:LinkButton></td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Height="50px" Width="125px">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 498%; border-right: #3399ff 0.1mm solid; border-top: #3399ff 0.1mm solid; border-left: #3399ff 0.1mm solid; border-bottom: #3399ff 0.1mm solid;">
                        <tr>
                            <td colspan="3" style="background-position: left center; background-image: url(image/bar.jpg); color: #ffffff; background-repeat: repeat-x; height: 18px;" align="center">管理員資訊修改</td>
                        </tr>
                        <tr>
                            <td style="width: 93px; height: 25px;">選擇用戶：</td>
                            <td style="width: 207px; height: 25px;" align="left">
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="129px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Aname" DataValueField="Aname" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                </asp:DropDownList></td>
                            <td style="height: 25px; width: 136px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 93px; height: 25px;">用戶名：</td>
                            <td style="width: 207px" align="left">
                                <asp:TextBox ID="txtname2" runat="server" TextMode="Password"></asp:TextBox></td>
                            <td style="width: 136px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname2"
                                    ErrorMessage="用戶名空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 93px; height: 26px;">密碼：</td>
                            <td style="width: 207px; height: 26px;" align="left">
                                <asp:TextBox ID="txtpwd3" runat="server" Width="137px" OnTextChanged="txtpwd3_TextChanged" TextMode="Password"></asp:TextBox></td>
                            <td style="height: 26px; width: 136px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpwd3"
                                    ErrorMessage="密碼空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 93px; height: 25px;">許可權：</td>
                            <td style="width: 207px; height: 25px;" align="left">
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="111px">
                                    <asp:ListItem Selected="True">普通管理員</asp:ListItem>
                                    <asp:ListItem>超級管理員</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="height: 25px; width: 136px;"></td>
                        </tr>
                        <tr>
                            <td style="height: 25px; background-color: #3399ff;" align="center" colspan="3">
                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Width="61px" OnClick="LinkButton1_Click" BackColor="MediumTurquoise" BorderColor="White" BorderStyle="None">修改</asp:LinkButton></td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>