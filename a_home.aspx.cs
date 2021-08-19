using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class a_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                Label4.Text = "Welcome " + Session["Name"].ToString() + " !!";

                login.Text = "Logout";
            }
            else
            {

                login.Text = "Login";
            }

        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (login.Text == "Login")
            {
                Response.Redirect("log.aspx");
            }
            else
            {
                Session.Clear();
                Session.Abandon();
                Response.Redirect("home.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("add.aspx");
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }


    }
}