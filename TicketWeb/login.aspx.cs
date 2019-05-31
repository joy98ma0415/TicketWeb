using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TicketWeb
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where  Aname='" + this.txtname.Text + "'and  Apwd='" + this.txtpwd.Text + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Aname"] = sdr["Aname"].ToString();
                Session["Apw"] = sdr["Apw"].ToString();
                Response.Write("<script language='javascript'>alert('登錄成功歡迎使用售票系統');location.href='Index.aspx'</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('用戶名或密碼錯誤請重新登錄');location.href='login.aspx'</script>");
            }
        }

        protected void btclier_Click(object sender, EventArgs e)
        {
            this.txtname.Text = "";
            this.txtpwd.Text = "";
        }
    }
}