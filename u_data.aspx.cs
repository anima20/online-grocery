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
    public partial class u_data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String mycon =  @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            String myquery = "Select * from product where p_id=" + Request.QueryString["pid"];
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox5.Text = ds.Tables[0].Rows[0]["p_id"].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0]["p_name"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["p_desc"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["p_price"].ToString();
                DropDownList1.SelectedItem.Value = ds.Tables[0].Rows[0]["p_cat"].ToString();

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            SqlConnection conn = new SqlConnection(ConString);
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("/images/" + str));
            string Image = "/images/" + str.ToString();

            
                string querystring = "update product set p_name= '" + TextBox1.Text + "' , p_desc = '" + TextBox2.Text + "' ,p_image = @p_image  ,p_price = '" + TextBox4.Text + "' ,p_cat = '" + DropDownList1.SelectedItem.Value + "'   where p_id='" + Request.QueryString["pid"]+"' ";
                conn.Open();
                SqlCommand cmd = new SqlCommand(querystring, conn);
                cmd.Parameters.AddWithValue("@p_image", Image);
            SqlDataReader reader = cmd.ExecuteReader();
                conn.Close();
               
            
        }
    }
}