using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
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

        protected void signIn_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
           
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "addtocart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("qty"));
                Response.Redirect("addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
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

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("addtocart.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True");

            SqlDataAdapter da = new SqlDataAdapter("select * from product where (p_name like '%"+TextBox1.Text+"%') or (p_id like '%"+TextBox1+"%')" , conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}