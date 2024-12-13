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
    public partial class Register : System.Web.UI.Page
    {   
        
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
            conn=new SqlConnection(cs);
            conn.Open();    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name=TextBox1.Text;
            
            string pass=TextBox3.Text;
            string insertcommand = $"exec insertEmpDetail {name},{pass}";
            SqlCommand sqlCommand = new SqlCommand(insertcommand, conn);
            int row=sqlCommand.ExecuteNonQuery();
            if (row > 0)
            {
                Response.Write("<script> alert('Emp Added') </script> ");
                Response.Redirect("Login.aspx");

            }
            else
            {
                Response.Write("<script>alert('Emp Not Added')</script>");
            }

        }
    }
}