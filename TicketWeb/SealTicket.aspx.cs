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
    public partial class SealTicket : System.Web.UI.Page
    {
        public int time;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Linkbuy_Click(object sender, EventArgs e)
        {
            Time();
            if (DateTime.Now.Hour > time)
            {
                this.Label1.Text = this.DropDownList1.SelectedItem.Text;
                this.Label2.Text = this.DropDownList2.SelectedItem.Text;
                this.Label3.Text = this.DropDownList3.SelectedItem.Text;
                this.Label4.Text = DropDownList2.SelectedValue;
            }
            else
            {
                Response.Write("<script language='javascript'>alert('當前時間不能賣票');location.href='SealTicket.aspx'</script>");
            }
        }

        private void Time()
        {
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select SysBuyTime  from System", con);//从数据库中选择设置时间
            time = Convert.ToInt32(cmd.ExecuteScalar());

            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            InsertTicket();//把購票資訊添加到資料庫中
            Response.Write("<script language='javascript'>alert('購買成功確認列印  ')</script>");
        }

        private void InsertTicket()
        {
            //把購票資訊添加到資料庫中

            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = (SqlConnection)con;//對象產生實體
            cmd.CommandText = "insert into SealTicket (SCar,SticketType,Stime,Smoney,Sadmin)values(@SCar,@SticketType,@Stime,@Smoney,@Sadmin)";

            cmd.Parameters.Add("@SCar", SqlDbType.NVarChar);
            cmd.Parameters.Add("@SticketType", SqlDbType.NVarChar);
            cmd.Parameters.Add("@Stime", SqlDbType.DateTime);
            cmd.Parameters.Add("@Smoney", SqlDbType.Int);
            cmd.Parameters.Add("@Sadmin", SqlDbType.VarChar);

            cmd.Parameters["@SCar"].Value = this.Label1.Text;
            cmd.Parameters["@SticketType"].Value = this.Label2.Text;
            cmd.Parameters["@Stime"].Value = this.Label3.Text;
            cmd.Parameters["@Smoney"].Value = Label4.Text;
            cmd.Parameters["@Sadmin"].Value = Session["Aname"].ToString();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}