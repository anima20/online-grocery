using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "select * from users where username = '" + l_user.Text + "' and password = '" + l_password.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(querystring, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["Name"] = l_user.Text;
                Session["password"] = l_password.Text;
                if (Session["Name"].ToString() == "admin")
                {
                    Response.Redirect("a_home.aspx");
                }
                else
                {
                    //Response.Write("<script language=javascript>alert(Session['Name'].ToString());</script>");
                    Response.Redirect("home.aspx");
                }
               

            }
            else
            {
                Response.Write("<script language=javascript>alert('Either Username Or Password is wrong..!!');</script>");
               
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("mycookie");
            //cookie["name"] = l_user.Text;
            //cookie["password"] = l_password.Text;
            //Response.Cookies.Add(cookie);
        }
    }
}