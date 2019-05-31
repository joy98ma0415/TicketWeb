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
    public partial class PredeterminedTicket : System.Web.UI.Page
    {
        public int time;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Linkbuy_Click(object sender, EventArgs e)
        {
            //以下判斷售票時間時間根據設置的時間進行賣票
            Time();
            if (DateTime.Now.Hour > time)
            {
                this.Label1.Text = this.DropDownList1.SelectedItem.Text;
                this.Label2.Text = this.DropDownList2.SelectedItem.Text;
                this.Label3.Text = this.DropDownList3.SelectedItem.Text;
                this.Label4.Text = this.DropDownList2.SelectedValue;
            }
            else
            {
                Response.Write("<script language='javascript'>alert('當前時間不能訂票');location.href='PredeterminedTicket.aspx'</script>");
            }
        }

        private void Time()
        {
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand("select SysOrderTime  from System", con);//从数据库中选择设置时间
            time = Convert.ToInt32(cmd.ExecuteScalar());

            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            InsertTicket();//把購票資訊添加到資料庫中預定表中
            Response.Write("<script language='javascript'>alert('預定成功成功確認列印  ')</script>");
        }

        private void InsertTicket()
        {
            SqlConnection con = db.ceratcon();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = (SqlConnection)con;//对象实例化
            cmd.CommandText = "insert into OrderTicket (OCar,OTicketype,ObuyTime,Omoney,Ousetime,Oadmin)values(@OCar,@OTicketype,@ObuyTime,@Omoney,@Ousetime,@Oadmin)";

            cmd.Parameters.Add("@OCar", SqlDbType.NVarChar);
            cmd.Parameters.Add("@OTicketype", SqlDbType.NVarChar);
            cmd.Parameters.Add("@ObuyTime", SqlDbType.DateTime);
            cmd.Parameters.Add("@Omoney", SqlDbType.Int);
            cmd.Parameters.Add("@Ousetime", SqlDbType.DateTime);
            cmd.Parameters.Add("@Oadmin", SqlDbType.VarChar);

            cmd.Parameters["@OCar"].Value = this.Label1.Text;
            cmd.Parameters["@OTicketype"].Value = this.Label2.Text;
            cmd.Parameters["@ObuyTime"].Value = DateTime.Now;
            cmd.Parameters["@Omoney"].Value = Convert.ToDecimal(Label4.Text);
            cmd.Parameters["@Ousetime"].Value = Convert.ToDateTime(Label3.Text);
            cmd.Parameters["@Oadmin"].Value = Session["Aname"].ToString();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}