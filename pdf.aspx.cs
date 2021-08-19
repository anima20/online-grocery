﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace project
{
    public partial class pdf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Orderid = Session["orderid"].ToString();
            Label1.Text = Orderid;
            findorderdate(Label2.Text);
            string Address = Session["address"].ToString();
            Label3.Text = Address;
            showgrid(Label1.Text);
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            // base.VerifyRenderingInServerForm(control);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }

        public void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=orderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlpa = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlpa.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();

        }

        public void findorderdate(String orderid)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog=anima; Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("Select * from order_details where o_id='" + Label1.Text + "'");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["o_date"].ToString();
            }
            con.Close();

        }

        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("p_id");
            dt.Columns.Add("pr_name");
            dt.Columns.Add("p_qty");
            dt.Columns.Add("p_price");
            dt.Columns.Add("p_totalprice");
            SqlConnection scon = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog=anima; Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("Select * from order_details where o_id='" + Label1.Text + "'");
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                String i_d = ds.Tables[0].Rows[i]["pid"].ToString();
                string pn = "";
                if (i_d == "101")
                {
                    pn = "Tomato";
                }
                if (i_d == "102")
                {
                    pn = "Onion";
                }
                if (i_d == "103")
                {
                    pn = "Potato";
                }
                if (i_d == "104")
                {
                    pn = "Ladifinger";
                }
                if (i_d == "105")
                {
                    pn = "Sanitizer";
                }
                if (i_d == "106")
                {
                    pn = "beans";
                }
                if (i_d == "107")
                {
                    pn = "cabbage";
                }
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["s_no"].ToString();
                dr["p_id"] = ds.Tables[0].Rows[i]["pid"].ToString();
                dr["pr_name"] = pn;
                dr["p_qty"] = ds.Tables[0].Rows[i]["p_qty"].ToString();
                dr["p_price"] = ds.Tables[0].Rows[i]["p_price"].ToString();

                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["p_price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["p_qty"].ToString());
                int totalprice = price * quantity;
                dr["p_totalprice"] = totalprice.ToString();


                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label5.Text = grandtotal.ToString();

        }
    }
}