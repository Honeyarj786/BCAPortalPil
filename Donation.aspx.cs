using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Donation : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "insert into donation values(@temple,@amount)";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.Parameters.AddWithValue("@temple", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@amount", tb23.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        tb23.Text = " ";
        DropDownList1.Text = " ";
        Response.Write("data saved");


    }
}