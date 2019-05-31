using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TicketWeb
{
    public partial class MonthStatistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Checkidmonth1();
            Checkidmonth2();

            //計算總營業額
            if (Label1.Text != "" || Label2.Text != "")
            {
                decimal str1 = Convert.ToDecimal(this.Label1.Text);
                decimal str2 = Convert.ToDecimal(this.Label2.Text);
                this.Label3.Text = Convert.ToString(str2 + str1);
            }
        }

        private void Checkidmonth1()
        {
            //檢索出售的車票表中是否存在所選擇月份資訊
            int month = this.DropDownList1.SelectedIndex + 1;
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from SealTicket where  month(Stime)='" + month + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Money();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('該月份沒有資料');location.href='MonthStatistics.aspx'</script>");
            }
        }

        private void Money()
        {
            //所有出售車票當月的收入
            int month = this.DropDownList1.SelectedIndex + 1;
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select sum(Smoney) from SealTicket  where month(Stime)='" + month + "'", con);
            decimal summoney = Convert.ToDecimal(cmd.ExecuteScalar());
            this.Label2.Text = Convert.ToString(summoney);
        }

        private void Checkidmonth2()
        {
            int month = this.DropDownList1.SelectedIndex + 1;
            //檢索預售的車票表中是否存在所選擇月份資訊

            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from OrderTicket where  month(ObuyTime)='" + month + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                YudingMoney();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('該月份沒有資料');location.href='MonthStatistics.aspx'</script>");
            }
        }

        private void YudingMoney()
        {
            //所有預定車票當月的收入
            int month = this.DropDownList1.SelectedIndex + 1;
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select sum(Omoney) from OrderTicket where month(ObuyTime)='" + month + "'", con);
            decimal summoney = Convert.ToDecimal(cmd.ExecuteScalar());
            this.Label1.Text = Convert.ToString(summoney);

            con.Close();
        }
    }
}