<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TicketWeb.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>售票系統</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; border-right: #0099cc thin solid; border-top: #0099cc thin solid; border-left: #0099cc thin solid; border-bottom: #0099cc thin solid; height: 596px;">
                <tr>
                    <td colspan="3" style="background-position: 100% 100%; background-repeat: repeat-x; height: 85px; background-image: url(image/head.gif);" valign="top"></td>
                </tr>
                <tr>
                    <td colspan="3" style="background-position: 100% 100%; background-repeat: repeat-x; height: 4px; background-image: url(image/bar.jpg); color: #ffffff;" valign="top" align="right">
                        <asp:Label ID="Label1" runat="server" Text="Label" Width="61px"></asp:Label></td>
                </tr>
                <tr>
                    <td rowspan="2" style="width: 41px; height: 441px" valign="top">&nbsp;<asp:TreeView ID="TreeView1" runat="server" Font-Size="Larger" ImageSet="BulletedList"
                        ShowExpandCollapse="False" Width="126px">
                        <ParentNodeStyle Font-Bold="False" />
                        <HoverNodeStyle BackColor="DodgerBlue" Font-Underline="True" ForeColor="Black" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                            VerticalPadding="0px" />
                        <Nodes>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="~/Index.aspx" Text="web售票管理系統"
                                Value="web售票管理系統"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="~/SealTicket.aspx" Text="前臺營業"
                                Value="前臺營業">
                                <asp:TreeNode NavigateUrl="~/SealTicket.aspx" Text="銷售車票" Value="銷售車票"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/PredeterminedTicket.aspx" Text="預定車票" Value="預定車票"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/ReturningTicket.aspx" Text=" 退回車票" Value=" 退回車票"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="~/PredeterminedTicketInquiry.aspx"
                                Text="資訊查詢" Value="資訊查詢">
                                <asp:TreeNode NavigateUrl="~/PredeterminedTicketInquiry.aspx" Text="售票資訊查詢" Value="售票資訊查詢"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/BookingInquiry.aspx" Text="訂票資訊查詢" Value="訂票資訊查詢"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/OperationPlan.aspx" Text="運營計畫查詢" Value="運營計畫查詢"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="~/DayStatistics.aspx" Text="營業統計"
                                Value="營業統計">
                                <asp:TreeNode NavigateUrl="~/DayStatistics.aspx" Text="日售票統計" Value="日售票統計"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/MonthStatistics.aspx" Text="月售票統計" Value="月售票統計"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/QuarterStatistics.aspx" Text="季度售票統計" Value="季度售票統計"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="~/Computer.aspx" Text="常用工具"
                                Value="常用工具">
                                <asp:TreeNode NavigateUrl="~/nootbook.aspx" Text="記事本" Value="記事本"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="~/ConfigEstablishment.aspx" Text="基礎設置"
                                Value="基礎設置"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="~/SystemCfg.aspx" Text="系統設置"
                                Value="系統設置"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/image/c.gif" NavigateUrl="https://portfoliowebapplication.azurewebsites.net/" Text="回作品集"
                                Value="回作品集"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px"
                            NodeSpacing="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                    </td>
                    <td style="width: 8px; height: 441px; background-position: center center; background-image: url(image/Left_Student.jpg); background-repeat: repeat-y;"
                        valign="top"></td>
                    <td style="width: 593px; height: 441px" valign="top"></td>
                </tr>
                <tr>
                    <td colspan="3" style="background-position: center center; background-image: url(image/bar.jpg); background-repeat: repeat-x; height: 31px;"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>