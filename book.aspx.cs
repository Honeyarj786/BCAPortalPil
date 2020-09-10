using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class book : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "insert into book values(@date,@traveller,@guide,@total)";
        SqlCommand cm = new SqlCommand(str, conn);
        cm.Parameters.AddWithValue("@date", tb13.Text);
        cm.Parameters.AddWithValue("@traveller", tb14.Text);
        cm.Parameters.AddWithValue("@total", tb15.Text);
        if (RadioButton1.Checked == true)
        {
            cm.Parameters.AddWithValue("@guide", "yes");
        }
        else
        {
            cm.Parameters.AddWithValue("@guide", "no");
        }
        cm.ExecuteNonQuery();
        conn.Close();
        tb13.Text = " ";
        tb14.Text = " ";
        tb15.Text = " ";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        Response.Write("data saved");

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt16(tb14.Text);
        int b = 2000;
        int c = 300;
        if (RadioButton1.Checked == true)
        {
            int d = a * b + c;
            tb15.Text = Convert.ToString(d);
        }
        else
        {
            int d = a * b;
            tb15.Text = Convert.ToString(d);
        }
    }
   
}