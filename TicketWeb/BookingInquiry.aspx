<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingInquiry.aspx.cs" Inherits="TicketWeb.BookingInquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="border-right: #3399ff 0.1mm solid; border-top: #3399ff 0.1mm solid; width: 100%; border-bottom: #3399ff 0.1mm solid">
        <tr>
            <td align="center" colspan="3" style="background-position: center center; background-repeat: repeat-x; height: 30px; background-color: #3399ff;">售票資訊查詢</td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 8px" valign="top">以下是當前預售的所有車票</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 132px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333" GridLines="None"
                    PageSize="12" Width="636px" DataSourceID="SqlDataSource1">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Oid" HeaderText="編號" InsertVisible="False" ReadOnly="True"
                            SortExpression="Oid" />
                        <asp:BoundField DataField="OCar" HeaderText="車次" SortExpression="OCar" />
                        <asp:BoundField DataField="OTicketype" HeaderText="車票類型" SortExpression="OTicketype" />
                        <asp:BoundField DataField="ObuyTime" HeaderText="預定時間" SortExpression="ObuyTime" />
                        <asp:BoundField DataField="Ousetime" HeaderText="開車時間" SortExpression="Ousetime" />
                        <asp:BoundField DataField="Omoney" HeaderText="票價" SortExpression="Omoney" />
                    </Columns>
                    <RowStyle BackColor="#EFF3FB" />
                    <EditRowStyle BackColor="#2461BF" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT * FROM [OrderTicket]"></asp:SqlDataSource>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>