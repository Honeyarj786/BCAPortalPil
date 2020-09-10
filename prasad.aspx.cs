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
    SqlConnection conn = new SqlConnection( );
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        conn.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "insert into prasad values(@prasad,@total)";
        SqlCommand cmd = new SqlCommand(str,conn);
        if (CheckBoxList1.Items[0].Selected)
        {
            cmd.Parameters.AddWithValue("@prasad", "chappan bhog prasad");
        }
        if (CheckBoxList1.Items[1].Selected)
        {
            cmd.Parameters.AddWithValue("@prasad", "dry fruit prasad");
        }
        if (CheckBoxList1.Items[2].Selected)
        {
            cmd.Parameters.AddWithValue("@prasad", "mathura peda prasad");
        }
        if (CheckBoxList1.Items[3].Selected)
        {
            cmd.Parameters.AddWithValue("@prasad", "pista peda prasad");
        }
        if (CheckBoxList1.Items[4].Selected)
        {
            cmd.Parameters.AddWithValue("@prasad", "son papdi prasad");
        }
        cmd.Parameters.AddWithValue("@total",tb22.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        tb22.Text=" ";



    
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}