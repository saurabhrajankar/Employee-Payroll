using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EmployeePayroll.WebForm
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["UserRegistrationConnectionString"].ConnectionString;
        SqlConnection cs = new SqlConnection(connectionstring);
        protected void Button1_Click(object sender, EventArgs e)
        {
            cs.Open();
            SqlCommand cmd = new SqlCommand("Registration", cs);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Firstname", lblfirstname.Text);
            cmd.Parameters.AddWithValue("@Lastname", lbllastname.Text);
            cmd.Parameters.AddWithValue("@Email", lblemail.Text);
            cmd.Parameters.AddWithValue("@Password", lblpassword.Text);
            var a = cmd.ExecuteNonQuery();
            if (a!=null)
            {
                lblsuccessmessgae.Text = "Register Successfully";
                Response.Redirect("Login.aspx");
            }    
            else
            {
                lblerrormessgae.Text = "Registration Unsccessfully";
            }
            cs.Close();
        }
    }
 
}