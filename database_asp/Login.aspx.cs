using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace database_asp
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int username = int.Parse(TextBox1.Text);
            int password = int.Parse(TextBox2.Text);
            
            if (username==password)
            {
                Response.Write("<script>alert('hi') </>script");
                Session["user"] = username;
                Response.Redirect("AddProduct.aspx");
            }
        }
    }
}