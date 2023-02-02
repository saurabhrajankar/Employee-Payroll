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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                for (int i = 2000; i <= 2023; i++)
                {
                    year.Items.Add(i.ToString());
                }
                year.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;
                for (int i = 1; i <= 12; i++)
                    {
                        month.Items.Add(i.ToString());
                    }
                month.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true;
                Filldays();
            } 
        }
        public void Filldays()
        {
            date.Items.Clear();//getting number of days in selected month of year
            int noofdays = DateTime.DaysInMonth(Convert.ToInt32(year.SelectedValue), Convert.ToInt32(month.SelectedValue));
            for (int i = 1; i <= noofdays; i++)
            {
                date.Items.Add(i.ToString());
            }
            date.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;
        }
        public void clear()
        {
            Name.Text = "";
            rbListImages.Text = "";
            RadioButtonList1.SelectedValue = "";
            DropDownList1.SelectedValue = "";
            Notes.Text = "";

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["payrollFormConnectionString2"].ConnectionString;
        SqlConnection cs = new SqlConnection(connectionstring);
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_User1", cs);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@P_Name", Name.Text);
            cmd.Parameters.AddWithValue("@p_IMG", rbListImages.Text);
            cmd.Parameters.AddWithValue("@p_Gender", RadioButtonList1.SelectedValue);
            string checklist = "";
            for (int i = 0; i< CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (checklist == "")
                    {
                        checklist = CheckBoxList1.Items[i].Value;
                    }
                    else
                    {
                        checklist += "" + CheckBoxList1.Items[i].Value;
                    }
                }  
            }
            cmd.Parameters.AddWithValue("p_Department", checklist);
            cmd.Parameters.AddWithValue("@p_salary", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p_StartDate", date.SelectedValue + "/" + month.SelectedValue + "/" + year.SelectedValue);
            cmd.Parameters.AddWithValue("@p_Notes", Notes.Text);
            cs.Open();
            clear();
            var result = cmd.ExecuteNonQuery();
            cs.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Name.Text = "";
            rbListImages.Text = "";
            RadioButtonList1.SelectedValue = "";
            DropDownList1.SelectedValue = "";
            Notes.Text = "";
        }
    }
    
}