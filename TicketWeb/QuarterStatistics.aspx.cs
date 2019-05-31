using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TicketWeb
{
    public partial class QuarterStatistics : System.Web.UI.Page
    {
        public string str;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Checkidmonth1();
            Checkidmonth2();
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
            if (DropDownList1.SelectedItem.Text == "第一季度")
            {
                str = "select  Stime  from SealTicket   where  Stime    between '2007-01-01' and '2007-03-31'";
            }
            else if (DropDownList1.SelectedItem.Text == "第二季度")
            {
                str = "select Stime from SealTicket    where Stime    between '2007-04-01 'and '2007-06-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第三季度")
            {
                str = "select Stime from SealTicket   where  Stime   between '2007-07-01' and '2007-09-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第四季度")
            {
                str = "select Stime from SealTicket    where  Stime   between '2007-10-01' and '2007-12-31'";
            }
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = (SqlConnection)con;
            cmd.CommandText = str;
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Money();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('該季度沒有資料');location.href='QuarterStatistics.aspx'</script>");
            }
        }

        private void Money()
        {
            if (DropDownList1.SelectedItem.Text == "第一季度")
            {
                str = "select sum(Smoney) from SealTicket   where  Stime    between '2007-01-01' and '2007-03-31'";
            }
            else if (DropDownList1.SelectedItem.Text == "第二季度")
            {
                str = "select sum(Smoney) from SealTicket    where Stime    between '2007-04-01 'and '2007-06-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第三季度")
            {
                str = "select sum(Smoney) from SealTicket   where  Stime   between '2007-07-01' and '2007-09-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第四季度")
            {
                str = "select sum(Smoney) from SealTicket    where  Stime   between '2007-10-01' and '2007-12-31'";
            }
            //所有出售車票季度的收入

            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = (SqlConnection)con;
            cmd.CommandText = str;
            decimal summoney = Convert.ToDecimal(cmd.ExecuteScalar());
            this.Label2.Text = Convert.ToString(summoney);
        }

        private void Checkidmonth2()
        {
            //檢索預售的車票表中是否存在所選擇季度的資訊
            if (DropDownList1.SelectedItem.Text == "第一季度")
            {
                str = "select ObuyTime from OrderTicket    where ObuyTime    between '2007-01-01' and '2007-03-31'";
            }
            else if (DropDownList1.SelectedItem.Text == "第二季度")
            {
                str = "select ObuyTime from OrderTicket where ObuyTime    between  '2007-04-01 'and '2007-06-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第三季度")
            {
                str = "select ObuyTime from OrderTicket where ObuyTime   between '2007-07-01' and '2007-09-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第四季度")
            {
                str = "select ObuyTime from OrderTicket where ObuyTime   between '2007-10-01' and '2007-12-31'";
            }
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = (SqlConnection)con;
            cmd.CommandText = str;
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                YudingMoney();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('該季度沒有資料');location.href='QuarterStatistics.aspx'</script>");
            }
        }

        private void YudingMoney()
        {
            if (DropDownList1.SelectedItem.Text == "第一季度")
            {
                str = "select sum(Omoney) from OrderTicket    where ObuyTime    between '2007-01-01' and '2007-03-31'";
            }
            else if (DropDownList1.SelectedItem.Text == "第二季度")
            {
                str = "select sum(Omoney) from OrderTicket where ObuyTime    between  '2007-04-01 'and '2007-06-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第三季度")
            {
                str = "select sum(Omoney) from OrderTicket where ObuyTime   between '2007-07-01' and '2007-09-30'";
            }
            else if (DropDownList1.SelectedItem.Text == "第四季度")
            {
                str = "select sum(Omoney) from OrderTicket where ObuyTime   between '2007-10-01' and '2007-12-31'";
            }
            //所有預定車票季度的收入
            int month = this.DropDownList1.SelectedIndex + 1;
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.CommandText = str;
            decimal summoney = Convert.ToDecimal(cmd.ExecuteScalar());
            this.Label1.Text = Convert.ToString(summoney);

            con.Close();
        }
    }
}