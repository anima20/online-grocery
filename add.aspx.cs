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
    public partial class update : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("/images/" + str));
            string Image = "/images/" + str.ToString();
            SqlCommand cmd = new SqlCommand("insert into dbo.product" + "(p_id,p_name,p_desc,p_image,p_price,p_cat) values (@p_id,@p_name,@p_desc,@p_image,@p_price,@p_cat)", con);
            cmd.Parameters.AddWithValue("@p_id", TextBox5.Text);
            cmd.Parameters.AddWithValue("@p_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p_image", Image);
            cmd.Parameters.AddWithValue("@p_desc", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p_price", TextBox4.Text);
            cmd.Parameters.AddWithValue("@p_cat", DropDownList1.SelectedItem.Value);
           


            cmd.ExecuteNonQuery();


            Response.Write("<script>alert('Added Successfully...!!!');</script>");
            con.Close();
        }
    }
}