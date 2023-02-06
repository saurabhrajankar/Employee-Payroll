using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["UserRegistrationConnectionString"].ConnectionString;
        SqlConnection cs = new SqlConnection(connectionstring);
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Login", cs);
            cs.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", lblemail.Text);
            cmd.Parameters.AddWithValue("@Password", lblpassword.Text);
            var a= cmd.ExecuteReader();
            if (a.HasRows)
            {
                lblsuccessmessgae.Text = "Login Successfully";
                Response.Redirect("HomePG.aspx");
            }
            else
            {
                lblerrormessgae.Text = "Login Failed";
            }   
            cs.Close();
        }
    }
}