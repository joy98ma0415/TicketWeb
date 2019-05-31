using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace TicketWeb
{
    public partial class nootbook : System.Web.UI.Page
    {
        private System.Diagnostics.Process process;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            process = new Process();
            process.StartInfo.FileName = "notepad.exe";
            this.process.Start();
        }
    }
}