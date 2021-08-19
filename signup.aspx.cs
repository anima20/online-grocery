using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace project
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "INSERT INTO users (username,password,phone,email) VALUES ('" + r_user.Text + "','" + r_password.Text + "' ,'" + r_phone.Text + "','" + r_email.Text + "')";
            //string querystring = "INSERT INTO user (username,email,phone,password) VALUES ('" + r_user.Text + "','" + r_email.Text + "' ,'" + r_phone.Text + "','" + r_password.Text + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand(querystring, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Write("<script language=javascript>alert('Regestration Unsuccesful');</script>");
            }
            else
            {
                Response.Redirect("~/log.aspx");
            }
        }
    }
}