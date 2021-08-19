using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            { 
                Label4.Text = "Welcome " + Session["Name"].ToString() + " !!";
                signup.Visible = false;
            login.Text = "Logout";
            }
            else
            {
                
                signup.Visible = true; 
                signup.Text = "Signup";
                login.Text = "Login";
            }

        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        {
            Console.WriteLine("hbjkn");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if(login.Text=="Login")
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

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("addtocart.aspx");
        }
    }
}