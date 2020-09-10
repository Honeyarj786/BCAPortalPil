using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class NIDHIVAN : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {

        String str = "insert into banke values(@person,@timing,@sringar)";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.Parameters.AddWithValue("@person", tb19.Text);
        cmd.Parameters.AddWithValue("@timing", tb20.Text);
        cmd.Parameters.AddWithValue("@sringar", tb21.Text);
        cmd.ExecuteNonQuery();
        tb19.Text = " ";
        tb20.Text = " ";
        tb21.Text = " ";
        Response.Write("data saved");
    }
}