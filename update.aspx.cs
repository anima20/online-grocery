using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class update1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string pid = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect("u_data.aspx?pid=" + pid);

        }
    }
}