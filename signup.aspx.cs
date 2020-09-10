using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "insert into signup values(@fn,@ln,@email,@pass,@cpass,@contact,@dob,@gender,@state,@city,@address)";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.Parameters.AddWithValue("@fn", tb1.Text);
        cmd.Parameters.AddWithValue("@ln", tb2.Text);
        cmd.Parameters.AddWithValue("@email", tb3.Text);
        cmd.Parameters.AddWithValue("@pass", tb4.Text);
        cmd.Parameters.AddWithValue("@cpass", tb5.Text);
        cmd.Parameters.AddWithValue("@contact", tb6.Text);
        cmd.Parameters.AddWithValue("@dob", tb7.Text);
        cmd.Parameters.AddWithValue("@state", tb8.Text);
        cmd.Parameters.AddWithValue("@city", tb9.Text);
        cmd.Parameters.AddWithValue("@address", tb10.Text);
        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@gender", "male");
        }
        else
        {
            cmd.Parameters.AddWithValue("@gender", "female");
        }
        cmd.ExecuteNonQuery();
        conn.Close();
        tb1.Text = " ";
        tb2.Text = " ";
        tb3.Text = " ";
        tb4.Text = " ";
        tb5.Text = " ";
        tb6.Text = " ";
        tb7.Text = " ";
        tb8.Text = " ";
        tb9.Text = " ";
        tb10.Text = " ";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        Response.Write("account created");


    }
}