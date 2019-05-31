<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SealTicket.aspx.cs" Inherits="TicketWeb.SealTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="border-right: #3399ff 0.1mm solid;
        border-top: #3399ff 0.1mm solid; ; width: 100%;
        border-bottom: #3399ff 0.1mm solid">
        <tr>
            <td align="center" colspan="3" style="background-position: center center; font-size: large; color: #000033; background-repeat: repeat-x;
                height: 32px; background-color: #3399ff;">
                車票預定系統</td>
        </tr>
        <tr>
            <td style="width: 184px; height: 23px">
                選擇乘坐車次：</td>
            <td align="left" colspan="2" style="width: 670px; height: 23px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="Carname" DataValueField="Carname" Width="180px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 184px; height: 29px">
                選擇車票種類：</td>
            <td align="left" colspan="2" style="width: 670px; height: 29px">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3"
                    DataTextField="Tname" DataValueField="Tmoney" Width="180px">
                </asp:DropDownList>&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 184px; height: 29px">
                選擇開車時間：</td>
            <td align="left" colspan="2" style="width: 670px; height: 29px">
                &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="Ttime" DataValueField="Ttime" Width="174px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="background-position: center center;
                background-image: url(image/bar.jpg); background-repeat: repeat-x; height: 30px">
                <asp:LinkButton ID="Linkbuy" runat="server" BackColor="MediumTurquoise" ForeColor="Black"
                    Height="18px" OnClick="Linkbuy_Click" Width="91px" BorderStyle="None">　預　覽　</asp:LinkButton>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="height: 26px">
                &nbsp;以下是你購買的車票資訊</td>
        </tr>
        <tr>
            <td colspan="3">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td align="left" style="width: 133px; height: 30px">
                            車次：</td>
                        <td align="left" colspan="2" style="height: 30px">
                            <asp:Label ID="Label1" runat="server" Width="165px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 133px; height: 31px">
                            種類：</td>
                        <td align="left" colspan="2" style="height: 31px">
                            <asp:Label ID="Label2" runat="server" Width="166px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 133px; height: 30px">
                            開車時間：</td>
                        <td align="left" colspan="2" style="height: 30px">
                            <asp:Label ID="Label3" runat="server" Width="165px"></asp:Label></td>
                    </tr>
                     <tr>
                        <td align="left" style="width: 133px; height: 30px">
                            車票價格：</td>
                        <td align="left" colspan="2" style="height: 30px">
                            <asp:Label ID="Label4" runat="server" Width="165px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="3" style="height: 31px">
                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="MediumTurquoise" ForeColor="Black"
                                OnClick="LinkButton1_Click" Width="80px" BorderStyle="None" style="height: 14px">　購　買　</asp:LinkButton></td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
        </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT * FROM [Car] WHERE ([CType] = @CType) ORDER BY [Cid]">
        <SelectParameters>
            <asp:Parameter DefaultValue="否" Name="CType" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT * FROM [Ticket]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT * FROM [Ticket]"></asp:SqlDataSource>
</asp:Content>