using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class banke : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "insert into banke values(@person,@timing,@peda)";
        SqlCommand cmd = new SqlCommand(str,conn);
        cmd.Parameters.AddWithValue("@person", tb16.Text);
        cmd.Parameters.AddWithValue("@timing", tb17.Text);
        cmd.Parameters.AddWithValue("@peda", tb18.Text);
        cmd.ExecuteNonQuery();
        tb16.Text = " ";
        tb17.Text = " ";
        tb18.Text = " ";
        Response.Write("data saved");
    }
}