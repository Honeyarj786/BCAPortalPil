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
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"]!=null && !string.IsNullOrWhiteSpace(Session["userid"].ToString())) {
            Response.Redirect("accomodation.aspx");
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
        String str = "select * from signup where email='" + tb11.Text + "' and pass='" + tb12.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, conn);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            
            Session["Userid"] = dt.Rows[0]["id"];
            Response.Redirect("accomodation.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "username password incorrect";
        }
        conn.Close();


    }
}