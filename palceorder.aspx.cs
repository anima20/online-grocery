using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project
{
    public partial class palceorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog=anima; Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into carddetails (fname,lname,cardno,expirydate,cvv,billingaddr) values(@Fname,@Lname,@CardNo,@ExpiryDate,@cvv,@BillingAddr)" , con);
            cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
            cmd.Parameters.AddWithValue("@cvv", TextBox5.Text);
            cmd.Parameters.AddWithValue("@BillingAddr", TextBox6.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Payment Made Successful');</script>");
            Session["address"] = TextBox6.Text;
            Response.Redirect("pdf.aspx");

            
        }
    }
}