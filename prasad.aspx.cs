using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class prasad : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();
        String str = "insert into prasad values(@prasd,@total)";
        SqlCommand cmd = new SqlCommand(str,conn);
        if (CheckBoxList1.Items[0].Selected)
        {
            cmd.Parameters.AddWithValue("@prasd", "chappan bhog prasad");
        }
        if (CheckBoxList1.Items[1].Selected)
        {
            cmd.Parameters.AddWithValue("@prasd", "dry fruit prasad");
        }
        if (CheckBoxList1.Items[2].Selected)
        {
            cmd.Parameters.AddWithValue("@prasd", "mathura peda prasad");
        }
        if (CheckBoxList1.Items[3].Selected)
        {
            cmd.Parameters.AddWithValue("@prasd", "pista peda prasad");
        }
        if (CheckBoxList1.Items[4].Selected)
        {
            cmd.Parameters.AddWithValue("@prasd", "son papdi prasad");
        }
        cmd.Parameters.AddWithValue("@total",tb22.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        tb22.Text="@total ";
        Response.Redirect("payment.aspx");

        
    
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
}