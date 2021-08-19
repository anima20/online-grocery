using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
namespace project
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        static String activationcode;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConString);
            string querystring = "select * from users where email = '" + TextBox1.Text + "' ";
            con.Open();
            SqlCommand cmd = new SqlCommand(querystring, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {


                Random random = new Random();
                activationcode = random.Next(1001, 9999).ToString();
                String query = "insert into email_detail(email,status,a_code) values('" + TextBox1.Text + "' ,'Unverified', '" + activationcode + "')";
                string ConString1 = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=anima;Integrated Security=True";
                SqlConnection con1 = new SqlConnection(ConString1);
                con1.Open();
                SqlCommand cmd1 = new SqlCommand(query, con1);
                SqlDataReader reader1 = cmd1.ExecuteReader();

                SmtpClient smtp = new SmtpClient();
                Console.WriteLine("coming");
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("anima20sinha@gmail.com", "Anima16suhani4");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Activation Code to verify Email Address";
                msg.Body = "Your Activation Code is " + activationcode + "\n\n\nThanks & Regards\nMSRIT";
                string toaddress = TextBox1.Text;
                msg.To.Add(toaddress);
                string formaddress = "anima <anima20sinha@gmail.com>";
                msg.From = new MailAddress(formaddress);
                try
                {
                    smtp.Send(msg);
                }
                catch
                {
                    Console.WriteLine("error");
                }


                //sendcode();
                Response.Redirect("WebForm8.aspx?emailadd=" + TextBox1.Text);

            }
            else
            {
                Response.Write("<script language=javascript>alert('Either Username Or Password is wrong..!!');</script>");
            }

            void sendcode()
            {
                SmtpClient smtp = new SmtpClient();
                Console.WriteLine("coming");
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("anima20sinha@gmail.com", "Anima16suhani4");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Activation Code to verify Email Address";
                msg.Body =  "Your Activation Code is " + activationcode + "\n\n\nThanks & Regards\nMSRIT";
                string toaddress = TextBox1.Text;
                msg.To.Add(toaddress);
                string formaddress = "anima <anima20sinha@gmail.com>";
                try
                {
                    smtp.Send(msg);
                }
                catch
                {
                    Console.WriteLine("error");
                }
            }

        }
    }
}