using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "select * from signup where email='" + tb11.Text + "' and pass='" + tb12.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, conn);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("book.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "username password incorrect";
        }
        conn.Close();


    }
}