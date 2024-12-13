using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace database_asp
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string emaild = (TextBox1.Text);
            string subject = TextBox2.Text;
            string body = TextBox3.Text;
            string[] email = emaild.Split(',');


            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("onkarsalunkhe1519@gmail.com");
            foreach (string em in email)
            {
                mail.To.Add(em);

            }
            mail.Subject = "Generated OtP";
            mail.Body = $"Test Mail for Multiple USer";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential("onkarsalunkhe1519@gmail.com", "hxwwwrzpuaxpzwpb");
            smtp.Send(mail);
            Response.Write("<script>alert('Emails Send Succesfully')</script>");
        }
    }
    
}
