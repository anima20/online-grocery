using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Your Email is " + Request.QueryString["emailadd"].ToString() + " , Kindly check your Mail Inbox for Activation Code";
         
        }
      
        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            String myquery = "Select * from email_detail where email='" + Request.QueryString["emailadd"] + "' ";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                String activationcode;
                activationcode = ds.Tables[0].Rows[0]["a_code"].ToString();
                if(activationcode == TextBox1.Text)
                {
                    changestatus();
                    String val = Request.QueryString["emailadd"].ToString();
                    Response.Redirect("WebForm9.aspx?emailadd=" + val );
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Activation code is wrong..!!');</script>");
                }
            }

            con.Close();
        }

        void changestatus()
        {
            String mycon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            String updatedata = "Update email_detail set status='Verified' where email='" + Request.QueryString["emailadd"] + "'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

        }

    }
}