using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TicketWeb
{
    public partial class SystemCfg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.Panel1.Visible = true;
                this.Panel2.Visible = false;
            }
        }

        protected void linkconfig_Click(object sender, EventArgs e)
        {
            this.Panel2.Visible = false;
            this.Panel1.Visible = true;
        }

        protected void dayin_Click(object sender, EventArgs e)
        {
            Response.Write("<script language='javascript'>alert('該功能正在製作中！')</script>");
        }

        protected void linkclear_Click(object sender, EventArgs e)
        {
            this.txtname.Text = "";
            txtpwd.Text = "";
            txtpwd2.Text = "";
        }

        protected void lingadd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = db.ceratcon();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = (SqlConnection)con;//對象產生實體
                cmd.CommandText = "insert into Admin (Apwd,Aname,Apw)values(@Apwd,@Aname,@Apw)";

                cmd.Parameters.Add("@Apwd", SqlDbType.VarChar);
                cmd.Parameters.Add("@Aname", SqlDbType.VarChar);
                cmd.Parameters.Add("@Apw", SqlDbType.VarChar);

                cmd.Parameters["@Apwd"].Value = this.txtpwd.Text;
                cmd.Parameters["@Aname"].Value = this.txtname.Text;
                cmd.Parameters["@Apw"].Value = this.DropDownList1.SelectedItem.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'>alert('註冊成功請登陸');location.href='Index.aspx'</script>");
            }
            catch
            {
                Response.Write("<script language='javascript'>alert('註冊失敗請重新註冊');location.href='SystemCfg.aspx'</script>");
            }
        }

        protected void linkUpdata_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void txtpwd3_TextChanged(object sender, EventArgs e)
        {
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select  * from Admin", con);//從資料庫中選擇資料
            cmd.Parameters.Add("@Aname", SqlDbType.VarChar);
            cmd.Parameters["@Aname"].Value = this.DropDownList1.SelectedItem.Text;

            SqlDataReader sdr = cmd.ExecuteReader();//讀數據
            if (sdr.Read())
            {
                this.txtname2.Text = this.DropDownList3.SelectedItem.Text;
                this.txtpwd3.Text = Convert.ToString(sdr["Apwd"]);
                this.DropDownList2.SelectedItem.Text = Convert.ToString(sdr["Apw"]);
            }
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string name = this.DropDownList3.SelectedItem.Text;
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = (SqlConnection)con;
            cmd.CommandText = "update   Admin set Apwd=@Apwd,Aname=@Aname,Apw=@Apw where Aname=@Aname";
            cmd.Parameters.Add("@Apwd", SqlDbType.VarChar);
            cmd.Parameters.Add("@Aname", SqlDbType.VarChar);
            cmd.Parameters.Add("@Apw", SqlDbType.VarChar);

            cmd.Parameters["@Apwd"].Value = this.txtpwd3.Text;
            cmd.Parameters["@Aname"].Value = this.txtname2.Text;
            cmd.Parameters["@Apw"].Value = this.DropDownList2.SelectedItem.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language='javascript'>alert('修改成功');location.href='SystemCfg.aspx'</script>");
        }
    }
}