using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketWeb
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Aname"] != null)
            {
                this.Label1.Text = "尊敬的：" + Session["Aname"] + "您好" + "您目前登錄的身份是：" + Session["Apw"];
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}