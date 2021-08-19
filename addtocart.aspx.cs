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
    public partial class addtocart : System.Web.UI.Page
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



            if (!IsPostBack)
            {
             
                if(Session["buyitems"]==null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }

                //adding product to gridview
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("p_id");
                dt.Columns.Add("p_name");
                dt.Columns.Add("p_image");
                dt.Columns.Add("p_price");
                dt.Columns.Add("p_qty");
                dt.Columns.Add("p_totalprice");


                if(Request.QueryString["id"] != null)
                {
                    if(Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("select * from product where p_id=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["p_id"] = ds.Tables[0].Rows[0]["p_id"].ToString();
                        dr["p_name"] = ds.Tables[0].Rows[0]["p_name"].ToString();
                        dr["p_image"] = ds.Tables[0].Rows[0]["p_image"].ToString();
                        dr["p_price"] = ds.Tables[0].Rows[0]["p_price"].ToString();
                        dr["p_qty"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["p_price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * Quantity;
                        dr["p_totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr= dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection sconn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("select * from product where p_id=" + Request.QueryString["id"], sconn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["p_id"] = ds.Tables[0].Rows[0]["p_id"].ToString();
                        dr["p_name"] = ds.Tables[0].Rows[0]["p_name"].ToString();
                        dr["p_image"] = ds.Tables[0].Rows[0]["p_image"].ToString();
                        dr["p_price"] = ds.Tables[0].Rows[0]["p_price"].ToString();
                        dr["p_qty"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["p_price"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * Quantity;
                        dr["p_totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");
                    }
                }

                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if(GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
            }

            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = OrderDate;
            orderid_();


            int grandtotal()
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                int nrow = dt.Rows.Count;
                int i = 0;
                int totalprice = 0;
                while(i<nrow)
                {
                    totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["p_totalprice"].ToString());
                    i = i + 1;
                }

                return totalprice; 
            }

            void orderid_()
            {
                String alpha = "abcdEfGhiJklmnoPQRStuvWxYz123456789";
                Random r = new Random();
                char[] myArray = new char[5];
                for(int i =0; i<5; i++)
                {
                    myArray[i] = alpha[(int)(35 * r.NextDouble())];

                }
                String orderid;
                orderid = "Order_Id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                Session["orderid"] = orderid;

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

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("addtocart.aspx");
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                String qdata;
                String dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }

            //setting sno. after deleting row item from cart
            for(int i =1; i<=dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }

            Session["buyitems"] = dt;
            Response.Redirect("addtocart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String p="";
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
                SqlConnection con = new SqlConnection(ConString);   
                string querystring = "insert into order_details(o_id,s_no,pid,p_price,p_qty,o_date) values('" + Session["orderid"] + "' ," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["p_id"] + "," + dt.Rows[i]["p_price"] + "," + dt.Rows[i]["p_qty"] + ",'" + Session["Orderdate"] + "')";
                con.Open();
                SqlCommand cmd = new SqlCommand(querystring, con);
                SqlDataReader reader = cmd.ExecuteReader();
            }

            if(Session["Name"] == null)
            {
                Response.Redirect("log.aspx");
            }
            else
            {
                if(GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('Your Cart is Empty . You cannot palce an Order');</script>");
                }
                else
                {
                    Response.Redirect("palceorder.aspx");
                }
            }


            }
        }
    }
